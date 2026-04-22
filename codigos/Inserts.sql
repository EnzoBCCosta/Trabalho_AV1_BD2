-- 3. Inserts
INSERT INTO professor (nome, cpf, logradouro, numero, bairro, cidade, estado, cep, telefone, email) VALUES
('Ricardo Silva', '11122233344', 'Rua das Flores', '100', 'Centro', 'São Paulo', 'SP', '01010000', '11988887777', 'ricardo@escola.com'),
('Ana Oliveira', '22233344455', 'Av. Paulista', '1500', 'Bela Vista', 'São Paulo', 'SP', '01310100', '11977776666', 'ana.oliveira@escola.com'),
('Carlos Souza', '33344455566', 'Rua XV de Novembro', '50', 'Centro', 'Curitiba', 'PR', '80020000', '41966665555', 'carlos.souza@escola.com'),
('Mariana Lima', '44455566677', 'Rua da Aurora', '200', 'Boa Vista', 'Recife', 'PE', '50050000', '81955554444', 'mariana.lima@escola.com'),
('Fernando Costa', '55566677788', 'Rua Chile', '10', 'Rebouças', 'Curitiba', 'PR', '80220000', '41944443333', 'fernando@escola.com'),
('Beatriz Santos', '66677788899', 'Av. Brasil', '500', 'Funcionários', 'Belo Horizonte', 'MG', '30140000', '31933332222', 'beatriz@escola.com'),
('Juliana Mendes', '77788899900', 'Rua dos Goitacazes', '30', 'Centro', 'Belo Horizonte', 'MG', '30190000', '31922221111', 'juliana@escola.com'),
('Roberto Rocha', '88899900011', 'Rua Oscar Freire', '900', 'Jardins', 'São Paulo', 'SP', '01426000', '11911110000', 'roberto@escola.com'),
('Patrícia Alves', '99900011122', 'Av. Getúlio Vargas', '120', 'Menino Deus', 'Porto Alegre', 'RS', '90150000', '51900009999', 'patricia@escola.com'),
('Marcos Pereira', '00011122233', 'Rua da Praia', '45', 'Centro', 'Porto Alegre', 'RS', '90010000', '51999998888', 'marcos@escola.com');

INSERT INTO estudante (nome, cpf, logradouro, numero, bairro, cidade, estado, cep, telefone, email) VALUES
('João Victor', '10120230340', 'Rua A', '1', 'Bairro X', 'São Paulo', 'SP', '01000001', '11912345678', 'joao@aluno.com'),
('Maria Eduarda', '20230340450', 'Rua B', '2', 'Bairro Y', 'São Paulo', 'SP', '01000002', '11923456789', 'maria@aluno.com'),
('Pedro Henrique', '30340450560', 'Rua C', '3', 'Bairro Z', 'Curitiba', 'PR', '80000001', '41934567890', 'pedro@aluno.com'),
('Lucas Gabriel', '40450560670', 'Rua D', '4', 'Bairro W', 'Recife', 'PE', '50000001', '81945678901', 'lucas@aluno.com'),
('Ana Clara', '50560670780', 'Rua E', '5', 'Bairro K', 'Belo Horizonte', 'MG', '30000001', '31956789012', 'anaclara@aluno.com'),
('Enzo Gabriel', '60670780890', 'Rua F', '6', 'Bairro L', 'Porto Alegre', 'RS', '90000001', '51967890123', 'enzo@aluno.com'),
('Valentina Rosa', '70780890900', 'Rua G', '7', 'Bairro M', 'Salvador', 'BA', '40000001', '71978901234', 'valentina@aluno.com'),
('Gustavo Lima', '80890900911', 'Rua H', '8', 'Bairro N', 'Brasília', 'DF', '70000001', '61989012345', 'gustavo@aluno.com'),
('Camila Souza', '90900911022', 'Rua I', '9', 'Bairro O', 'Fortaleza', 'CE', '60000001', '85990123456', 'camila@aluno.com'),
('Felipe Neto', '01011022133', 'Rua J', '10', 'Bairro P', 'Manaus', 'AM', '69000001', '92901234567', 'felipe@aluno.com');

