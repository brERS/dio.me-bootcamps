# Geração Tech Unimed-BH - Ciência de Dados

## **Python para Ciêntista de Dados**

<br/>

### :bookmark_tabs: **Análise de dados com Python e Pandas**
#
#### :page_facing_up: **Aula - introdução à biblioteca Pandass**
- Estrutura de dados

    - Os dois principais objetos da biblioteca Pandas são as Series e os DataFrames.

    - **Serie** é uma matriz unidimensional que contém uma sequência de valores que apresentam uma indexação (que podem ser numéricos inteiros ou rótulos),  muito parecida com uma única coluna no Excel.

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

### :bookmark_tabs: **Trabalhando com Listas em Python**
#

#### :page_facing_up: **Aula - Listas: Criação e acesso aos dados**

- Fatiamento
    - Lista
        ```
        lista = ["p","y","t","h","o","n"]

        lista[2:] # ["t","h","o","n"] retorna o conteúdo iniciando da posição 2

        lista[:2] # ["p","y"] retorna o conteúdo até posição anterior a 2

        lista[1:3] # ["y","t"] retorna o conteúdo da posição 1 até a anterior a 3

        lista[0:3:2] # ["p","t"] retonar o conteúdo da posição 0 até a anterior a 3 pulado de 2 em 2 

        lista[::] # ["p","y","t","h","o","n"] retorna todo o conteúdo

        lista[::-1] # ["n","o","h","t","y","p"] retorna todo conteúdo de forma espelhada
        ```

- Função enumerate
    - Está função retorna o indice de cada laço do for
        ```
        carros = ["gol", "celta", "palio"]
        
        for indice, carro in enumerate(carros):
            print(f"{indice}: {carro}")

        ```

- Compreensão de lista
    - Gera uma lista a partir de outra aplicando filtro
        ```
        numeros = [1, 30, 21, 2, 9, 65, 34]
        pares = []

        for numero in numeros:
            if numero % 2 == 0:
                pares.append(numero)
        ```
        OU
        ```
        numeros = [1, 30, 21, 2, 9, 65, 34]
        pares = [numero for numero in numeros if numero %2 ==0]

        ```


#### :page_facing_up: **Aula - Métodos da classe list**
- Métodos
    - append - Adiciona um valor a lista
        ```
        lista = [] 

        lista.append("Python")

        print(lista) # ["Python"]
        ```

    - clear - Limpa a lista
        ```
        lista = ["Python"] 

        lista.clear()

        print(lista) # []
        ```

    - copy - Copia a lista
        ```
        lista = ["Python"] 

        lista2 = lista.copy()
        ```

    - count - Conta a quantidade de vezes que há correspondencia
        ```
        lista = ["Python","list"] 

        print(lista.count("Python")) # 1

        ```

    - extend = Concatenar listas
        ```
        lista = ["Python","list"] 

        lista.extend = (["Python2","list2"] )

        print(lista) # ["Python","list","Python2","list2"]

        ```

    - index - retorna a posição da primeira ocorrencia correspondente
        ```
        lista = ["Python","list"] 

        print(lista.index("list")) # 1

        ```
        
    - pop - retirar ultimo elemento da lista 
        ```
        lista = ["Python","list"] 

        print(lista.pop()) # list 

        ```
        
    - remove - retirar a primeira ocorrencia de um elemento da lista 
        ```
        lista = ["Python","list"] 

        print(lista.remove("list")) # ["Python"]

        ```  

    - reverse - espelha a lista 
        ```
        lista = ["Python","list"] 

        print(lista.reverse("list")) # ["list","Python"]

        ```    
                              
    - sort - ordena a lista

        - Padrão

            ```
            lista = ["a","c","b"] 

            print(lista.sort()) # ["a","b","c"]

            ```   

        - reverse

            ```
            lista = ["a","c","b"] 

            print(lista.sort(reverse=True)) # ["c","b","a"]

            ```    

        - Pelo tamanho do elemento

            ```
            lista = ["a","bbb","cc"] 

            print(lista.sort(key=lambda x: len(x))) # ["a","cc","bbb"]

            ```                            

        - Pelo tamanho do elemento com reverse

            ```
            lista = ["a","bbb","cc"] 

            print(lista.sort(key=lambda x: len(x), reverse=True)) # ["bbb","cc","a"]

            ```               

