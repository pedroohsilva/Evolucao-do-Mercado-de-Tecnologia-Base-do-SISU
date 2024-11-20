# Importando bibliotecas necessárias
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Carregando o conjunto de dados
df = pd.read_csv('outputs/total_inscritos_engenharia_da_computação.csv')

# Gerando gráfico de barras
plt.figure(figsize=(10, 6))  # Ajustando o tamanho do gráfico
ax = sns.barplot(data=df, x='ano', y='total_inscritos', hue='curso', palette='viridis', color='blue')
plt.title('Total de Inscrições por Curso e Ano', fontsize=14)
plt.xlabel('Ano', fontsize=12)
plt.ylabel('Total de Inscritos', fontsize=12)

# Adicionando rótulos de dados
for container in ax.containers:
    ax.bar_label(container, fmt='%.0f', label_type='edge', fontsize=10)

# Exibindo o gráfico
plt.tight_layout()  # Ajusta o layout para evitar sobreposição
plt.show()
