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
('Ensino Fundamental I', 12000.00), ('Ensino Fundamental II', 15000.00), ('Ensino Médio', 18000.00),
('Pré-Vestibular', 10000.00), ('Curso de Inglês Noturno', 5000.00), ('Informática Básica', 3000.00),
('Artes e Pintura', 4500.00), ('Robótica Educacional', 7500.00), ('Música e Instrumentos', 6000.00),
('Educação de Jovens e Adultos', 8000.00);

INSERT INTO ano_serie (curso_id, numero, descricao) VALUES
(1, 1, '1º Ano Fundamental I'), (1, 2, '2º Ano Fundamental I'), (2, 6, '6º Ano Fundamental II'),
(2, 7, '7º Ano Fundamental II'), (3, 1, '1º Ano Ensino Médio'), (3, 2, '2º Ano Ensino Médio'),
(3, 3, '3º Ano Ensino Médio'), (4, 1, 'Turma Intensiva Pré-Vest'), (5, 1, 'Inglês Iniciante Module 1'), (8, 1, 'Iniciação à Robótica');

INSERT INTO disciplina (nome, descricao) VALUES
('Matemática', 'Cálculos e lógica'), ('Português', 'Gramática e literatura'), ('História', 'História Geral e do Brasil'),
('Geografia', 'Estudos físicos e políticos'), ('Ciências', 'Biologia, física e química básica'), ('Inglês', 'Língua estrangeira'),
('Artes', 'Expressão artística'), ('Educação Física', 'Esportes e saúde'), ('Filosofia', 'Pensamento crítico'), ('Física', 'Mecânica e termodinâmica');

INSERT INTO ano_disciplina (ano_serie_id, disciplina_id) VALUES
(1, 1), (1, 2), (1, 5), (1, 7), (1, 8), (2, 1), (2, 2), (2, 5), (2, 7), (2, 8),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8),
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8), (5, 9), (5, 10),
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10),
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 6), (7, 7), (7, 8), (7, 9), (7, 10),
(8, 1), (8, 2), (8, 3), (8, 4), (8, 10), (9, 6), (10, 1), (10, 5);