### :bookmark_tabs: **Conhecendo Tuplas em Python**
#
#### :page_facing_up: **Aula - Tuplas**
- **Tuplas** são estruturas de dados muito parecidas com as lista, a principal diferença é que tuplas são imutáveis enquanto listas são mutáveis

- Fatiamento
    - É exatamente como em uma lista

- Métodos
    - Apenas o metodo count e index, uma vez que a tupla é imutável

### :bookmark_tabs: **Explorando Conjuntos em Python**
#
#### :page_facing_up: **Aula - Conjuntos set**

- Um set elimina os valores duplicados de uma lista
    - Exemplo
        ```
        print(set([1, 2, 3, 1, 3, 4])) # {1, 2, 3, 4}
        print(set("abacaxi")) # {"b", "a", "c", "x", "i"}
        ```

- Conjuntos não suporta indexação e nem fatiamento, caso necessário acessar os valores deve se converter o conjunto para lista.
    - Exemplo
        ```
        numeros = {1, 2, 3, 4}
        numeros = list(numeros)
        print(numeros[0])
        ```

- Métodos
    - union - Para unir dois set
        ```
        set_a = {1, 2}
        set_b = {3, 4}
        set_a.union(set_b) # {1, 2, 3, 4}
        ```

    - intersection - Para localizar a interseção entre set
        ```
        set_a = {1, 2, 3}
        set_b = {2, 3, 4}
        set_a.intersection(set_b) # {2, 3}
        ```

    - difference - Para localizar a diferença entre set
        ```
        set_a = {1, 2, 3}
        set_b = {2, 3, 4}
        set_a.difference(set_b) # {1}
        set_b.difference(set_a) # {4}
        ```
 
    - symmetric_difference - Para localizar a diferença entre set nos dois sentidos
        ```
        set_a = {1, 2, 3}
        set_b = {2, 3, 4}
        set_a.symmetric_difference(set_b) # {1, 4}
        ```       
 
    - issubset - Para validar se uma set esta contida em outra
        ```
        set_a = {1, 2, 3}
        set_b = {1, 2, 3, 4, 5, 6}
        set_a.issubset(set_b) # True
        set_b.issubset(set_a) # False
        ```   
 
    - issuperset - Para validar se um conjuto esta contemplando todo outro conjunto, basicamente retorna os valores boleanos de forma invertida ao issubset
        ```
        set_a = {1, 2, 3}
        set_b = {1, 2, 3, 4, 5, 6}
        set_a.issubset(set_b) # False
        set_b.issubset(set_a) # True
        ```   
 
    - isdisjoint - Para validar se tem interseção entre set
        ```
        set_a = {1, 2, 3}
        set_b = {4, 5, 6}
        set_c = {0, 1}
        set_a.issubset(set_b) # True
        set_a.issubset(set_c) # False
        ```           
         
    - add - Adiciona um elemento ao set, caso não exista
        ```
        set_a = {1, 2, 3}
        set_a.add(3) # {1, 2, 3}
        set_a.add(4) # {1, 2, 3, 4}
        ```   

    - clear - Limpa o set
        ```
        set_a = {1, 2, 3}
        set_a.clear() # {}
        ```     
        
    - copy - copia o set para outro
        ```
        set_a = {1, 2, 3}
        set_b = set_a.copy() 
        print(set_b) # {1, 2, 3}
        ```  
         
    - discard - Remove uma valor da set
        ```
        set_a = {1, 2, 3}
        set_a.discard(2) # {1, 3}
        ```     
          
    - pop - Remove sempre o primero valor
        ```
        set_a = {1, 2, 3}
        set_a.pop() # {2, 3}
        ```   
           
    - Remove - Igual ao discard, porém se o elemento não existir ele retorna error

