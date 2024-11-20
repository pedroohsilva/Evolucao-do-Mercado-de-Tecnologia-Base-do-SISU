# 1. Evolução da Demanda por Cursos de Tecnologia

# Perguntas da Análise:
# Entre os seguintes cursos de tecnologia, quais tiveram um aumento significativo de candidatos inscritos? 
# Engenharia da Computação, Engenharia de Software, Ciência da Computação, Sistemas da Informação e Análise e Desenvolvimento de Sistemas

# Engenharia da Computação
SELECT
  nome_curso AS curso,
  COUNT(inscricao_enem) AS total_inscritos,
  ano
FROM `basedosdados.br_mec_sisu.microdados`
WHERE
  nome_curso = 'ENGENHARIA DE COMPUTAÇÃO'
GROUP BY nome_curso, ano
ORDER BY ano DESC

# Engenharia de Software
SELECT
  nome_curso AS curso,
  COUNT(inscricao_enem) AS total_inscritos,
  ano
FROM `basedosdados.br_mec_sisu.microdados`
WHERE
  nome_curso = 'ENGENHARIA DE SOFTWARE'
GROUP BY nome_curso, ano
ORDER BY ano DESC

# Ciência da Computação
SELECT
  nome_curso AS curso,
  COUNT(inscricao_enem) AS total_inscritos,
  ano
FROM `basedosdados.br_mec_sisu.microdados`
WHERE
  nome_curso = 'CIÊNCIA DA COMPUTAÇÃO'
GROUP BY nome_curso, ano
ORDER BY ano DESC

# Sistemas de Informação
SELECT
  nome_curso AS curso,
  COUNT(inscricao_enem) AS total_inscritos,
  ano
FROM `basedosdados.br_mec_sisu.microdados`
WHERE
  nome_curso = 'SISTEMAS DE INFORMAÇÃO'
GROUP BY nome_curso, ano
ORDER BY ano DESC

# Análise e Desenvolvimento de Sistemas
SELECT
  nome_curso AS curso,
  COUNT(inscricao_enem) AS total_inscritos,
  ano
FROM `basedosdados.br_mec_sisu.microdados`
WHERE
  nome_curso = 'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS'
GROUP BY nome_curso, ano
ORDER BY ano DESC

# Como o número de vagas e a concorrência por esses cursos evoluíram ao longo dos anos?
# Engenharia da Computação, Engenharia de Software, Ciência da Computação, Sistemas da Informação e Análise e Desenvolvimento de Sistemas