INSERT INTO professor_disciplina (professor_id, disciplina_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (1, 10), (5, 1);

INSERT INTO matricula (estudante_id, curso_id, numero, data_matricula, situacao) VALUES
(1, 1, '2024001', '2024-01-10', 'ativa'), (2, 1, '2024002', '2024-01-12', 'ativa'),
(3, 2, '2024003', '2024-01-15', 'ativa'), (4, 2, '2024004', '2024-01-16', 'ativa'),
(5, 3, '2024005', '2024-01-20', 'ativa'), (6, 3, '2024006', '2024-01-21', 'ativa'),
(7, 3, '2024007', '2024-01-22', 'ativa'), (8, 4, '2024008', '2024-01-25', 'ativa'),
(9, 5, '2024009', '2024-01-26', 'ativa'), (10, 8, '2024010', '2024-01-30', 'transferido');

INSERT INTO turma (ano_serie_id, nome, sala, ano_letivo) VALUES
(1, 'Turma A', 'Sala 101', 2024), (2, 'Turma B', 'Sala 102', 2024), (3, 'Turma A', 'Sala 201', 2024),
(4, 'Turma C', 'Sala 202', 2024), (5, 'Turma A', 'Sala 301', 2024), (6, 'Turma B', 'Sala 302', 2024),
(7, 'Turma C', 'Sala 303', 2024), (8, 'Específica 1', 'Sala 401', 2024), (9, 'Night Class', 'Lab 1', 2024), (10, 'Robo-Kids', 'Lab 2', 2024);

INSERT INTO historico_curso (matricula_id, situacao_curso) VALUES
(1, 'em_andamento'), (2, 'em_andamento'), (3, 'em_andamento'), (4, 'em_andamento'), (5, 'em_andamento'),
(6, 'em_andamento'), (7, 'em_andamento'), (8, 'em_andamento'), (9, 'em_andamento'), (10, 'em_andamento');

INSERT INTO historico_ano (historico_curso_id, ano_serie_id, ano_letivo, percentual_frequencia, resultado) VALUES
(1, 1, 2024, 90.00, 'aprovado'), (2, 1, 2024, 85.00, 'aprovado'), (3, 3, 2024, 78.00, 'aprovado'),
(4, 4, 2024, 70.00, 'reprovado'), (5, 5, 2024, 88.00, 'aprovado'), (6, 6, 2024, 92.00, 'aprovado'),
(7, 7, 2024, 76.00, NULL), (8, 8, 2024, 95.00, NULL), (9, 9, 2024, 80.00, NULL), (10, 10, 2024, 60.00, 'reprovado');

-- Desempenho (Simplificado em um bloco para o histórico 1 a 6)
INSERT INTO desempenho_disciplina (historico_ano_id, disciplina_id, nota_bimestre1, nota_bimestre2, nota_bimestre3, nota_bimestre4, media, media_final, resultado) VALUES
(1, 1, 8, 7.5, 9, 8.5, 8.25, 8.25, 'aprovado'), (1, 2, 7.5, 8, 7, 8, 7.63, 7.63, 'aprovado'), (1, 5, 9, 8.5, 8, 9.5, 8.75, 8.75, 'aprovado'),
(2, 1, 7, 6.5, 8, 7.5, 7.25, 7.25, 'aprovado'), (2, 2, 8, 7.5, 8.5, 9, 8.25, 8.25, 'aprovado'), (2, 5, 7.5, 7, 8, 7.5, 7.50, 7.50, 'aprovado'),
(3, 1, 6, 5.5, 7, 6.5, 6.25, 7.13, 'aprovado'), (3, 2, 7.5, 8, 7.5, 8.5, 7.88, 7.88, 'aprovado'),
(4, 1, 4, 3.5, 5, 4.5, 4.25, 5.63, 'reprovado'), (4, 2, 3.5, 4, 4, 4.5, 4.00, 5.50, 'reprovado'),
(5, 1, 8.5, 9, 8, 9.5, 8.75, 8.75, 'aprovado'), (5, 10, 5, 6, 5.5, 6.5, 5.75, 6.63, 'reprovado'),
(6, 1, 9, 8.5, 9.5, 9, 9.00, 9.00, 'aprovado'), (6, 10, 8, 7.5, 8, 8.5, 8.00, 8.00, 'aprovado');

-- Casos em andamento (historico_ano 7, 8, 9)
INSERT INTO desempenho_disciplina (historico_ano_id, disciplina_id, nota_bimestre1, nota_bimestre2, resultado) VALUES
(7, 1, 7, 7.5, 'andamento'), (7, 2, 8, 7.5, 'andamento'), (8, 1, 8.5, 9, 'andamento'), (9, 6, 8, 8.5, 'andamento');

-- Reprovado (historico_ano 10)
INSERT INTO desempenho_disciplina (historico_ano_id, disciplina_id, nota_bimestre1, nota_bimestre2, nota_bimestre3, nota_bimestre4, media, media_final, resultado) VALUES
(10, 1, 3, 4, 3.5, 4.5, 3.75, 4.88, 'reprovado'), (10, 5, 4, 3.5, 4, 4.5, 4.00, 5.00, 'reprovado');

INSERT INTO alocacao_turma (matricula_id, turma_id, numero_chamada, data_inicio) VALUES
(1, 1, 1, '2024-02-01'), (2, 1, 2, '2024-02-01'), (3, 3, 1, '2024-02-01'), (4, 4, 1, '2024-02-01'),
(5, 5, 1, '2024-02-01'), (6, 6, 1, '2024-02-01'), (7, 7, 1, '2024-02-01'), (8, 8, 1, '2024-02-01'),
(9, 9, 1, '2024-02-01'), (10, 10, 1, '2024-02-01');