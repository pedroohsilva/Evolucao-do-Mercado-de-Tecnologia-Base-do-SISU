# Importando bibliotecas necessárias
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Carregando o arquivo CSV gerado pela query SQL
df = pd.read_csv('outputs/total_inscritos_cursos_tecnologia.csv')

# Criando o gráfico de linhas
plt.figure(figsize=(12, 6))
sns.lineplot(data=df, x='ano', y='total_inscritos', hue='curso', marker='o', palette='Set2')

# Personalizando o gráfico
plt.title('Tendência de Inscritos por Curso ao Longo dos Anos', fontsize=16)
plt.xlabel('Ano', fontsize=12)
plt.ylabel('Total de Inscritos', fontsize=12)
plt.legend(title='Curso', fontsize=10)

# Adicionando rótulos de dados no gráfico de linha
for curso in df['curso'].unique():
    subset = df[df['curso'] == curso]
    for x, y in zip(subset['ano'], subset['total_inscritos']):
        plt.text(x, y, f'{y}', ha='center', fontsize=10)

# Exibindo o gráfico
plt.tight_layout()
plt.show()
