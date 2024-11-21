# Importando bibliotecas necessárias
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Carregando o arquivo CSV gerado pela query SQL
df = pd.read_csv('outputs/total_inscritos_cursos_tecnologia.csv')

# Criando o gráfico de barras agrupadas
plt.figure(figsize=(12, 6))
sns.barplot(data=df, x='ano', y='total_inscritos', hue='curso', palette='Set2')

# Personalizando o gráfico
plt.title('Comparação de Inscritos por Curso e Ano', fontsize=16)
plt.xlabel('Ano', fontsize=12)
plt.ylabel('Total de Inscritos', fontsize=12)
plt.legend(title='Curso', fontsize=10)
plt.xticks(rotation=45)

# Exibindo o gráfico
plt.tight_layout()
plt.show()
