CREATE TABLE modelos (
    id_modelo SERIAL PRIMARY KEY,
    geracao VARCHAR(10) NOT NULL,
    fase VARCHAR(10) NOT NULL,
    familia VARCHAR(30) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    cilindrada_cc INTEGER,
    motorizacao VARCHAR(30),
    tracao VARCHAR(10),
    potencia_cv NUMERIC(6,1),
    torque_nm NUMERIC(6,1),
    peso_kg NUMERIC(7,1),
    aceleracao_0_100_s NUMERIC(4,2),
    velocidade_max_kmh NUMERIC(6,1)
);
TRUNCATE TABLE modelos RESTART IDENTITY;
INSERT INTO modelos (
    geracao, fase, familia, modelo, cilindrada_cc, 
    motorizacao, tracao, potencia_cv, torque_nm, 
    peso_kg, aceleracao_0_100_s, velocidade_max_kmh
) VALUES 
-- GERAÇÃO 997 (997.1 e 997.2)
('911 (997)', '997.1', 'Carrera', 'Carrera', 3596, 'Aspirado', 'RWD', 325, 370, 1395, 5.0, 285),
('911 (997)', '997.2', 'Carrera', 'Carrera', 3614, 'Aspirado', 'RWD', 345, 390, 1415, 4.9, 289),
('911 (997)', '997.1', 'Carrera', 'Carrera S', 3824, 'Aspirado', 'RWD', 355, 400, 1420, 4.8, 293),
('911 (997)', '997.2', 'Carrera', 'Carrera S', 3800, 'Aspirado', 'RWD', 385, 420, 1425, 4.7, 297),
('911 (997)', '997.1', 'Carrera', 'Carrera 4', 3596, 'Aspirado', 'AWD', 325, 370, 1450, 5.1, 280),
('911 (997)', '997.2', 'Carrera', 'Carrera 4', 3614, 'Aspirado', 'AWD', 345, 390, 1470, 5.0, 284),
('911 (997)', '997.1', 'Carrera', 'Carrera 4S', 3824, 'Aspirado', 'AWD', 355, 400, 1475, 4.8, 288),
('911 (997)', '997.2', 'Carrera', 'Carrera 4S', 3800, 'Aspirado', 'AWD', 385, 420, 1480, 4.7, 297),
('911 (997)', '997.2', 'GTS', 'Carrera GTS', 3800, 'Aspirado', 'RWD', 408, 420, 1420, 4.6, 306),
('911 (997)', '997.2', 'GTS', 'Carrera 4 GTS', 3800, 'Aspirado', 'AWD', 408, 420, 1480, 4.6, 302),
('911 (997)', '997.1', 'Turbo', 'Turbo', 3600, 'Biturbo', 'AWD', 480, 620, 1585, 3.9, 310),
('911 (997)', '997.2', 'Turbo', 'Turbo', 3800, 'Biturbo', 'AWD', 500, 650, 1570, 3.7, 312),
('911 (997)', '997.2', 'Turbo', 'Turbo S', 3800, 'Biturbo', 'AWD', 530, 700, 1585, 3.3, 315),
('911 (997)', '997.1', 'GT3', 'GT3', 3600, 'Aspirado', 'RWD', 415, 405, 1395, 4.3, 310),
('911 (997)', '997.2', 'GT3', 'GT3', 3797, 'Aspirado', 'RWD', 435, 430, 1395, 4.1, 312),
('911 (997)', '997.1', 'GT3', 'GT3 RS', 3600, 'Aspirado', 'RWD', 415, 405, 1375, 4.2, 310),
('911 (997)', '997.2', 'GT3', 'GT3 RS 3.8', 3797, 'Aspirado', 'RWD', 450, 430, 1370, 4.0, 310),
('911 (997)', '997.2', 'GT3', 'GT3 RS 4.0', 3996, 'Aspirado', 'RWD', 500, 460, 1360, 3.9, 310),
('911 (997)', '997.1', 'GT2', 'GT2', 3600, 'Biturbo', 'RWD', 530, 680, 1440, 3.7, 329),
('911 (997)', '997.2', 'GT2', 'GT2 RS', 3600, 'Biturbo', 'RWD', 612, 700, 1370, 3.5, 330),

