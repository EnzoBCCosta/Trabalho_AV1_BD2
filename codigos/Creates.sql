-- 1.Criação de Tabelas

CREATE TABLE professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
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
    id INT AUTO_INCREMENT PRIMARY KEY,
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
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE ano_serie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curso_id INT NOT NULL,
    numero SMALLINT NOT NULL,
    descricao VARCHAR(100),
    UNIQUE (curso_id, numero),
    CONSTRAINT fk_ano_curso FOREIGN KEY (curso_id) REFERENCES curso(id)
);

CREATE TABLE disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE ano_disciplina (
    ano_serie_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    PRIMARY KEY (ano_serie_id, disciplina_id),
    CONSTRAINT fk_ad_ano FOREIGN KEY (ano_serie_id) REFERENCES ano_serie(id),
    CONSTRAINT fk_ad_disc FOREIGN KEY (disciplina_id) REFERENCES disciplina(id)
);

CREATE TABLE professor_disciplina (
    professor_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    PRIMARY KEY (professor_id, disciplina_id),
    CONSTRAINT fk_pd_prof FOREIGN KEY (professor_id) REFERENCES professor(id),
    CONSTRAINT fk_pd_disc FOREIGN KEY (disciplina_id) REFERENCES disciplina(id)
);

CREATE TABLE turma (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ano_serie_id INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sala VARCHAR(50) NOT NULL,
    ano_letivo SMALLINT NOT NULL,
    UNIQUE (ano_serie_id, nome, ano_letivo),
    CONSTRAINT fk_turma_ano FOREIGN KEY (ano_serie_id) REFERENCES ano_serie(id)
);

CREATE TABLE matricula (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudante_id INT NOT NULL,
    curso_id INT NOT NULL,
    numero VARCHAR(20) NOT NULL UNIQUE,
    data_matricula DATE NOT NULL,
    situacao ENUM('ativa', 'cancelada', 'transferido') NOT NULL DEFAULT 'ativa',
    CONSTRAINT fk_mat_estudante FOREIGN KEY (estudante_id) REFERENCES estudante(id),
    CONSTRAINT fk_mat_curso FOREIGN KEY (curso_id) REFERENCES curso(id)
);

CREATE TABLE parcela (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricula_id INT NOT NULL,
    numero_parcela TINYINT NOT NULL,
    codigo_bancario VARCHAR(100) NOT NULL UNIQUE,
    data_vencimento DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    valor_pago DECIMAL(10,2),
    data_pagamento DATE,
    estado ENUM('em_aberto', 'quitada') NOT NULL DEFAULT 'em_aberto',
    UNIQUE (matricula_id, numero_parcela),
    CONSTRAINT fk_parc_mat FOREIGN KEY (matricula_id) REFERENCES matricula(id)
);

CREATE TABLE historico_curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricula_id INT NOT NULL UNIQUE,
    situacao_curso ENUM('concluido', 'em_andamento') NOT NULL DEFAULT 'em_andamento',
    data_conclusao DATE,
    CONSTRAINT fk_hc_mat FOREIGN KEY (matricula_id) REFERENCES matricula(id)
);

CREATE TABLE historico_ano (
    id INT AUTO_INCREMENT PRIMARY KEY,
    historico_curso_id INT NOT NULL,
    ano_serie_id INT NOT NULL,
    ano_letivo SMALLINT NOT NULL,
    percentual_frequencia DECIMAL(5,2),
    resultado ENUM('aprovado', 'reprovado'),
    UNIQUE (historico_curso_id, ano_serie_id, ano_letivo),
    CONSTRAINT fk_ha_hc FOREIGN KEY (historico_curso_id) REFERENCES historico_curso(id),
    CONSTRAINT fk_ha_ano FOREIGN KEY (ano_serie_id) REFERENCES ano_serie(id)
);

CREATE TABLE desempenho_disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    historico_ano_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    nota_bimestre1 DECIMAL(4,2),
    nota_bimestre2 DECIMAL(4,2),
    nota_bimestre3 DECIMAL(4,2),
    nota_bimestre4 DECIMAL(4,2),
    media DECIMAL(4,2),
    nota_recuperacao DECIMAL(4,2),
    media_final DECIMAL(4,2),
    resultado ENUM('aprovado', 'reprovado', 'andamento') DEFAULT 'andamento',
    UNIQUE (historico_ano_id, disciplina_id),
    CONSTRAINT fk_dd_ha FOREIGN KEY (historico_ano_id) REFERENCES historico_ano(id),
    CONSTRAINT fk_dd_disc FOREIGN KEY (disciplina_id) REFERENCES disciplina(id)
);

CREATE TABLE alocacao_turma (
    id INT AUTO_INCREMENT PRIMARY KEY,
    matricula_id INT NOT NULL,
    turma_id INT NOT NULL,
    numero_chamada SMALLINT NOT NULL,
    data_inicio DATE NOT NULL,
    data_remanejamento DATE,
    UNIQUE (turma_id, numero_chamada, data_inicio),
    CONSTRAINT fk_aloc_mat FOREIGN KEY (matricula_id) REFERENCES matricula(id),
    CONSTRAINT fk_aloc_turma FOREIGN KEY (turma_id) REFERENCES turma(id)
);

DELIMITER $$

CREATE TRIGGER trg_gerar_parcelas
AFTER INSERT ON matricula
FOR EACH ROW
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE valor_parcela DECIMAL(10,2);

    SELECT ROUND(valor / 12, 2) INTO valor_parcela
    FROM curso WHERE id = NEW.curso_id;

    WHILE i <= 12 DO
        INSERT INTO parcela (matricula_id, numero_parcela, codigo_bancario, data_vencimento, valor, estado)
        VALUES (
            NEW.id,
            i,
            CONCAT('BOL-', NEW.numero, '-', LPAD(i, 2, '0')),
            DATE_ADD(NEW.data_matricula, INTERVAL i MONTH),
            valor_parcela,
            'em_aberto'
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;