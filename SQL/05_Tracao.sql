-- ANÁLISE 10: Quantidade de modelos por tração

SELECT 
    tracao,
    COUNT(*) AS quantidade_modelos
FROM modelos
GROUP BY tracao
ORDER BY quantidade_modelos DESC;

-- ANÁLISE 11: Potência média por tipo de tração

SELECT 
    tracao,
    ROUND(AVG(potencia_cv), 1) AS potencia_media_cv
FROM modelos
GROUP BY tracao
ORDER BY potencia_media_cv DESC;

-- ANÁLISE 16: Quantidade de modelos por tração em cada geração

SELECT 
    m.geracao,
    m.tracao,
    COUNT(*) AS quantidade_modelos
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, m.tracao, g.ordem
ORDER BY g.ordem, m.tracao;