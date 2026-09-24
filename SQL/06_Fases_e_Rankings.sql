-- ANÁLISE 12: Potência média por fase

SELECT 
    m.geracao,
    m.fase,
    ROUND(AVG(m.potencia_cv), 1) AS potencia_media_cv
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
GROUP BY m.geracao, m.fase, g.ordem
ORDER BY g.ordem, m.fase;

-- ANÁLISE 17: Modelo mais potente de cada fase

SELECT 
    m.geracao,
    m.fase,
    m.modelo,
    m.potencia_cv
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
WHERE m.potencia_cv = (
    SELECT MAX(m2.potencia_cv)
    FROM modelos AS m2
    WHERE m2.fase = m.fase
)
ORDER BY g.ordem, m.fase;

-- ANÁLISE 20: Ranking dos modelos por potência dentro de cada geração

SELECT 
    m.geracao,
    m.fase,
    m.familia,
    m.modelo,
    m.potencia_cv,
    RANK() OVER (
        PARTITION BY m.geracao, m.familia
        ORDER BY m.potencia_cv DESC
    ) AS ranking_potencia_familia
FROM modelos AS m
JOIN geracoes AS g ON m.geracao = g.geracao
ORDER BY g.ordem, m.familia, ranking_potencia_familia;

-- ANÁLISE 22: Saltos técnicos entre fases por família

WITH medias_fase AS (
    SELECT
        m.geracao,
        m.fase,
        m.familia,
        ROUND(AVG(m.potencia_cv), 1) AS potencia_media_cv,
        ROUND(AVG(m.peso_kg), 1) AS peso_medio_kg,
        ROUND(AVG(m.aceleracao_0_100_s), 2) AS aceleracao_media_0_100_s
    FROM modelos AS m
    GROUP BY m.geracao, m.fase, m.familia
)
SELECT
    mf.geracao,
    mf.fase,
    mf.familia,
    mf.potencia_media_cv,
    COALESCE(
        LAG(mf.potencia_media_cv) OVER (
            PARTITION BY mf.geracao, mf.familia
            ORDER BY mf.fase
        )::TEXT,
        'Sem fase anterior'
    ) AS potencia_fase_anterior_cv,
    COALESCE(
        ROUND(
            mf.potencia_media_cv -
            LAG(mf.potencia_media_cv) OVER (
                PARTITION BY mf.geracao, mf.familia
                ORDER BY mf.fase
            ), 1
        )::TEXT,
        'Sem fase anterior'
    ) AS variacao_potencia_cv
FROM medias_fase AS mf
JOIN geracoes AS g ON mf.geracao = g.geracao
ORDER BY g.ordem, mf.familia, mf.fase;
