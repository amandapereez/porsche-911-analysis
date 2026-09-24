-- ANÁLISE 5: Modelo mais rápido de cada geração

SELECT 
    m.geracao,
    m.fase,
    m.modelo,
    ROUND(m.aceleracao_0_100_s, 1) AS aceleracao_0_100_s
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
WHERE m.aceleracao_0_100_s = (
    SELECT MIN(m2.aceleracao_0_100_s)
    FROM modelos AS m2
    WHERE m2.geracao = m.geracao
)
ORDER BY g.ordem;

-- ANÁLISE 13: Aceleração média por fase

SELECT 
    m.geracao,
    m.fase,
    ROUND(AVG(m.aceleracao_0_100_s), 2) AS aceleracao_media_0_100_s
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, m.fase, g.ordem
ORDER BY g.ordem, m.fase;

-- ANÁLISE 14: Velocidade máxima média por geração

SELECT 
    m.geracao,
    ROUND(AVG(m.velocidade_max_kmh), 1) AS velocidade_maxima_media_kmh
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, g.ordem
ORDER BY g.ordem;

-- ANÁLISE 18: Modelo mais rápido de cada fase

SELECT 
    m.geracao,
    m.fase,
    m.modelo,
    ROUND(m.aceleracao_0_100_s, 1) AS aceleracao_0_100_s
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
WHERE m.aceleracao_0_100_s = (
    SELECT MIN(m2.aceleracao_0_100_s)
    FROM modelos AS m2
    WHERE m2.fase = m.fase
)
ORDER BY g.ordem, m.fase;

-- ANÁLISE 19: Relação potência/peso por modelo

SELECT 
    geracao,
    fase,
    modelo,
    potencia_cv,
    peso_kg,
    ROUND(potencia_cv / peso_kg, 3) AS potencia_por_kg
FROM modelos
ORDER BY potencia_por_kg DESC;