-- GERAÇÃO 991 (991.1 e 991.2)
('911 (991)', '991.1', 'Carrera', 'Carrera', 3436, 'Aspirado', 'RWD', 350, 390, 1380, 4.8, 289),
('911 (991)', '991.2', 'Carrera', 'Carrera', 2981, 'Biturbo', 'RWD', 370, 450, 1430, 4.6, 295),
('911 (991)', '991.1', 'Carrera', 'Carrera S', 3800, 'Aspirado', 'RWD', 400, 440, 1395, 4.5, 304),
('911 (991)', '991.2', 'Carrera', 'Carrera S', 2981, 'Biturbo', 'RWD', 420, 500, 1440, 4.1, 308),
('911 (991)', '991.1', 'Carrera', 'Carrera 4', 3436, 'Aspirado', 'AWD', 350, 390, 1430, 4.9, 285),
('911 (991)', '991.2', 'Carrera', 'Carrera 4', 2981, 'Biturbo', 'AWD', 370, 450, 1480, 4.5, 292),
('911 (991)', '991.1', 'Carrera', 'Carrera 4S', 3800, 'Aspirado', 'AWD', 400, 440, 1445, 4.5, 299),
('911 (991)', '991.2', 'Carrera', 'Carrera 4S', 2981, 'Biturbo', 'AWD', 420, 500, 1490, 4.2, 306),
('911 (991)', '991.1', 'GTS', 'Carrera GTS', 3800, 'Aspirado', 'RWD', 430, 440, 1425, 4.4, 306),
('911 (991)', '991.2', 'GTS', 'Carrera GTS', 2981, 'Biturbo', 'RWD', 450, 550, 1450, 4.1, 312),
('911 (991)', '991.1', 'GTS', 'Carrera 4 GTS', 3800, 'Aspirado', 'AWD', 430, 440, 1470, 4.4, 304),
('911 (991)', '991.2', 'GTS', 'Carrera 4 GTS', 2981, 'Biturbo', 'AWD', 450, 550, 1510, 4.0, 308),
('911 (991)', '991.2', 'Especial', 'Carrera T', 2981, 'Biturbo', 'RWD', 370, 450, 1425, 4.5, 293),
('911 (991)', '991.1', 'Turbo', 'Turbo', 3800, 'Biturbo', 'AWD', 520, 660, 1595, 3.4, 315),
('911 (991)', '991.2', 'Turbo', 'Turbo', 3800, 'Biturbo', 'AWD', 540, 660, 1595, 3.0, 320),
('911 (991)', '991.1', 'Turbo', 'Turbo S', 3800, 'Biturbo', 'AWD', 560, 700, 1605, 3.1, 318),
('911 (991)', '991.2', 'Turbo', 'Turbo S', 3800, 'Biturbo', 'AWD', 580, 700, 1600, 2.9, 330),
('911 (991)', '991.1', 'GT3', 'GT3', 3799, 'Aspirado', 'RWD', 475, 440, 1430, 3.5, 315),
('911 (991)', '991.2', 'GT3', 'GT3', 3996, 'Aspirado', 'RWD', 500, 460, 1413, 3.9, 320),
('911 (991)', '991.1', 'GT3', 'GT3 RS', 3996, 'Aspirado', 'RWD', 500, 460, 1420, 3.3, 310),
('911 (991)', '991.2', 'GT3', 'GT3 RS', 3996, 'Aspirado', 'RWD', 520, 470, 1430, 3.2, 312),
('911 (991)', '991.2', 'GT2', 'GT2 RS', 3800, 'Biturbo', 'RWD', 700, 750, 1470, 2.8, 340),
('911 (991)', '991.2', 'Especial', '911 R', 3996, 'Aspirado', 'RWD', 500, 460, 1370, 3.8, 323),
('911 (991)', '991.2', 'Especial', '911 Speedster', 3996, 'Aspirado', 'RWD', 510, 470, 1465, 4.0, 310),
('911 (991)', '991.2', 'Turbo', 'Turbo S Exclusive Series', 3800, 'Biturbo', 'AWD', 607, 750, 1600, 2.9, 330),

