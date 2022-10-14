import pandas as pd

# Lendo base de dados
df = pd.read_excel('dados.xlsx', sheet_name='base')
df.head()


# Renomeando colunas
df.rename(columns={'velocidade_download': 'Download',
          'velocidade_upload': 'Upload'}, inplace=True)
df.head()


# Criando coluna com data
df['Data'] = df['Datetime'].dt.date
df.head()


# Criando coluna com data
df['Time'] = df['Datetime'].dt.time
df.head()


# removendo coluna datetime
df = df.drop(columns=['Datetime'])
df.head()


# Mexima de velocidade de download
df["Download"].max()


# Media de velocidade de download
df["Download"].mean()


# Minima de velocidade de download
df["Download"].min()


# Maxima de velocidade de upload
df["Upload"].max()


# Media de velocidade de upload
df["Upload"].mean()


# minima de velocidade de upload
df["Upload"].min()


# Somando velocidade de download
df["Download"].sum()


# Somando velocidade de upload
df["Upload"].sum()


# Somando velocidade de download por dia
df.groupby(df['Data'])['Download'].sum()


# Somando velocidade de download por dia
df.groupby(df['Data'])['Download'].sum().plot(
    kind='bar', title='Somando velocidade de download por dia')


# Somando velocidade de upload por dia
df.groupby(df['Data'])['Upload'].sum()


# Somando velocidade de upload por dia
df.groupby(df['Data'])['Upload'].sum().plot(
    kind='barh', title='Somando velocidade de upload por dia')


# Maiores velocidades de download
df.nlargest(3, "Download")


# Maiores velocidades de upload
df.nlargest(3, "Upload")


# Velocidade de Download acima da média
data_filtro = df.loc[(df['Download'] > df['Download'].mean())]
data_filtro['Download'].plot(
    kind='line', title='Velocidade de Download acima da média')