INSERT INTO curso (nome, valor) VALUES
('Ensino Fundamental I', 12000.00),
('Ensino Fundamental II', 15000.00),
('Ensino Médio', 18000.00),
('Pré-Vestibular', 10000.00),
('Curso de Inglês Noturno', 5000.00),
('Informática Básica', 3000.00),
('Artes e Pintura', 4500.00),
('Robótica Educacional', 7500.00),
('Música e Instrumentos', 6000.00),
('Educação de Jovens e Adultos', 8000.00);

INSERT INTO ano_serie (curso_id, numero, descricao) VALUES
(1, 1, '1º Ano Fundamental I'),
(1, 2, '2º Ano Fundamental I'),
(2, 6, '6º Ano Fundamental II'),
(2, 7, '7º Ano Fundamental II'),
(3, 1, '1º Ano Ensino Médio'),
(3, 2, '2º Ano Ensino Médio'),
(3, 3, '3º Ano Ensino Médio'),
(4, 1, 'Turma Intensiva Pré-Vest'),
(5, 1, 'Inglês Iniciante Module 1'),
(8, 1, 'Iniciação à Robótica');

INSERT INTO disciplina (nome, descricao) VALUES
('Matemática', 'Cálculos e lógica'),
('Português', 'Gramática e literatura'),
('História', 'História Geral e do Brasil'),
('Geografia', 'Estudos físicos e políticos'),
('Ciências', 'Biologia, física e química básica'),
('Inglês', 'Língua estrangeira'),
('Artes', 'Expressão artística'),
('Educação Física', 'Esportes e saúde'),
('Filosofia', 'Pensamento crítico'),
('Física', 'Mecânica e termodinâmica');

INSERT INTO ano_disciplina (ano_serie_id, disciplina_id) VALUES
(1, 1), (1, 2), (1, 5), (1, 7), (1, 8),
(2, 1), (2, 2), (2, 5), (2, 7), (2, 8),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8),
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9), (5, 10),
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10),
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 6), (7, 7), (7, 8), (7, 9), (7, 10),
(8, 1), (8, 2), (8, 3), (8, 4), (8, 10),
(9, 6),
(10, 1), (10, 5);

