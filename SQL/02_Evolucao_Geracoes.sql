-- ANÁLISE 1: Quantidade de modelos por geração

SELECT 
    m.geracao,
    COUNT(*) AS quantidade_modelos
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, g.ordem
ORDER BY g.ordem;

-- ANÁLISE 2: Potência média por geração

SELECT 
    m.geracao,
    ROUND(AVG(m.potencia_cv), 1) AS potencia_media_cv
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, g.ordem
ORDER BY g.ordem;

-- ANÁLISE 3: Maior potência por geração

SELECT 
    m.geracao,
    MAX(m.potencia_cv) AS maior_potencia_cv
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, g.ordem
ORDER BY g.ordem;

-- ANÁLISE 4: Modelo mais potente de cada geração

WITH ranking_potencia AS (
    SELECT
        m.geracao,
        m.fase,
        m.familia,
        m.modelo,
        m.potencia_cv,
        RANK() OVER (
            PARTITION BY m.geracao
            ORDER BY m.potencia_cv DESC
        ) AS ranking_potencia
    FROM modelos AS m
)
SELECT
    r.geracao,
    r.fase,
    r.familia,
    r.modelo,
    r.potencia_cv
FROM ranking_potencia AS r
JOIN geracoes AS g ON r.geracao = g.geracao
WHERE r.ranking_potencia = 1
ORDER BY g.ordem;

-- ANÁLISE 6: Peso médio por geração

SELECT 
    m.geracao,
    ROUND(AVG(m.peso_kg), 1) AS peso_medio_kg
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, g.ordem
ORDER BY g.ordem;

-- ANÁLISE 7: Torque médio por geração

SELECT 
    m.geracao,
    ROUND(AVG(m.torque_nm), 1) AS torque_medio_nm
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, g.ordem
ORDER BY g.ordem;

-- ANÁLISE 21: Posicionamento das famílias por geração

SELECT
    m.geracao,
    m.familia,
    COUNT(*) AS quantidade_modelos,
    ROUND(AVG(m.potencia_cv), 1) AS potencia_media_cv,
    ROUND(AVG(m.peso_kg), 1) AS peso_medio_kg
FROM modelos AS m
JOIN geracoes AS g
    ON m.geracao = g.geracao
GROUP BY
    m.geracao,
    g.ordem,
    m.familia
ORDER BY
    g.ordem,
    m.familia;


