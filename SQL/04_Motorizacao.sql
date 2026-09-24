-- ANÁLISE 8: Quantidade de modelos por tipo de motorização

SELECT 
    motorizacao,
    COUNT(*) AS quantidade_modelos
FROM modelos
GROUP BY motorizacao
ORDER BY quantidade_modelos DESC;

-- ANÁLISE 9: Potência média por tipo de motorização

SELECT 
    motorizacao,
    ROUND(AVG(potencia_cv), 1) AS potencia_media_cv
FROM modelos
GROUP BY motorizacao
ORDER BY potencia_media_cv DESC;

-- ANÁLISE 15: Quantidade de modelos por motorização em cada geração

SELECT 
    m.geracao,
    m.motorizacao,
    COUNT(*) AS quantidade_modelos
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, m.motorizacao, g.ordem
ORDER BY g.ordem, m.motorizacao;