-- GERAÇÃO 992 (992.1 e 992.2)
('911 (992)', '992.1', 'Carrera', 'Carrera', 2981, 'Biturbo', 'RWD', 385, 450, 1505, 4.2, 293),
('911 (992)', '992.2', 'Carrera', 'Carrera', 2981, 'Biturbo', 'RWD', 394, 450, 1520, 4.1, 294),
('911 (992)', '992.1', 'Carrera', 'Carrera S', 2981, 'Biturbo', 'RWD', 450, 530, 1515, 3.7, 308),
('911 (992)', '992.2', 'Carrera', 'Carrera S', 2981, 'Biturbo', 'RWD', 480, 570, 1530, 3.5, 308),
('911 (992)', '992.1', 'Carrera', 'Carrera 4', 2981, 'Biturbo', 'AWD', 385, 450, 1555, 4.2, 291),
('911 (992)', '992.1', 'Carrera', 'Carrera 4S', 2981, 'Biturbo', 'AWD', 450, 530, 1565, 3.6, 306),
('911 (992)', '992.2', 'Carrera', 'Carrera 4S', 2981, 'Biturbo', 'AWD', 480, 570, 1580, 3.5, 308),
('911 (992)', '992.1', 'GTS', 'Carrera GTS', 2981, 'Biturbo', 'RWD', 480, 570, 1545, 3.4, 311),
('911 (992)', '992.2', 'GTS', 'Carrera GTS', 3596, 'Turbo', 'RWD', 541, 610, 1595, 3.0, 312),
('911 (992)', '992.1', 'GTS', 'Carrera 4 GTS', 2981, 'Biturbo', 'AWD', 480, 570, 1595, 3.3, 309),
('911 (992)', '992.2', 'GTS', 'Carrera 4 GTS', 3596, 'Turbo', 'AWD', 541, 610, 1645, 3.0, 312),
('911 (992)', '992.1', 'Especial', 'Carrera T', 2981, 'Biturbo', 'RWD', 385, 450, 1470, 4.5, 291),
('911 (992)', '992.2', 'Especial', 'Carrera T', 2981, 'Biturbo', 'RWD', 394, 450, 1478, 4.5, 295),
('911 (992)', '992.1', 'Turbo', 'Turbo', 3745, 'Biturbo', 'AWD', 580, 750, 1640, 2.8, 320),
('911 (992)', '992.1', 'Turbo', 'Turbo S', 3745, 'Biturbo', 'AWD', 650, 800, 1640, 2.7, 330),
('911 (992)', '992.2', 'Turbo', 'Turbo S', 3745, 'Biturbo', 'AWD', 711, 880, 1680, 2.5, 335),
('911 (992)', '992.1', 'GT3', 'GT3', 3996, 'Aspirado', 'RWD', 510, 470, 1418, 3.9, 320),
('911 (992)', '992.2', 'GT3', 'GT3', 3996, 'Aspirado', 'RWD', 510, 450, 1420, 3.9, 313),
('911 (992)', '992.1', 'GT3', 'GT3 RS', 3996, 'Aspirado', 'RWD', 525, 465, 1450, 3.2, 296),
('911 (992)', '992.1', 'Especial', 'Sport Classic', 3745, 'Biturbo', 'RWD', 550, 600, 1570, 4.1, 315),
('911 (992)', '992.1', 'Especial', 'Dakar', 2981, 'Biturbo', 'AWD', 480, 570, 1605, 3.4, 240),
('911 (992)', '992.1', 'Especial', 'S/T', 3996, 'Aspirado', 'RWD', 525, 465, 1380, 3.7, 300);

CREATE TABLE geracoes (
    geracao VARCHAR(20) PRIMARY KEY,
    ordem   INTEGER
);

INSERT INTO geracoes (geracao, ordem) VALUES
('911 (997)', 1),
('911 (991)', 2),
('911 (992)', 3);