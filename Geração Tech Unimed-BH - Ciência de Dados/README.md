# Geração Tech Unimed-BH - Ciência de Dados

## **Python para Ciêntista de Dados**

### :bookmark_tabs: **Análise de dados com Python e Pandas**

#### :page_facing_up: **Aula - introdução à biblioteca Pandass**
- Estrutura de dados

    - Os dois principais objetos da biblioteca Pandas são as Series e os DataFrames.

    - **Serie** é uma matriz unidimensional que contém uma sequência de valores que apresentam uma indexação (que podem ser numéricos inteiros ou rótulos), muito parecida com uma única coluna no Excel.

    - **DataFrame** é uma estrutura de dados tabular, semelhante a planilha de dados do Excel, em que tanto as linhas quanto as colunas apresentam rótulos.

- Comandos
    
    - Ler Arquivo
    ```
    import pandas as pd
    df = pd.read_csv('DIRETORIO_E_ARQUIVO', error_bad_lines=False, sep=";")

    # Parametros
    # error_bad_lines=False é para que seja ignorado linhas problematicas.
    # sep=";" é o indicativo do separador do arquivo csv
    ```

    - Renomear colunas
    ```
    df.rename(columns={"nome_antigo_coluna_um":"nome_novo_coluna_um"})
    ```

    - Mostrar 10 primeiras linhas
    ```
    df.head(10) 
    ```

    - Mostrar 10 ultimas linhas
    ```
    df.tail(10)
    ```

    - Total linha e colunas
    ```
    df.shape
    ```

    - Apenas nome das colunas
    ```
    df.columns
    ```

    - Tipo de dados por colunas
    ```
    df.dtypes
    ```

    - Mostrar informações estatisticas
    ```
    df.describe()
    ```

    - Mostrar valores unicos de uma coluna
    ```
    df["NOME_COLUNA"].unique()
    ```

    - Filtrar os dados
    ```
    oceania = df.loc[df["continente"]] == "oceania" ]
    ```

    - Agrupar dados
    ```
    df.groupby("continente")["Pais"].nunique()
    ```

    - Mostrar media
    ```
    df["Expectativa de vida"].mean()
    ```

    - Mostrar soma
    ```
    df["Expectativa de vida"].sum()
    ```

    - Mostrar maximo
    ```
    df["Expectativa de vida"].max()
    ```

    - Mostrar minimo
    ```
    df["Expectativa de vida"].min()
    ```

    - Mostrar Maiores
    ```
    df.nlargest(3, "Expectativa de vida")
    ```

    - Mostrar Menores
    ```
    df.nsmallest(3, "Expectativa de vida")
    ```

    - Concatenar
    ```
    df1 = pd.read_excel('file1.xlsx')
    df2 = pd.read_excel('file2.xlsx')
    df3 = pd.read_excel('file3.xlsx')
    pd.concat([df1,df2,df3])
    ```

    - Amostra de dados
    ```
    df.sample(10)
    ```

    - Alterar tipo de dados de uma coluna
    ```
    df['NOME_COLUNA'] =  df['NOME_COLUNA'].astype("TIPO_DESEJADO")
    ```

    - Verificar se existe valores nulos
    ```
    df.isnull().sum()
    ```

    - Substituir valores nulos pela media
    ```
    df['NOME_DA_COLUNA'].fillna(df['NOME_DA_COLUNA'].mean(), inplace=True)
    ```

    - Substituir valores nulos por zero
    ```
    df['NOME_DA_COLUNA'].fillna(0, inplace=True)
    ```

    - Remove linhas com valor nulo
    ```
    df.dropna(how='all', inplace=True)
    ```

    - Criar nova coluna e colocando a multiplicação do valor da coluna um com a coluna dois
    ```
    df['NOME_NOVA_COLUNA'] = df['COLUNA_UM'].mul(df['COLUNA DOIS'])
    ```

    - Criar nova coluna e colocando a divisão do valor da coluna um com a coluna dois
    ```
    df['NOME_NOVA_COLUNA'] = df['COLUNA_UM'] / df['COLUNA DOIS']
    ```

    - Ordenar o dados 
    ```
    df.sort_values('NOME_COLUNA', ascending=False)
    ```

    - Mudar tipo da coluna int para datetime
    ```
    df['data'] = pd.to_datetime(df['data'])
    ```

    - Agrupar por ano
    ```
    df.groupby(df['Data].dt.year)['Receita].sum()
    ```

    - Criar uma coluna com o ano da coluna data
    ```
    df['ANO'] = df['Data'].dt.year
    ```

    - Criar uma coluna com o mes da coluna data
    ```
    df['MES'] = df['Data'].dt.month
    ```
    
    - Criar uma coluna com o dia da coluna data
    ```
    df['DIA'] = df['Data'].dt.day
    ```
    
    - Criar uma coluna com o trimestre da coluna data
    ```
    df['Trimestre'] = df['Data'].dt.quarter
    ```

    - Calculando a diferença de dias
    ```
    df['Diferença_dia'] = df['Data'] - df['Data']
    ```

    - Filtrar por data
    ```
    data_filtro = df.loc[(df['Data'].dt.year == 2019) & (df['Data'].dt.month == 3)]
    ```

    - 


