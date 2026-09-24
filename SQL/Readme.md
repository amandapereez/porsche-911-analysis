# Análise das Gerações do Porsche 911 (997, 991, 992)

Projeto de análise de dados desenvolvido em PostgreSQL, utilizando SQL para 
investigar a evolução técnica e de desempenho do Porsche 911 nas gerações 
997, 991 e 992, com visualização final em Power BI.

A partir de 67 registros e 7 perguntas de negócio, o projeto explora 
características como potência, torque, peso, aceleração, velocidade máxima, 
motorização, tração e a evolução entre fases de cada geração.

## Pergunta central

Como o Porsche 911 evoluiu tecnicamente entre as gerações 997, 991 e 992, 
e quais mudanças mais impactaram seu desempenho, segundo os dados deste dataset?

---

## 1. Evolução de potência e torque por geração

**Análises 1, 2, 3 e 4**

- Foram analisados 20 modelos da geração 997, 25 da 991 e 22 da 992.
- O modelo mais potente da geração 997 é o GT2 RS, com 612 cv.
- Na geração 991, o modelo mais potente é o GT2 RS, com 700 cv.
- Na geração 992, o Turbo S 992.2 apresenta a maior potência do dataset, com 711 cv.
- A análise das médias de potência e torque permite observar a evolução desses parâmetros entre as gerações.

---

## 2. Desempenho

**Análises 5, 13, 14, 18 e 19**

- O modelo mais rápido de cada geração é o Turbo S no 997, com 3,3 s de 0 a 100 km/h; o GT2 RS no 991, com 2,8 s; e o Turbo S 992.2, com 2,5 s.
- A aceleração média também é analisada entre as fases .1 e .2 de cada geração.
- A relação potência/peso mostra que potência absoluta não é o único fator relacionado ao desempenho.
- O GT2 RS apresenta os maiores valores de potência por peso nas gerações 997 e 991.
- Na geração 992, o Turbo S 992.2 apresenta uma das maiores relações potência/peso do conjunto.
- A velocidade máxima média varia entre as gerações e não acompanha de forma linear a evolução da potência média.

---

## 3. Motorização

**Análises 8, 9 e 15**

- O dataset possui 31 modelos classificados como aspirados, 34 como biturbo e 2 como turbo.
- A potência média é comparada entre os diferentes tipos de motorização.
- A distribuição das motorizações também é analisada dentro de cada geração.
- Ao longo das gerações, observa-se uma redução da participação dos motores aspirados e um aumento da presença dos motores biturbo no conjunto analisado.
- Os modelos GT3 permanecem associados à motorização aspirada dentro do dataset.

> **Observação:** o Carrera GTS 992.2 utiliza tecnologia híbrida, mas foi classificado como "Turbo" neste dataset por não existir uma categoria "Híbrido" na estrutura utilizada.

---

## 4. Peso e relação potência/peso

**Análises 6 e 19**

- O peso médio dos modelos é comparado entre as três gerações.
- A relação entre potência e peso permite analisar o desempenho considerando não apenas a potência do motor, mas também a massa do veículo.
- Modelos das famílias GT apresentam valores elevados de potência por peso em diferentes gerações.
- O 992.2 Turbo S também se destaca nessa métrica dentro da geração 992.

---

## 5. Tração

**Análises 10, 11 e 16**

- O dataset possui modelos com tração traseira (RWD) e integral (AWD).
- A quantidade de modelos por tipo de tração é comparada entre as gerações.
- Também é analisada a potência média de cada tipo de tração.
- Dentro do conjunto analisado, os modelos AWD apresentam peso médio maior em comparação aos modelos RWD.
- A análise permite observar a relação entre tração, peso e desempenho sem considerar a tração como um fator isolado.

---

## 6. Posicionamento das famílias

**Análises 20 e 21**

As famílias foram analisadas considerando sua posição dentro de cada geração e seus respectivos níveis de potência.

De forma geral, o dataset apresenta diferentes níveis de posicionamento entre as famílias Carrera, GTS, Turbo, GT e Especial.

Alguns casos mostram que essa divisão não é totalmente linear. Por exemplo, o Carrera GTS 992.2 possui 541 cv, enquanto o GT3 992.2 possui 510 cv.

A categoria "Especial" também reúne modelos com propostas diferentes, como o 911 R, Speedster, Dakar, Sport Classic e S/T, cada um com características específicas. Vale destacar que o Sport Classic presente no dataset é o da geração **992** — o Sport Classic da geração **997** foi deliberadamente excluído do projeto, por não apresentar diferenças mecânicas relevantes em relação ao Carrera S da época (era um pacote predominantemente estético/comemorativo). Já o Sport Classic 992 foi incluído por possuir uma configuração mecânica própria (motor turbo detunado, exclusivamente RWD e câmbio manual), em linha com os critérios de inclusão definidos na metodologia.