INSERT INTO professor_disciplina (professor_id, disciplina_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (1, 10), (5, 1);

INSERT INTO matricula (estudante_id, curso_id, numero, data_matricula, situacao) VALUES
(1, 1, '2024001', '2024-01-10', 'ativa'),
(2, 1, '2024002', '2024-01-12', 'ativa'),
(3, 2, '2024003', '2024-01-15', 'ativa'),
(4, 2, '2024004', '2024-01-16', 'ativa'),
(5, 3, '2024005', '2024-01-20', 'ativa'),
(6, 3, '2024006', '2024-01-21', 'ativa'),
(7, 3, '2024007', '2024-01-22', 'ativa'),
(8, 4, '2024008', '2024-01-25', 'ativa'),
(9, 5, '2024009', '2024-01-26', 'ativa'),
(10, 8, '2024010', '2024-01-30', 'cancelada');

INSERT INTO turma (ano_serie_id, nome, sala, ano_letivo) VALUES
(1, 'Turma A', 'Sala 101', 2024),
(2, 'Turma B', 'Sala 102', 2024),
(3, 'Turma A', 'Sala 201', 2024),
(4, 'Turma C', 'Sala 202', 2024),
(5, 'Turma A', 'Sala 301', 2024),
(6, 'Turma B', 'Sala 302', 2024),
(7, 'Turma C', 'Sala 303', 2024),
(8, 'Específica 1', 'Sala 401', 2024),
(9, 'Night Class', 'Lab 1', 2024),
(10, 'Robo-Kids', 'Lab 2', 2024);

-- PARCELAS CORRIGIDAS (12 por matrícula)
INSERT INTO parcela (matricula_id, codigo_bancario, data_vencimento, valor, valor_pago, data_pagamento, estado) VALUES
-- M1
(1, 'BOL-2024-001-01', '2024-02-10', 1000.00, 1000.00, '2024-02-08', 'quitada'), (1, 'BOL-2024-001-02', '2024-03-10', 1000.00, 1000.00, '2024-03-09', 'quitada'),
(1, 'BOL-2024-001-03', '2024-04-10', 1000.00, 1000.00, '2024-04-07', 'quitada'), (1, 'BOL-2024-001-04', '2024-05-10', 1000.00, 1000.00, '2024-05-10', 'quitada'),
(1, 'BOL-2024-001-05', '2024-06-10', 1000.00, 1000.00, '2024-06-06', 'quitada'), (1, 'BOL-2024-001-06', '2024-07-10', 1000.00, 1000.00, '2024-07-09', 'quitada'),
(1, 'BOL-2024-001-07', '2024-08-10', 1000.00, 1000.00, '2024-08-08', 'quitada'), (1, 'BOL-2024-001-08', '2024-09-10', 1000.00, 1000.00, '2024-09-10', 'quitada'),
(1, 'BOL-2024-001-09', '2024-10-10', 1000.00, NULL, NULL, 'em_aberto'), (1, 'BOL-2024-001-10', '2024-11-10', 1000.00, NULL, NULL, 'em_aberto'),
(1, 'BOL-2024-001-11', '2024-12-10', 1000.00, NULL, NULL, 'em_aberto'), (1, 'BOL-2024-001-12', '2025-01-10', 1000.00, NULL, NULL, 'em_aberto'),
-- M2
(2, 'BOL-2024-002-01', '2024-02-10', 1000.00, 1000.00, '2024-02-08', 'quitada'), (2, 'BOL-2024-002-02', '2024-03-10', 1000.00, 1000.00, '2024-03-07', 'quitada'),
(2, 'BOL-2024-002-03', '2024-04-10', 1000.00, 1000.00, '2024-04-09', 'quitada'), (2, 'BOL-2024-002-04', '2024-05-10', 1000.00, 1000.00, '2024-05-08', 'quitada'),
(2, 'BOL-2024-002-05', '2024-06-10', 1000.00, 1000.00, '2024-06-10', 'quitada'), (2, 'BOL-2024-002-06', '2024-07-10', 1000.00, 1000.00, '2024-07-09', 'quitada'),
(2, 'BOL-2024-002-07', '2024-08-10', 1000.00, NULL, NULL, 'em_aberto'), (2, 'BOL-2024-002-08', '2024-09-10', 1000.00, NULL, NULL, 'em_aberto'),
(2, 'BOL-2024-002-09', '2024-10-10', 1000.00, NULL, NULL, 'em_aberto'), (2, 'BOL-2024-002-10', '2024-11-10', 1000.00, NULL, NULL, 'em_aberto'),
(2, 'BOL-2024-002-11', '2024-12-10', 1000.00, NULL, NULL, 'em_aberto'), (2, 'BOL-2024-002-12', '2025-01-10', 1000.00, NULL, NULL, 'em_aberto'),
-- M3
(3, 'BOL-2024-003-01', '2024-02-10', 1250.00, 1250.00, '2024-02-09', 'quitada'), (3, 'BOL-2024-003-02', '2024-03-10', 1250.00, 1250.00, '2024-03-08', 'quitada'),
(3, 'BOL-2024-003-03', '2024-04-10', 1250.00, 1250.00, '2024-04-10', 'quitada'), (3, 'BOL-2024-003-04', '2024-05-10', 1250.00, NULL, NULL, 'em_aberto'),
(3, 'BOL-2024-003-05', '2024-06-10', 1250.00, NULL, NULL, 'em_aberto'), (3, 'BOL-2024-003-06', '2024-07-10', 1250.00, NULL, NULL, 'em_aberto'),
(3, 'BOL-2024-003-07', '2024-08-10', 1250.00, NULL, NULL, 'em_aberto'), (3, 'BOL-2024-003-08', '2024-09-10', 1250.00, NULL, NULL, 'em_aberto'),
(3, 'BOL-2024-003-09', '2024-10-10', 1250.00, NULL, NULL, 'em_aberto'), (3, 'BOL-2024-003-10', '2024-11-10', 1250.00, NULL, NULL, 'em_aberto'),
(3, 'BOL-2024-003-11', '2024-12-10', 1250.00, NULL, NULL, 'em_aberto'), (3, 'BOL-2024-003-12', '2025-01-10', 1250.00, NULL, NULL, 'em_aberto'),
-- M4
(4, 'BOL-2024-004-01', '2024-02-10', 1250.00, NULL, NULL, 'em_aberto'), (4, 'BOL-2024-004-02', '2024-03-10', 1250.00, NULL, NULL, 'em_aberto'),
(4, 'BOL-2024-004-03', '2024-04-10', 1250.00, NULL, NULL, 'em_aberto'), (4, 'BOL-2024-004-04', '2024-05-10', 1250.00, NULL, NULL, 'em_aberto'),
(4, 'BOL-2024-004-05', '2024-06-10', 1250.00, NULL, NULL, 'em_aberto'), (4, 'BOL-2024-004-06', '2024-07-10', 1250.00, NULL, NULL, 'em_aberto'),
(4, 'BOL-2024-004-07', '2024-08-10', 1250.00, NULL, NULL, 'em_aberto'), (4, 'BOL-2024-004-08', '2024-09-10', 1250.00, NULL, NULL, 'em_aberto'),
(4, 'BOL-2024-004-09', '2024-10-10', 1250.00, NULL, NULL, 'em_aberto'), (4, 'BOL-2024-004-10', '2024-11-10', 1250.00, NULL, NULL, 'em_aberto'),
(4, 'BOL-2024-004-11', '2024-12-10', 1250.00, NULL, NULL, 'em_aberto'), (4, 'BOL-2024-004-12', '2025-01-10', 1250.00, NULL, NULL, 'em_aberto'),
-- M5
(5, 'BOL-2024-005-01', '2024-02-10', 1500.00, 1500.00, '2024-02-08', 'quitada'), (5, 'BOL-2024-005-02', '2024-03-10', 1500.00, 1500.00, '2024-03-09', 'quitada'),
(5, 'BOL-2024-005-03', '2024-04-10', 1500.00, 1500.00, '2024-04-08', 'quitada'), (5, 'BOL-2024-005-04', '2024-05-10', 1500.00, 1500.00, '2024-05-07', 'quitada'),
(5, 'BOL-2024-005-05', '2024-06-10', 1500.00, 1500.00, '2024-06-10', 'quitada'), (5, 'BOL-2024-005-06', '2024-07-10', 1500.00, 1500.00, '2024-07-09', 'quitada'),
(5, 'BOL-2024-005-07', '2024-08-10', 1500.00, 1500.00, '2024-08-08', 'quitada'), (5, 'BOL-2024-005-08', '2024-09-10', 1500.00, 1500.00, '2024-09-10', 'quitada'),
(5, 'BOL-2024-005-09', '2024-10-10', 1500.00, NULL, NULL, 'em_aberto'), (5, 'BOL-2024-005-10', '2024-11-10', 1500.00, NULL, NULL, 'em_aberto'),
(5, 'BOL-2024-005-11', '2024-12-10', 1500.00, NULL, NULL, 'em_aberto'), (5, 'BOL-2024-005-12', '2025-01-10', 1500.00, NULL, NULL, 'em_aberto'),
-- M6
(6, 'BOL-2024-006-01', '2024-02-10', 1500.00, 1500.00, '2024-02-07', 'quitada'), (6, 'BOL-2024-006-02', '2024-03-10', 1500.00, 1500.00, '2024-03-10', 'quitada'),
(6, 'BOL-2024-006-03', '2024-04-10', 1500.00, 1500.00, '2024-04-09', 'quitada'), (6, 'BOL-2024-006-04', '2024-05-10', 1500.00, 1500.00, '2024-05-08', 'quitada'),
(6, 'BOL-2024-006-05', '2024-06-10', 1500.00, 1500.00, '2024-06-07', 'quitada'), (6, 'BOL-2024-006-06', '2024-07-10', 1500.00, NULL, NULL, 'em_aberto'),
(6, 'BOL-2024-006-07', '2024-08-10', 1500.00, NULL, NULL, 'em_aberto'), (6, 'BOL-2024-006-08', '2024-09-10', 1500.00, NULL, NULL, 'em_aberto'),
(6, 'BOL-2024-006-09', '2024-10-10', 1500.00, NULL, NULL, 'em_aberto'), (6, 'BOL-2024-006-10', '2024-11-10', 1500.00, NULL, NULL, 'em_aberto'),
(6, 'BOL-2024-006-11', '2024-12-10', 1500.00, NULL, NULL, 'em_aberto'), (6, 'BOL-2024-006-12', '2025-01-10', 1500.00, NULL, NULL, 'em_aberto'),
-- M7
(7, 'BOL-2024-007-01', '2024-02-10', 1500.00, NULL, NULL, 'em_aberto'), (7, 'BOL-2024-007-02', '2024-03-10', 1500.00, NULL, NULL, 'em_aberto'),
(7, 'BOL-2024-007-03', '2024-04-10', 1500.00, NULL, NULL, 'em_aberto'), (7, 'BOL-2024-007-04', '2024-05-10', 1500.00, NULL, NULL, 'em_aberto'),
(7, 'BOL-2024-007-05', '2024-06-10', 1500.00, NULL, NULL, 'em_aberto'), (7, 'BOL-2024-007-06', '2024-07-10', 1500.00, NULL, NULL, 'em_aberto'),
(7, 'BOL-2024-007-07', '2024-08-10', 1500.00, NULL, NULL, 'em_aberto'), (7, 'BOL-2024-007-08', '2024-09-10', 1500.00, NULL, NULL, 'em_aberto'),
(7, 'BOL-2024-007-09', '2024-10-10', 1500.00, NULL, NULL, 'em_aberto'), (7, 'BOL-2024-007-10', '2024-11-10', 1500.00, NULL, NULL, 'em_aberto'),
(7, 'BOL-2024-007-11', '2024-12-10', 1500.00, NULL, NULL, 'em_aberto'), (7, 'BOL-2024-007-12', '2025-01-10', 1500.00, NULL, NULL, 'em_aberto'),
-- M8
(8, 'BOL-2024-008-01', '2024-02-10', 833.33, NULL, NULL, 'em_aberto'), (8, 'BOL-2024-008-02', '2024-03-10', 833.33, NULL, NULL, 'em_aberto'),
(8, 'BOL-2024-008-03', '2024-04-10', 833.33, NULL, NULL, 'em_aberto'), (8, 'BOL-2024-008-04', '2024-05-10', 833.33, NULL, NULL, 'em_aberto'),
(8, 'BOL-2024-008-05', '2024-06-10', 833.33, NULL, NULL, 'em_aberto'), (8, 'BOL-2024-008-06', '2024-07-10', 833.33, NULL, NULL, 'em_aberto'),
(8, 'BOL-2024-008-07', '2024-08-10', 833.33, NULL, NULL, 'em_aberto'), (8, 'BOL-2024-008-08', '2024-09-10', 833.33, NULL, NULL, 'em_aberto'),
(8, 'BOL-2024-008-09', '2024-10-10', 833.33, NULL, NULL, 'em_aberto'), (8, 'BOL-2024-008-10', '2024-11-10', 833.33, NULL, NULL, 'em_aberto'),
(8, 'BOL-2024-008-11', '2024-12-10', 833.33, NULL, NULL, 'em_aberto'), (8, 'BOL-2024-008-12', '2025-01-10', 833.37, NULL, NULL, 'em_aberto'),
-- M9
(9, 'BOL-2024-009-01', '2024-02-10', 416.67, 416.67, '2024-02-09', 'quitada'), (9, 'BOL-2024-009-02', '2024-03-10', 416.67, 416.67, '2024-03-08', 'quitada'),
(9, 'BOL-2024-009-03', '2024-04-10', 416.67, 416.67, '2024-04-07', 'quitada'), (9, 'BOL-2024-009-04', '2024-05-10', 416.67, NULL, NULL, 'em_aberto'),
(9, 'BOL-2024-009-05', '2024-06-10', 416.67, NULL, NULL, 'em_aberto'), (9, 'BOL-2024-009-06', '2024-07-10', 416.67, NULL, NULL, 'em_aberto'),
(9, 'BOL-2024-009-07', '2024-08-10', 416.67, NULL, NULL, 'em_aberto'), (9, 'BOL-2024-009-08', '2024-09-10', 416.67, NULL, NULL, 'em_aberto'),
(9, 'BOL-2024-009-09', '2024-10-10', 416.67, NULL, NULL, 'em_aberto'), (9, 'BOL-2024-009-10', '2024-11-10', 416.67, NULL, NULL, 'em_aberto'),
(9, 'BOL-2024-009-11', '2024-12-10', 416.67, NULL, NULL, 'em_aberto'), (9, 'BOL-2024-009-12', '2025-01-10', 416.63, NULL, NULL, 'em_aberto');

INSERT INTO historico_curso (matricula_id, situacao_curso) VALUES
(1, 'em_andamento'), (2, 'em_andamento'), (3, 'em_andamento'), (4, 'em_andamento'), (5, 'em_andamento'),
(6, 'em_andamento'), (7, 'em_andamento'), (8, 'em_andamento'), (9, 'em_andamento'), (10, 'em_andamento');

INSERT INTO historico_ano (historico_curso_id, ano_serie_id, ano_letivo, percentual_frequencia, resultado) VALUES
(1, 1, 2024, 90.00, 'aprovado'), (2, 1, 2024, 85.00, 'aprovado'), (3, 3, 2024, 78.00, 'aprovado'),
(4, 4, 2024, 70.00, 'reprovado'), (5, 5, 2024, 88.00, 'aprovado'), (6, 6, 2024, 92.00, 'aprovado'),
(7, 7, 2024, 76.00, NULL), (8, 8, 2024, 95.00, NULL), (9, 9, 2024, 80.00, NULL), (10, 10, 2024, 60.00, 'reprovado');

-- Desempenho Disciplina (M1 a M10)
-- Observação: Historico_ano_id 4 (Lucas Gabriel) configurado como 'aprovado' nas disciplinas (reprovação apenas no histórico anual por frequência)
INSERT INTO desempenho_disciplina (historico_ano_id, disciplina_id, nota_bimestre1, nota_bimestre2, nota_bimestre3, nota_bimestre4, media, nota_recuperacao, media_final, resultado) VALUES
(1, 1, 8.0, 7.5, 9.0, 8.5, 8.25, NULL, 8.25, 'aprovado'), (1, 2, 7.5, 8.0, 7.0, 8.0, 7.63, NULL, 7.63, 'aprovado'), (1, 5, 9.0, 8.5, 8.0, 9.5, 8.75, NULL, 8.75, 'aprovado'), (1, 7, 8.0, 9.0, 7.5, 8.0, 8.13, NULL, 8.13, 'aprovado'), (1, 8, 9.5, 9.0, 9.0, 9.5, 9.25, NULL, 9.25, 'aprovado'),
(2, 1, 7.0, 6.5, 8.0, 7.5, 7.25, NULL, 7.25, 'aprovado'), (2, 2, 8.0, 7.5, 8.5, 9.0, 8.25, NULL, 8.25, 'aprovado'), (2, 5, 7.5, 7.0, 8.0, 7.5, 7.50, NULL, 7.50, 'aprovado'), (2, 7, 9.0, 8.5, 9.0, 9.5, 9.00, NULL, 9.00, 'aprovado'), (2, 8, 8.5, 8.0, 8.5, 9.0, 8.50, NULL, 8.50, 'aprovado'),
(3, 1, 6.0, 5.5, 7.0, 6.5, 6.25, 8.0, 7.13, 'aprovado'), (3, 2, 7.5, 8.0, 7.5, 8.5, 7.88, NULL, 7.88, 'aprovado'), (3, 3, 8.0, 7.5, 8.0, 8.5, 8.00, NULL, 8.00, 'aprovado'), (3, 4, 7.0, 7.5, 8.0, 7.0, 7.38, NULL, 7.38, 'aprovado'), (3, 5, 9.0, 8.0, 8.5, 9.0, 8.63, NULL, 8.63, 'aprovado'), (3, 6, 7.5, 7.0, 7.5, 8.0, 7.50, NULL, 7.50, 'aprovado'), (3, 7, 8.5, 9.0, 8.0, 8.5, 8.50, NULL, 8.50, 'aprovado'), (3, 8, 9.0, 9.5, 9.0, 9.5, 9.25, NULL, 9.25, 'aprovado'),
-- Lucas Gabriel (Historico 4) - 'aprovado' por disciplina
(4, 1, 8.0, 7.5, 8.5, 9.0, 8.25, NULL, 8.25, 'aprovado'), (4, 2, 7.5, 8.0, 8.0, 8.5, 8.00, NULL, 8.00, 'aprovado'), (4, 3, 9.0, 8.5, 8.0, 9.0, 8.63, NULL, 8.63, 'aprovado'), (4, 4, 7.0, 7.5, 8.0, 7.5, 7.50, NULL, 7.50, 'aprovado'), (4, 5, 8.5, 9.0, 8.5, 9.5, 8.88, NULL, 8.88, 'aprovado'), (4, 6, 7.5, 7.0, 8.0, 7.5, 7.50, NULL, 7.50, 'aprovado'), (4, 7, 9.0, 8.5, 9.0, 9.5, 9.00, NULL, 9.00, 'aprovado'), (4, 8, 8.0, 8.5, 9.0, 8.5, 8.50, NULL, 8.50, 'aprovado'),
(5, 1, 8.5, 9.0, 8.0, 9.5, 8.75, NULL, 8.75, 'aprovado'), (5, 2, 7.5, 8.0, 7.5, 8.5, 7.88, NULL, 7.88, 'aprovado'), (5, 3, 8.0, 7.5, 8.5, 8.0, 8.00, NULL, 8.00, 'aprovado'), (5, 4, 7.5, 7.0, 8.0, 7.5, 7.50, NULL, 7.50, 'aprovado'), (5, 5, 9.0, 8.5, 9.0, 9.5, 9.00, NULL, 9.00, 'aprovado'), (5, 6, 7.5, 8.0, 7.5, 8.0, 7.75, NULL, 7.75, 'aprovado'), (5, 7, 8.5, 9.0, 8.5, 9.0, 8.75, NULL, 8.75, 'aprovado'), (5, 8, 9.0, 9.5, 9.0, 9.5, 9.25, NULL, 9.25, 'aprovado'), (5, 9, 8.0, 7.5, 8.0, 8.5, 8.00, NULL, 8.00, 'aprovado'), (5, 10, 5.0, 6.0, 5.5, 6.5, 5.75, 7.5, 6.63, 'reprovado'),
(6, 1, 9.0, 8.5, 9.5, 9.0, 9.00, NULL, 9.00, 'aprovado'), (6, 2, 8.0, 8.5, 8.0, 9.0, 8.38, NULL, 8.38, 'aprovado'), (6, 3, 7.5, 8.0, 7.5, 8.0, 7.75, NULL, 7.75, 'aprovado'), (6, 4, 8.0, 7.5, 8.5, 8.0, 8.00, NULL, 8.00, 'aprovado'), (6, 5, 9.0, 9.5, 9.0, 9.5, 9.25, NULL, 9.25, 'aprovado'), (6, 6, 8.5, 8.0, 8.5, 9.0, 8.50, NULL, 8.50, 'aprovado'), (6, 7, 9.5, 9.0, 9.0, 9.5, 9.25, NULL, 9.25, 'aprovado'), (6, 8, 9.0, 9.5, 9.0, 9.0, 9.13, NULL, 9.13, 'aprovado'), (6, 9, 7.5, 8.0, 7.5, 8.5, 7.88, NULL, 7.88, 'aprovado'), (6, 10, 8.0, 7.5, 8.0, 8.5, 8.00, NULL, 8.00, 'aprovado'),
(10, 1, 8.0, 7.5, 8.5, 9.0, 8.25, NULL, 8.25, 'reprovado'), (10, 5, 7.5, 8.0, 8.0, 8.5, 8.00, NULL, 8.00, 'reprovado');

-- Adicionando os 'andamento' separadamente para clareza
INSERT INTO desempenho_disciplina (historico_ano_id, disciplina_id, nota_bimestre1, nota_bimestre2, resultado) VALUES
(7, 1, 7.0, 7.5, 'andamento'), (7, 2, 8.0, 7.5, 'andamento'), (7, 3, 6.5, 7.0, 'andamento'), (7, 4, 7.5, 8.0, 'andamento'), (7, 5, 8.5, 8.0, 'andamento'), (7, 6, 7.0, 7.5, 'andamento'), (7, 7, 9.0, 8.5, 'andamento'), (7, 8, 8.5, 9.0, 'andamento'), (7, 9, 7.5, 8.0, 'andamento'), (7, 10, 6.0, 6.5, 'andamento'),
(8, 1, 8.5, 9.0, 'andamento'), (8, 2, 7.5, 8.0, 'andamento'), (8, 3, 8.0, 7.5, 'andamento'), (8, 4, 9.0, 8.5, 'andamento'), (8, 10, 7.5, 8.0, 'andamento'),
(9, 6, 8.0, 8.5, 'andamento');

INSERT INTO alocacao_turma (matricula_id, turma_id, numero_chamada, data_inicio) VALUES
(1, 1, 1, '2024-02-01'), (2, 1, 2, '2024-02-01'), (3, 3, 1, '2024-02-01'), (4, 4, 1, '2024-02-01'), (5, 5, 1, '2024-02-01'),
(6, 6, 1, '2024-02-01'), (7, 7, 1, '2024-02-01'), (8, 8, 1, '2024-02-01'), (9, 9, 1, '2024-02-01'), (10, 10, 1, '2024-02-01');

