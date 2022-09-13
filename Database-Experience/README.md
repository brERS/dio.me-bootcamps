# Database Experience

## **Módulo 1**
## **Banco de Dados SQL**

### **Contextualização do Cenário na Área de Banco de Dados**
- O que são banco de dados:
    - Uma coleção de palavras, que dentre elas há relacionamento entre dados, constituindo então um banco de dados, exemplo
        - Sala de arquivos de uma empresa.
        - Uma agenda de um consultorio.
        - Mysql, mongodb e etc.
- Siglas 
    - SGBD (Sistema de Gerenciamento de Banco de Dados).
    - DBMS (Data Base Management System).
    - LDD (Linguagem de Definição de Dados).
    - HPC (High Performance Computing).
    - NoSQL (Not Only SQL).
- DBs modelos
    - Modelo Relacional
        - Criador Edgar F. Codd 1970
        - Baseado na álgebra relacional.
    - Modelo Hierárquico
        - Estrutura de dados em árvore
    - Modelo em Rede
        - Estrutura em links - Ponteiro entre nós
- Escolhar de SGBDs SQL ou NOSQL
    - Popularidade
    - Tempo de mercado
    - Documentação
    - Robustez
    - Confiabilidade
    - Segurança
    - Multiplataforma
- Researching
    - Poder Computacional
        - Nº de tarefas computacionais.
        - Quantidade de dados.
        - Heterogeneidade.
        - Computação paralela e distribuída.
- Paradigmas
    - 1º Empírico
        - Baseado em tentativa e erro.
    - 2º Teórico
        - Baseado em teorema e axioma provando .teoricamente
    - 3º Computacional
        -  Baseado em simulações computacional.
    - 4º Big Data
        - Baseado na análise e exploração de dados.
- 4º Paradigma
    - Requisitos
        - **Composição** do problema.
        - **Execução** de uma determinada teoria.
        - **Análise** aplicação analítica .
        - **Abstração** criar ou localizar modelo a se trabalhar com os dados.
        - **Reprodutividade** permissivel a replicação e reprodução por outras pessoas.
        - **Reutilização** permissivel para reutilização em ambiente similares.
        - **Escalabilidade** possibilidade de usar em um volume maior de dados.
    - Experimento realizados em larga escala
        - **Paralelismo** Múltiplos processadores operando concorrentemente.
        - **Big Data** processamento paralelo de dados persistentes e particionados.
        - **Cloud** recursos de terceiros - Soluções de tecnologia como serviço Azure, AWS e etc.
- HPC
    - Nós de processamento.
    - Sistema de arquivos paralelos, sem persistência.
    - Modelos:
        - MPI
        - OpenMP
        - OpenCL
    - Acesso:
        - HFF5
        - NetCDF
- Big Data
    - Nós de processamento.
    - Sistema de arquivos paralelos, persistente.
    - Modelos:
        - MapReduce
        - Spark
        - SGDBs paralelos
- Diferença entre Big Data e HPC
    - Processamento paralelo persistente e não persistente e modelos associados a cada tipo.
- Novo cenário e novas tecnologias
    - Data Carrier
        - Engenheiro de dados
            - Desenho e construção.
            - Sustentação das soluções de dados.
            - Extração de dados de fontes heterogêneas.
            - Disponibilizar os dados a serem consumidos pelos analistas e cientistas.
        - Cientista de dados
            - Modelagem.
            - Reconhecimento de padrões e Predição.
            - Busca responder perguntas atreladas ao contexto do negócio.
            - Busca insights através de ténicas de modelagem.
        - Analista de dados
            - Criação de dashboards.
            - Apresentação visual dos dados.
            - Busca entender o comportamento do negócio a partir dos dados.
            - Realiza o diagnóstico, identifica possíveis motivos para comportamentos e verifica métricas.
    - Decisões - Data-driven
        - Abordagem
            - Análise
            - Interpretação
        - Áreas de Utilização
            - Gerenciamento
            - Marketing
            - **OBS:** Realiza a tomada de decisão após a análise e interpretação voltada ao consumidor.
    - Modelos NoSQL
        - Documentos
            - Exemplo MongoDB Orientado à Documentos
                - Baixa curva de aprendizado.
                - Baseado em JSON.
                - Escalabilidade horizontal.
                - Multi-plataforma.
                - Transações ACID para multi-documento.
                - Consultas: Suporta javascript
        - Wide-columns
            - Exemplo Cassandra Orientado à Colunas
                - Performático
                - Descentralizado
                - Consultas: CQL
        - Key-Value
            - Exemplo Redis Orientado à key-Value
                - Compatível com outras linguagens.
                - Performático.
                - Suporte: Strings, lists, maps, sets, JSON, Graphs...
        - Grafos
            - Exemplo Redis neo4j à Grafos
                - TAD: grafos
                - Cypoher: Query para grafos
                - Data science
                - Compatível: Python, NodeJS, GO, .NET, Java...
        - Orientado à Objetos
            - Exemplo db4Objects à Objetos
                - Corss-plataform
    - SGBDs na Cloud
        - Amazon RDS, Aurora e Redshift
        - DynamoDB
        - AzureDB
    - Mundo real -  exemplos de utilização
        - Facebook
            - MySQL
            - Cassandra
        - Netflix
            - MySQL
            - Oracle
        - Linkedin
            - Oracle
            - DB DB.io
        - Instagram
            - Cassandra
            - PostgreSQL
        - Twitter
            - MySQL

