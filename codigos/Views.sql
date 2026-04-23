-- View 1: Cálculo de Médias e Situação por Disciplina
CREATE VIEW vw_ResultadoDisciplina AS
SELECT
    dd.historico_ano_id,
    dd.disciplina_id,
    d.nome AS disciplina,
    ROUND((IFNULL(dd.nota_bimestre1,0) + IFNULL(dd.nota_bimestre2,0) + IFNULL(dd.nota_bimestre3,0) + IFNULL(dd.nota_bimestre4,0)) / 4.0, 2) AS media_bimestral,
    CASE 
        WHEN dd.nota_recuperacao IS NULL THEN 
            ROUND((IFNULL(dd.nota_bimestre1,0) + IFNULL(dd.nota_bimestre2,0) + IFNULL(dd.nota_bimestre3,0) + IFNULL(dd.nota_bimestre4,0)) / 4.0, 2)
        ELSE 
            ROUND((((IFNULL(dd.nota_bimestre1,0) + IFNULL(dd.nota_bimestre2,0) + IFNULL(dd.nota_bimestre3,0) + IFNULL(dd.nota_bimestre4,0)) / 4.0) + dd.nota_recuperacao) / 2.0, 2)
    END AS media_final,
    CASE 
        WHEN dd.resultado = 'andamento' THEN 'Em Andamento'
        WHEN dd.resultado = 'aprovado' THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS situacao_disciplina
FROM desempenho_disciplina dd
JOIN disciplina d ON d.id = dd.disciplina_id;

-- View 2: Consolidação da Situação do Ano Letivo
CREATE VIEW vw_SituacaoAno AS
SELECT
    m.id AS matricula_id,
    e.nome AS aluno,
    ans.descricao AS serie,
    ha.ano_letivo,
    ha.percentual_frequencia,
    CASE 
        WHEN ha.percentual_frequencia < 75.0 THEN 'Reprovado (Frequência)'
        WHEN EXISTS (
            SELECT 1 FROM desempenho_disciplina dd
            WHERE dd.historico_ano_id = ha.id
              AND dd.resultado = 'reprovado'
        ) THEN 'Reprovado (Disciplina)'
        WHEN EXISTS (
            SELECT 1 FROM desempenho_disciplina dd
            WHERE dd.historico_ano_id = ha.id
              AND dd.resultado = 'andamento'
        ) THEN 'Em Andamento'
        WHEN ha.resultado IS NOT NULL THEN CAST(ha.resultado AS CHAR)
        ELSE 'Em Processamento'
    END AS situacao_ano
FROM matricula m
JOIN estudante e ON e.id = m.estudante_id
JOIN historico_curso hc ON hc.matricula_id = m.id
JOIN historico_ano ha ON ha.historico_curso_id = hc.id
JOIN ano_serie ans ON ans.id = ha.ano_serie_id;