# 1. Evolução da Demanda por Cursos de Tecnologia

# Perguntas da Análise:
# Entre os seguintes cursos de tecnologia, quais tiveram um aumento significativo de candidatos inscritos? 
# Engenharia da Computação, Engenharia de Software, Ciência da Computação, Sistemas da Informação e Análise e Desenvolvimento de Sistemas

SELECT
  nome_curso AS curso,
  COUNT(inscricao_enem) AS total_inscritos,
  ano
FROM `basedosdados.br_mec_sisu.microdados`
WHERE
  nome_curso IN (
    'ENGENHARIA DE COMPUTAÇÃO',
    'ENGENHARIA DE SOFTWARE',
    'CIÊNCIA DA COMPUTAÇÃO',
    'SISTEMAS DE INFORMAÇÃO',
    'ANÁLISE E DESENVOLVIMENTO DE SISTEMAS'
  )
GROUP BY nome_curso, ano
ORDER BY ano DESC, nome_curso;

# 2. Perfil dos Candidatos em Tecnologia
# Objetivo: Entender o perfil dos candidatos que se inscrevem e são aprovados nos cursos de tecnologia.

# Perguntas de análise:
# Qual é o perfil demográfico dos candidatos (idade, sexo e Estado) nesses cursos?


SELECT
  idade 
FROM `basedosdados.br_mec_sisu.microdados`



# Houve mudanças no perfil dos candidatos aprovados em tecnologia nos últimos anos?