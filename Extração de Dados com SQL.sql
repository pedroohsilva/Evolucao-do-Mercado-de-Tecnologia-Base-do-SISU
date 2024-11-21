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