### :bookmark_tabs: **Aprendendo a Utilizar Dicionários em Python **
#
#### :page_facing_up: **Aula - Dicionários: Criação e acesso aos dados**

- Um dicionário é um conjunto não-ordenado de pates chave:valor, onde as chaves são únicas em uma data instância do dicionário. Dicionários são delimitados por chaves: {}

- Formas de criação de um dicionario
    ```
    pessoa = {"nome": "Edgar", "idade": 29}

    pessoa = dict(nome="Edgar", idade=29)
    ```

- Alterado valores do dicionario
    ```
    pessoa = {"nome": "Edgar", "idade": 29}

    pessoa["nome"] = "Maria"
    pessoa["idade"] = 30 
    ```

- Métodos

    - Clear - Limpa o dicionário
        ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }

        contatos.clear() # {}
        ```

    - Copy - Tira uma copia
        ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }

        copia = contatos.copy() # {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        ```

    - fromkeys - Cria chave no dicionario sem valores ou valor padrão
        ```
        dict.fromkeys(["nome","telefone"]) # {"nome": None, "telefone": None}

        dict.fromkeys(["nome","telefone"], "Vazio") # {"nome": "Vazio", "telefone": "Vazio"}   
        ```
    
    - get - Acessar uma chave diretamente
        ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        contatos.get("edgar@gmail.com",{}) # {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        ```

    - items - Retorna uma lista de tuplas
       ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        contatos.items() # dict_items([('edgar@gmail.com', {'nome': 'Edgar', 'telefone': '3333-3333'})])
        ```

    - keys - Retorna as chaves
       ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        contatos.keys() # dict_keys(['edgar@gmail.com'])
        ```

    - pop - Remover uma chave
       ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        contatos.pop("edgar@gmail.com") # {"nome": "Edgar", "telefone": "3333-3333"}
        ```

    - popitem - Remover uma chave na sequencia
       ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        contatos.popitem() 
        ```

    - setdefault - Adiciona o valor default caso a chave não exista
       ```
        contatos = {
            "edgar@gmail.com": {"nome": "Edgar", "telefone": "3333-3333"},
        }
        contatos.setdefault('idade':29) 
        ```        
    
    - update - atualiza dicionario a partir de outro

    - values - retorna todos os valores de um dicionario



<br/>

### :bookmark_tabs: **Fundamentos de ETL (Extract, Transform, Load) com Python**
#
#### :page_facing_up: **Aula - Introdução para ETL**   
- ETL (Extração, Transformação, Carregamento) 

    - Extração
        - O processo de extração de dados consiste em se comunicar com outros sistemas ou bancos de dados para capturar os dados que serão inseridos no destino, seja um stanging area ou outro sistema.
        - Os dados podem ser de diversos tipos e formatos como:
            - Pasta de Trabalho
            - Banco de dados diversos
            - CSV
            - TXT
            - JSON
    
    - Tranformação
        - O processo de tranformação de dados é comporto por varias etapas como padronização, limpeza, qualidade... Dados vindos de sistemas diferentes tem padrões diferentes seja de nomenclatura ou mesmo de tipos de dados.
            - Calunas, linhas
            - Tipos de dados
            - Mesclar, Acrescentar
            - Listas, Tabelas

    - Carregar
        - O processo de load é a etapa final onde os dados são lidos das areas de staging e preparação de dados, carregados no data warehouse ou data mart final.
            - Para o modelo de dados

- Ferramentas de ETL
    - IBM information
    - Server (Data Stage)
    - Oracle Data Integrator (ODI)
    - Informatica Power Center
    - Microsoft integration Service (SSIS)


