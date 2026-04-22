-- 1. Criação de Tipos (Enums)
CREATE TYPE status_matricula AS ENUM ('ativa', 'cancelada');
CREATE TYPE status_parcela AS ENUM ('em_aberto', 'quitada');
CREATE TYPE status_curso AS ENUM ('concluido', 'em_andamento');
CREATE TYPE status_resultado AS ENUM ('aprovado', 'reprovado');
CREATE TYPE aprovacao AS ENUM ('aprovado', 'reprovado', 'andamento');

-- 2. Criação de Tabelas
CREATE TABLE professor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    logradouro VARCHAR(200) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE estudante (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    logradouro VARCHAR(200) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor NUMERIC(10,2) NOT NULL
);

CREATE TABLE ano_serie (
    id SERIAL PRIMARY KEY,
    curso_id INT NOT NULL REFERENCES curso(id),
    numero SMALLINT NOT NULL,
    descricao VARCHAR(100),
    UNIQUE (curso_id, numero)
);

CREATE TABLE disciplina (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE ano_disciplina (
    ano_serie_id INT NOT NULL REFERENCES ano_serie(id),
    disciplina_id INT NOT NULL REFERENCES disciplina(id),
    PRIMARY KEY (ano_serie_id, disciplina_id)
);

CREATE TABLE professor_disciplina (
    professor_id INT NOT NULL REFERENCES professor(id),
    disciplina_id INT NOT NULL REFERENCES disciplina(id),
    PRIMARY KEY (professor_id, disciplina_id)
);

CREATE TABLE turma (
    id SERIAL PRIMARY KEY,
    ano_serie_id INT NOT NULL REFERENCES ano_serie(id),
    nome VARCHAR(50) NOT NULL,
    sala VARCHAR(50) NOT NULL,
    ano_letivo SMALLINT NOT NULL,
    UNIQUE (ano_serie_id, nome, ano_letivo)
);

CREATE TABLE matricula (
    id SERIAL PRIMARY KEY,
    estudante_id INT NOT NULL REFERENCES estudante(id),
    curso_id INT NOT NULL REFERENCES curso(id),
    numero VARCHAR(20) NOT NULL UNIQUE,
    data_matricula DATE NOT NULL,
    situacao status_matricula NOT NULL DEFAULT 'ativa'
);

CREATE TABLE parcela (
    id SERIAL PRIMARY KEY,
    matricula_id INT NOT NULL REFERENCES matricula(id),
    codigo_bancario VARCHAR(100) NOT NULL UNIQUE,
    data_vencimento DATE NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    valor_pago NUMERIC(10,2),
    data_pagamento DATE,
    estado status_parcela NOT NULL DEFAULT 'em_aberto'
);

CREATE TABLE historico_curso (
    id SERIAL PRIMARY KEY,
    matricula_id INT NOT NULL UNIQUE REFERENCES matricula(id),
    situacao_curso status_curso NOT NULL DEFAULT 'em_andamento',
    data_conclusao DATE
);

CREATE TABLE historico_ano (
    id SERIAL PRIMARY KEY,
    historico_curso_id INT NOT NULL REFERENCES historico_curso(id),
    ano_serie_id INT NOT NULL REFERENCES ano_serie(id),
    ano_letivo SMALLINT NOT NULL,
    percentual_frequencia NUMERIC(5,2),
    resultado status_resultado,
    UNIQUE (historico_curso_id, ano_serie_id, ano_letivo)
);

CREATE TABLE desempenho_disciplina (
    id SERIAL PRIMARY KEY,
    historico_ano_id INT NOT NULL REFERENCES historico_ano(id),
    disciplina_id INT NOT NULL REFERENCES disciplina(id),
    nota_bimestre1 NUMERIC(4,2),
    nota_bimestre2 NUMERIC(4,2),
    nota_bimestre3 NUMERIC(4,2),
    nota_bimestre4 NUMERIC(4,2),
    media NUMERIC(4,2),
    nota_recuperacao NUMERIC(4,2),
    media_final NUMERIC(4,2),
    resultado aprovacao DEFAULT 'andamento',
    UNIQUE (historico_ano_id, disciplina_id)
);

CREATE TABLE alocacao_turma (
    id SERIAL PRIMARY KEY,
    matricula_id INT NOT NULL REFERENCES matricula(id),
    turma_id INT NOT NULL REFERENCES turma(id),
    numero_chamada SMALLINT NOT NULL,
    data_inicio DATE NOT NULL,
    data_remanejamento DATE,
    UNIQUE (turma_id, numero_chamada, data_inicio)
);