### **Explorando a Abordagem de SGBDs**

- Siglas
    - OLTP (Online Transaction Processing)
    - OLAP (Online Analytical Processing)
    - ELT (Extract, Load e Transform)
- Abordagem de DBs
    - **BDs** Manter em DB
        - Abstração
        - Auto-descrição
        - Isolamento
        - Compartilhamento
        - Múltiplas Visões
        - Transação multiuser        
    - **Tradicional** Manter em arquivos.
        - Complicações em redundância e esforço repetitivo.
- Auto-decrição: 1ª das principais característica de SGBD
    - DBs
        - Descrição da estrutura e constrains
        - DB schema
            - Relations
            - Columns
        - **OBS:** NoSQL possuí a descrição dentro do arquivo.
    - Tradicional
        - Programa da Aplicação
            - Estrutura de dados.
            - File processing.
        - **OBS:** Descrição esta dentro da aplicação.
- Isolamento de dados e programa: 2ª das principais característica de SGBD
    - DBs
        - Modificação ocorre no catálogo não impactando a aplicação. 
    - Tradicional
        - Modificação acarreta em reestruturação.
- Múltiplas Visões: 3ª das principais característica de SGBD
    - Table Views
        - Possibilita visualizar de forma segmentada ou sumarizada.
- Compartilhamento e Processamento de transações: 4ª das principais característica de SGBD
    - Concurrency Control
        - Reserva ou block de recurso não esteja mais em uso.
    - OLTP (Ambiente Operacional/DB)
        - Transações
            - App multiuser
            - Genreciador: Transações concorrentes.
        - Execução sem interferência
            - Isolamento
            - Atomicidade: Executa tudo ou retroceder para o estado inicial.
    - OLAP (Ambiente Informativo/Data Warehouse)
        - Análises de dados.
    - ELT Process
        - Data ming
        - Análise
        - Decisão
- Atores no cenário de DBs
    - DBs Simples
        - Uma ou poucas pessoas estão acessando as informações.
    - Big Organizations
        - Um staff ou setor estão acessando as informações.
    - Atores Perfils
        - **DB Designer** Modelagem
            - Identificar dados e requisitos.
            - Representação e estrutura.
            - Fase perliminar.
        - **DBA Staff** Administrador
            - Gerendia Recursos
            - Orquestração
            - Autorização de acesso
        - **Usuários Finais** Users
            - Acesso -> Querying
                - Update
                - reports
            - Categorizados
                - Casuais
                    - Acesso Ocasionais
                    - Diferentes Informações
                    - Uso de APIs
                - Ingênuos
                    - Considerável porção
                    - Canned Transactions (Engenheiro de software é o DEV)
                    - Error: raro
                - Sofisticados
                    - Análista, cientista, engenheiro... Tem conhecimento previo 
                - Standalone
                    - DB pessoal