#### :page_facing_up: **Aula - Ferramentas aplicadas para ETL**
- ETL para BIG Data
    - SQOOP - Ferramenta para movimentar dados dentre bancos de dados relacionais e o ambiente hadoop.

        - HADDOP é uma plataforma de doftware em java de computação distribuída voltada para clusters e processamento de grandes volumes de dados, com atenção a tolerância a falhas.

    - HIVE - Ambiente de SQL sobre um cluster Hadoop

    - PIG - Ferramenta de Script para transformação e processamento de dados.

    - SPARK - Framework de processamento em memoria.

#### :page_facing_up: **Aula - Framework Luigi para ETL com Python**
- Luigi é um framework de execução criado pelo Spotify que cria pipelines de dados e Python. Ele lida com resolução de dependências, gerenciamento de fluxo de trabalho, visualização, tratamento de falhas, integração de linha de comando e muito mais.
    
    - **Target** em plavras simples, um alvo contém a saída de uma tarefa. um destino pode ser um local arquivo, mysql, etc.
    
    - Task

        - require() Estafunção membroda classe task contém todas as intâncias de tarefas que devem ser executadas antes da tarefa atual.

        - output() Este método contém o destino onde a saída da tarefa será armazenada. Isso pode conter um ou mais objetos de destino.

        -  run() Este método contém a lógica real para a executar uma tarefa.

### :bookmark_tabs: **Descomplicando a criação de pacotes de processamento de imagens em Python**
#
#### :page_facing_up: **Módulo vs Pacote**
- **Módulo**: objeto que serve como unidade organizacional do código que é carregado pelo comando de import. 

- **Pacote**: coleção de módulos com hierarquia.

#### :page_facing_up: **Conceitos Sobre pacotes**
- **Pypi**: repositório público oficial de pacotes
- **Wheel e Sdist**: dois tipos de distribuições
- **Setuptools**: pacote usado em setup.py para gerar as distribuições
- **Twine**: pacote usado para subir as distribuições no repositório Pypi

#### :page_facing_up: **Exemplos de estruturas**
- Pacote Simples
    ```
    project_name/
        README.py
        setup.py
        requirements.txt
        package_name/
            __init__.py
            file1_name.py
            file2_name.py
    ```

- Pacote Complexo
    ```
    project_name/
        README.py
        setup.py
        requirements.txt
        modulo1_name/
            __init__.py
            file1_name.py
            file2_name.py
        modulo2_name/
            __init__.py
            file1_name.py
            file2_name.py
    ``` 

- Arquivo requirements.txt
    - Usado para passar as dependências que devem ser instaladas com o seu pacote. Opcionalmente, podem ser especificadas as versões.

- Arquivo setup.py
    - Usado para especificar como o pacote deve ser construído.
    - Documentação: https://setuptools.readthedocs.io/en/latest/setuptools.html

- Arquivo README.md
    - Será exibido como documentação na página do Pypi do seu pacote. Foi usado markdown.

#### :page_facing_up: **Distribuições**
- Para subir o pacote, criar uma distribuição binária ou distribuição de código fonte. As versões mais recentes do pip instalam primeiramente a binária e usam a distribuição de código fonte, apenas se necessário. De qualquer forma, iremos criar ambas distribuições.

- Passos para gerar as distribuições
    
    - Pré requisito
        - python -m pip install --upgrade pip
        - python -m pip install --user twine
        - python -m pip install --user setuptools

    - Criar pacote
        - Acessar a raiz do projeto
        - Comandos de instalação
        - Comando para criar a distribuição
        - python setup.py sdist bdist_wheel

#### :page_facing_up: **Criando contas no Pypi**
    - https://pypi.org/account/register/
    - https://test.pypi.org/account/register/

- Comando para publicar no Test Pypi
    ```
    python -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
    ```

- Comando para instalar o pacote de teste
    ```
    pip install –-index-url https://test.pypi.org/simple/  NOME DO PACOTE
    ```

- Comando para publicar no Pypi
    ```
    python -m twine upload --repository-url https://upload.pypi.org/legacy/ dist/*
    ```

- Comando para instalar o pacote
    ```
    python -m pip install NOME DO PACOTE
    ```