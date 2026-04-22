-- 4. Views
CREATE VIEW vw_ResultadoDisciplina AS
SELECT
    dd.historico_ano_id,
    dd.disciplina_id,
    d.nome AS disciplina,
    ROUND((dd.nota_bimestre1 + dd.nota_bimestre2 + dd.nota_bimestre3 + dd.nota_bimestre4) / 4.0, 2) AS media,
    CASE
        WHEN dd.nota_recuperacao IS NULL THEN ROUND((dd.nota_bimestre1 + dd.nota_bimestre2 + dd.nota_bimestre3 + dd.nota_bimestre4) / 4.0, 2)
        ELSE ROUND(((dd.nota_bimestre1 + dd.nota_bimestre2 + dd.nota_bimestre3 + dd.nota_bimestre4) / 4.0 + dd.nota_recuperacao) / 2.0, 2)
    END AS media_final,
    CASE
        WHEN dd.nota_recuperacao IS NULL AND (dd.nota_bimestre1 + dd.nota_bimestre2 + dd.nota_bimestre3 + dd.nota_bimestre4) / 4.0 >= 7.0 THEN 'Aprovado'
        WHEN dd.nota_recuperacao IS NOT NULL AND ((dd.nota_bimestre1 + dd.nota_bimestre2 + dd.nota_bimestre3 + dd.nota_bimestre4) / 4.0 + dd.nota_recuperacao) / 2.0 >= 7.0 THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS situacao_disciplina
FROM desempenho_disciplina dd
JOIN disciplina d ON d.id = dd.disciplina_id
WHERE dd.nota_bimestre1 IS NOT NULL AND dd.nota_bimestre2 IS NOT NULL AND dd.nota_bimestre3 IS NOT NULL AND dd.nota_bimestre4 IS NOT NULL;

CREATE VIEW vw_SituacaoAno AS
SELECT
    m.id AS matricula_id,
    e.nome AS aluno,
    ans.descricao AS serie,
    ha.ano_letivo,
    ha.percentual_frequencia,
    CASE
        WHEN ha.percentual_frequencia < 75.0 THEN 'Reprovado (Frequência)'
        WHEN MIN(CASE WHEN vrd.situacao_disciplina = 'Aprovado' THEN 1 ELSE 0 END) = 1 THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS situacao_ano
FROM matricula m
JOIN estudante e ON e.id = m.estudante_id
JOIN historico_curso hc ON hc.matricula_id = m.id
JOIN historico_ano ha ON ha.historico_curso_id = hc.id
JOIN ano_serie ans ON ans.id = ha.ano_serie_id
JOIN vw_ResultadoDisciplina vrd ON vrd.historico_ano_id = ha.id
GROUP BY m.id, e.nome, ans.descricao, ha.ano_letivo, ha.percentual_frequencia;