---

## 7. Evolução entre as fases .1 e .2

**Análise 22**

A comparação entre as fases .1 e .2 foi utilizada para observar mudanças na potência média das famílias dentro de cada geração.

Alguns exemplos encontrados no dataset:

- GTS 992.1 → 992.2: aumento de 61 cv na potência média.
- Turbo 992.1 → 992.2: aumento de 96 cv na potência média.
- GT2 997.1 → 997.2: aumento de 82 cv na potência média.
- Turbo 997.1 → 997.2: aumento de 35 cv na potência média.

Algumas comparações apresentam valores que não representam necessariamente uma evolução direta do mesmo modelo, pois a composição da família pode mudar entre as fases.

Por exemplo, o GT3 992.2 possui 510 cv, enquanto a média do grupo GT3 na fase 992.1 é influenciada pela presença do GT3 RS, com 525 cv.

---

## Metodologia

O dataset foi estruturado considerando as gerações 997, 991 e 992 e suas respectivas fases.

Foram adotados alguns critérios para definir quais modelos seriam considerados registros distintos:

- Mudanças relevantes de motor, potência ou conjunto mecânico podem caracterizar um modelo diferente.
- Diferenças de tração podem caracterizar um modelo diferente.
- Versões com identidade própria dentro da linha 911 foram consideradas quando apresentavam diferenças relevantes de engenharia ou posicionamento.
- Coupé, Cabriolet e outras carrocerias não foram separadas quando não apresentavam diferenças mecânicas relevantes para a análise.
- Manual e PDK não foram tratados como modelos diferentes.
- Sport Chrono não foi utilizado como critério para diferenciar modelos.
- Edições predominantemente cosméticas ou comemorativas, sem mudanças mecânicas relevantes, foram excluídas.
- Modelos de competição, como o 911 GT3 Cup, não fazem parte do dataset.
- O tempo de 0 a 100 km/h representa o valor utilizado no dataset para cada modelo e não uma comparação entre diferentes configurações de transmissão ou equipamentos opcionais.

---

## Fonte dos dados

Os valores técnicos utilizados neste projeto (potência, torque, peso, 
aceleração e velocidade máxima) foram coletados a partir de especificações 
oficiais divulgadas pela Porsche e de fontes técnicas especializadas do 
setor automotivo, refletindo dados reais de cada modelo, e não valores 
fictícios ou gerados artificialmente.

Como o dataset foi construído manualmente a partir de diferentes fontes ao 
longo do tempo, pequenas variações podem existir em relação aos números 
divulgados oficialmente para cada mercado específico (Brasil, Europa, EUA), 
já que esses valores podem mudar conforme a região e o ano-modelo.

---

## Estrutura do projeto

O projeto foi desenvolvido seguindo a seguinte sequência:

1. Criação e organização do banco de dados no PostgreSQL.
2. Inserção dos 67 registros.
3. Criação da tabela auxiliar para ordenar cronologicamente as gerações.
4. Desenvolvimento das consultas SQL para responder às perguntas de negócio.
5. Organização das análises por tema.
6. Construção do dashboard no Power BI.

### Tecnologias utilizadas

- PostgreSQL
- SQL
- Power BI

### Principais conceitos SQL utilizados

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- JOIN
- CTE
- Subqueries
- Funções de agregação
- RANK()
- LAG()
- Funções de janela
- COALESCE

---

## Limitações do dataset

O dataset foi desenvolvido para fins de estudo e análise e representa um recorte dos modelos das gerações 997, 991 e 992.

A geração 992 ainda possui uma linha de modelos em evolução, portanto a composição do dataset não representa necessariamente todos os modelos existentes ou futuros da geração.

Além disso, algumas análises de médias dependem dos modelos selecionados em cada geração, fase ou família. Por isso, os resultados devem ser interpretados dentro do conjunto de 67 registros utilizado no projeto.

---

## Status do projeto

A etapa de modelagem e análise em SQL está concluída, com as 22 consultas organizadas por tema e documentadas neste README.

O dashboard no Power BI está em construção: a página de Visão Geral já está finalizada, com cartões de indicadores-chave, gráfico de evolução por geração e tabela dos modelos mais potentes. As demais páginas temáticas (Potência e Torque, Desempenho, Motorização e Tração, Famílias) estão em desenvolvimento, seguindo a mesma estrutura de filtros e identidade visual já definida.