- Workers - background
    - Fora do contexto de DB
        - 1º Designer do sistema de SGBD
            - Mantém o SGBD disponível para users
            - Implementação dos módulos e interfaces do SGBD como um sofware package
        - 2º Implementação do sistema de SGBD
            - O mesmo que o Designer do sistema de SGBD
        - 3º Pessoal de Operações e Manutenção
            - Responsável pelo ambiente de hardware e software para SGBD. 
            - Mantém o sistema operacional e hadware em funcionamento.
        - 4º Desenvolvimentores de ferramentas
            - Ferramentas opcionais para diversos fins, como:
                - Performance
                - Modelagem
                - Análise
- Vantagens da abordagem de SGBDs
    - Controle de Redundância
    - Restrição de acesso
    - Storage - prove persistência
    - Storage - prove estrutura
    - Backup e Recovery
    - Prover interface Multi-user
        - Mobile apps
        - Natural Language interface
        - Query language
        - Forms & command codes
        - Menu-driven
        - Programming lang. interface
    - Integridade de dados
        - Regras de Domínio
        - Asserções
        - Integridade Referencial
        - Gatilhos
        - Dependências Funcionais
    - Semântica
        - Regras de Negócio
            - Inferência
                - Usúario informa os dados
            - Regra Declarativa
                - Especifica a regra
            - Triggers
                - Inica uma ação a partir de uma ação executada anteriormente.
    - Ganhos com SGBD
        - Padronização
            - Tipos de dados
            - Display
            - Relatórios
        - Redução de tempo no desenvolvimento da aplicação
            - Features do app descontinuadas: retrieval
        - Flexibilidade
            - Requisitos
            - Desenvolver
            - Testar
            - Aprimorar
        - Disponibilidade de informação atualizadas
            - Update imediato
        - Economia com escalabilidade
            - Operacional & Gerenciamento
- Quando não utilizar SGBDs
    - Custo-benefício
        - Ponderar em
            - Investimento Inicial
            - Generelidade na definição e processamento
            - Segurança, controle de concorrência, recovery, funções de integridade
    - Custo de overhead
    - Situações
        - BD simples, que não tera mudança
        - Acesso unário
        - Embedded Systems
        
### **Overview sobre Modelagem de Dados**

- Siglas
    - UML (Linguagem Unificada de Modelagem)
#### **Aula - intrudoção à Modelagem de dados - Parte 1**
- O que é modelagem
    - **Modelagem** possui foco na descrição e relacionamento dos elementos que compõem a representação do contexto (mini-mundo).    
    - Contexto modelagem
        - Representação
        - Modelo
        - Referência
    - Abstração
        - **Conceitual** Alto nível
            - Representação que leigos possam intender.
        - **Físico** Baixo nível
            - Implementação do sistema. 
    - Processos da Modelagem
        - Mini-mundo
            - Delimitando o contexto dos dados
        - Alto nível
            - Requisitos para criação do modelo
        - Esquema
            - Definindo estrutura relacional
        - SGBD
            - Implementando/criando o DB
    - O que é esquema
        - Facilita a compreensão do contexto dos dados
        - Modelos de alto nível
            - Entidade-Relacionamento
            - UML 

#### **Aula - intrudoção à Modelagem de dados - Parte 2**
- Como inserir as info no BD
    - SQL Linguagem declarativa
        - Create
        - Alter
        - Drop
        - Select
        - Insert
        - Update
- Como acessar
    - Clientes GUI
    - Clientes terminal
#### **Explorando Comandos básicos SQL**
- Como acessar o MySQL (via Terminal)
    ```
    sudo mysql
    ```
- Comandos básicos
    - Listar BDs
        ```
        SHOW DATABASES:
        ```
    - Criar BD
        ```
        CREATE DATABASE "NOME DA BASE";
        ```
    - Remover BD
        ```
        DROP DATABASE "NOME DA BASE";
        ```
    - Acessando/Usando um BD
        ```
        USE "NOME DA BASE";
        ```
    - Criar tabela
        ```
        CREATE TABLE periodicos (
            id integer,
            nome varchar(120),
            issn integer,
            PRIMARY KEY (id) /*Chave Primaria*/
        )    
        ```
    - Listar tabelas
        ```
        SHOW TABLES;
        ```
    - Inserir dados
        ```
        INSERT INTO "NOME DA TABELA" ("CAMPOS","SEPARADOS","POR","VIRGULAS") VALUES ("VALORES","SEPARADOS","POR","VIRGULAS");
        ```
    - Consultar dados
        ```
        SELECT * FROM "NOME DA TABELA";
        ```
    


