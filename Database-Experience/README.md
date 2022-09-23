# Database Experience

## **Módulo 1**
## **Banco de Dados SQL**

### :bookmark_tabs: **Contextualização do Cenário na Área de Banco de Dados**
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

### :bookmark_tabs: **Explorando a Abordagem de SGBDs**
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
        
### :bookmark_tabs: **Overview sobre Modelagem de Dados**
- Siglas
    - UML (Linguagem Unificada de Modelagem)
#### :page_facing_up: **Aula - intrudoção à Modelagem de dados - Parte 1**
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
#### :page_facing_up: **Aula - intrudoção à Modelagem de dados - Parte 2**
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
#### :page_facing_up: **Aula - Explorando Comandos básicos SQL**
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
        INSERT INTO "NOME DA TABELA" (CAMPOS,SEPARADOS,POR,VIRGULAS) VALUES ("VALORES","SEPARADOS","POR","VIRGULAS","ENTRE","ASPAS");
        ```
    - Consultar dados
        ```
        SELECT * FROM "NOME DA TABELA SEM ASPAS";
        ```

### :bookmark_tabs: **Arquitetura de Banco de Dados**
- Siglas  
    - DDL (Data Definition Language)
    - SDL (Linguagem de Definição de Armazenamento)
    - VDL (Linguagem de Definição de Visões)
    - DCL (Linguagem de Controle de Dados) 
    - TCL (Linguagem de Controle de Transações) 
#### :page_facing_up: **Aula - Arquitetura de BD: Modelos** 
- Modelo
    - Abstração
        - Data model
            - Operações
            - Classificação
                - Estrutura
                    - Modelo de Dados auto-descritivos
                        - Modelo de Dados Conceitual  
                            - Representação de auto nível incluindo quais são os requisitos do sistema
                        - Modelo de Dados Físico  
                            - Especificando requesito dos sistemas
                        - Modelo de dados relacional
                            - Representa um esquema relacional                    
                    - Modelo de Dados Conceitual (Visão  de alto nível)
                        - Entidade
                        - Atributos
                        - Relacionamento
                        - Modelo Entidade-Relacionamento
                        - Generalização
                        - Especialização
                    - Modelo de Dados Físico  (Especialista)
                        - Índices
                        - Hashes
                    - Modelo de Dados de implementação (Representacional)
                        - Modelo de dados relacional
                            - Constrains
                            - Linguagens
                            - Operações
#### :page_facing_up: **Aula - Arquitetura de BD: Esquema, Instâncias e Estados de um BDs**
- Esquema
    - Descrição do banco de dados
        - Diagramas
            - Construct
    - Snapshot
        - Mudança de estado
            - INSERT
            - DELETE
            - UPDATE
    - Descrição & Dados
        - Estado Inicial
        - Estado Válido
    - Meta dados
        - Descrição esquema
        - Construtores
        - Constrains
#### :page_facing_up: **Aula - Three-Schema Architecture**    
- Three-Schema
    - Arquitetura
        - External Level
        - Conceptual Level
        - Internal Level
#### :page_facing_up: **Aula - Linguagens para SGBD**       
- Linguagens
    - DDL
    - SDL
    - VDL
    - DCL
    - DML
#### :page_facing_up: **Aula - Interfaces de SGBDs**      
- Interface
    - Web Clients
        - Baseado em lista (Requisições e estrutura)
    - App Mobile
        - Acesso à dados (Bancos, reservas)
    - Forms
        - Interface para novos dados (Preenchimento total ou parcial)
    - GUI
        - Diagrama (Query -> Manipulando o diagrama)
    - NLI
        - Interpreta a linguage natural (Busca pela palavra reservada e conteúdo)
    - Pesquisa Keyword
        - Macth (Palavra/Doc)
    - Speech input/output
        - Contexto limitado (Requisição e retorno em linguage natural exemplo)
    - Interfaces
        - Naive (Operações repetitivas)
        - DBA (Comandos com nível de privilégio)
#### :page_facing_up: **Aula - Ambientes e utilities de SGBD**
- Ambientes
    - Componentes
        - Software
        - Modularizado
        - Gerenciamento
            - Monitoramento
            - Reorganização do storage
            - Backup
            - Loading
#### :page_facing_up: **Aula - Arquitetura Modelo Cliente-Servidor**     
- Arquiteturas
    - Física Centralizada
    - Física Cliente Servidor    
        - Three-tier
            - Client
            - WebServer ou Aplicação Server
            - Database Server
#### :page_facing_up: **Aula - Classificação de SGBDs**   
- Classificação
    - Parâmetros 
        - Modelo de dados
        - Nº de usuários
        - Nº de sites
        - Custo
        - Tipo de caminho de acesso
    - Relacional
        - Coleções de tabela
            - Tabela -> File
        - Alto Nível
            - View -> User

### :bookmark_tabs: **Fundamentos de Modelagem e Projeto de Banco de Dados**
- Siglas  
    - NoSQL (Not Only SQL).
    - OLTP (Online Transaction Processing)
    - OLAP (Online Analytical Processing)
#### :page_facing_up: **Aula - Mundo Fechado e mini-mundo** 
- CWA
    - Preposição
        - Logica de predicados
- Mundo Fechado
    - Return False se não estiver contemplado no modelo
- Mini-Mundo
    - É um pedaço de um mundo onde quero modelar
#### :page_facing_up: **Aula - Álgebra Relacional**
- Lógica do Predicados
    - **Predicado** é a parte da oração que contém o verbo e que tras informações sobre o sujeito.
        - Critério: Having, Where
    - Conjunto de Operações
        - Op. de conjuntos
        - Op. de BD relacional
    - Conjunto de Funções
        - MAX, AVG, ANY, COUNT, SUM, MIN
#### :page_facing_up: **Aula - Álgebra Relacional e Projeto de Bando de dados**
- Consultas Complexas
    - Tradeoff
        -  Barganha entre consistência e disponibilidade.
    - Processo
        - Projeto Conceitual
            - Definição de requisitos do sistema
        - Projeto Lógico
            - Modelagem de diagrama
        - Projeto Físico
            - Definição de tipo de SGBD
                - Relacional
                - NoSql
                - OLTP
                - OLAP
        - Validação
            - Definição de requisitos
                - Disponibilidade
                - Segurança
                - indixes
        - Produção
            - Efetivamente colocar o SGDBs em Produção
        - Manutenção
            - Aprimoração 
#### :page_facing_up: **Aula - Falando sobre Modelagem**
- Processo
    - Planejar
        - Identificar seus problemas
    - Fazer
        - Testar possíveis soluções
    - Checar
        - Estudar resultados
    - Agir
        - Implementar a melhor solução
#### :page_facing_up: **Aula - Projeto: Como "nasce" um Banco de Dados?**    
- O que eu quero representar ?
    - Entender o contexto e requesitos
    - Perfil
- Processo evolutivo ou gradual
    - Implementação
    - Arquitetura
    - Modelo
    - Funcionalidades
#### :page_facing_up: **Aula - Design de BDs - Projeto Conceitual**    
- Projeto Conceitual
    - Como Criar o modelo ?
        - Linguagens de modelagem de dados (Representação)
            - Graficas
            - Textuais
    - 1º Passo
        - Coleta de Dados
        - Análise
#### :page_facing_up: **Aula - Projeto conceitual: Entendendo o passo a passo**
- Projeto Conceitual (Continuação Aula anterior)
    - Esquema Conceitual
        - Modelo Entidade Relacionamento
        - UML - Diagrama de Classes
    - Requisições funcionais da aplicação
        - Modelo de Alto Nível
            - Requisitos
                - Funcionais
                    - O que executar?
                    - Quais processos?
                - Não Funcionais
                    - Segurança 
                    - Desempenho
            - **OBS:** Alto Nível Não tem a informação de como vai ser armazenada
    - Fluxo da informação
        - Dados e Requisitos
            - Coleta Análise
        - Esquema conceitual
            - Design Conceitual
#### :page_facing_up: **Aula - Implementação: Projeto Lógico e Físico**
- Esquema Lógico
    - Mapeamento
        - Especificando
    - Pontos de atenção
        - Entidades
            - Qual tipo de entidade?
        - Relacionamentos
            - Binário, n-ário?
                - Cardinalidade [1:1,1:n,n:1,n:n]
            - Atributos
                - Multivalorados ?

### :bookmark_tabs: **Modelo de Entidade Relacionamento com Banco de Dados**
#### :page_facing_up: **Aula - Modelo ER: Tipos de Entidades, Chaves e Atributos**
- Diagrama ER
    - Foco no Esquema
        - Raras Modificações
        - Facilidade de Manipular
        - Esquema ER do banco de dados
- Entidades
    - Objetos
        - Componentes básico
        - Existencia independente
        - Atributos
- Atributos
    - Propriedades
        - características/Descrição das entidades
        - Atributos relacionados as instâncias
#### :page_facing_up: **Aula - Tipos de Atributos dento do Modelo ER**
- Atributos
    - Atômicos/Compostos
        - Estrutura
    - Simples/Multivalorados
        - Valores
    - stored/Deviravos
        - Exemplo: Data de nascimento/Stored - > Idade/Derivado
    - Nulos
        - Grau (Opcional)
    - Complexos
        - Composto exemplo Endereço completo
#### :page_facing_up: **Aula - O que é a Entidade Fraca no modelo ER?**
- Entidade Fraca
    - Chave não obrigatória
    - Depêndencia
    - Exclusão cascata





### :bookmark_tabs: **Introdução ao MongoDB e Bancos de Dados NoSQL**
#### :page_facing_up: **Aula - Introdução**
- Tipos de bancos de dados NoSQL
    - Grafos (Neo4j)
        - Comum em detecção de fraudes, mecanismos de recomendação, redes sociais, sistemas de arquivos, games...
        - Comandos
            - Criar Grafo:
                ```
                CREATE (:"NOME_LABEL")
                ```
            - Inserir:
                ```
                CREATE (:"NOME_LABEL" { name: "Edgar", age: 29, hobbies: ['Jogar, series'] } )
                ```    
            - Consultar:
                ``` 
                MATCH (Edgar) RETURN Edgar
                ```
            - Atualizar:
                ```
                MATCH (Edgar:"NOME_LABEL" { name: "Edgar"} ) SET Edgar.hobbies=['Futebol'];
                ```
            - Remover:
                ```
                MATCH (Edgar:"NOME_LABEL" { name: "Edgar"} ) DELETE Edgar;
                ```
    - Column (Cassandra)
        - Comum para registro de transações
        - Comandos
            - Criar:
                ```
                CREATE KEYSPACE "NOME_KEYSPACE" WITH replication = {'class':'SimpleStrategy', 'replication_factor':'}; 
                ```
            - Usar KEYSPACE:
                ```
                Use "NOME_KEYSPACE";
                ```
            - Criar COLUMNFAMILY:
                ```
                CREATE COLUMNFAMILY "NOME_COLUMNFAMILY" (name TEXT PRIMARY KEY, age int);
                ```
            - Alterar COLUMNFAMILY:
                ```
                ALTER COLUMNFAMILY "NOME_COLUMNFAMILY" ADD hobby TEXT;
                ```
            - Inserir:
                ```
                INSERT INTO "NOME_COLUMNFAMILY" (name, age) VALUES('Edgar','29');
                OR
                INSERT INTO "NOME_COLUMNFAMILY" JSON '{"name":"Edgar","age":29 }';
                ```
            - Consultar;
                ```
                SELECT * FROM "NOME_COLUMNFAMILY";
                OR                
                SELECT JSON * FROM "NOME_COLUMNFAMILY";
                ```
            - Atualizar:
                ```
                UPDATE "NOME_COLUMNFAMILY" SET age=30 WHERE name='Edgar';
                ```
            - Remover:
                ```
                DELETE FROM  "NOME_COLUMNFAMILY" WHERE name='Edgar';
                ```
    - Key-Value (Redis)
        - Comum cache, messageria e fila
        - Comandos
            - Inserir:
                ```
                SET user1:name "Edgar"
                OR
                SET user '{"name":"Edgar","age":29 }';
                OR
                SET user2:name "Edgar" EX 10 # Expira em 10sec
                ```
            - Inserir lista:
                ```
                LPUSH user1:name "Edgar"
                ```
            - Consultar:
                ```
                GET user1:name
                ```
            - Consultara lista:
                ```
                LRANGE user1:name 0 0
                ```
            - Validar existência:
                ```
                EXISTS user1:name
                ```
            - Descobrir type dos KEYS-VALUE:
                ```
                TYPE user1:name
                ```
            - Descobrir tempo de expiração:
                ```
                TTL user1:name # retorna sec
                OR
                PTTL user1:name # Retorna ms
                ```
            - Remover tempo de expiração:
                ```
                PERSIST user1:name 
                ```
            - Remover dados:
                ```
                DEL user1:name  
                ```
    - Documento (Mongodb)
        - Conteúdo seguinte do documento
#### :page_facing_up: **Aula - Schema Design**
- IDE: Robo 3T
- Schema Design
    - Embedding:
        - Pros:
            - Consulta informações em uma única query
            - Atualiza o registro em uma única operação
        - Contras:
            - Limite de 16MB por documento
    - Referência:
        - Pros:
            - Documentos pequenos
            - Não duplica informações
            - **OBS:** Usado quando os dados não são acessados em todas as consulta
        - Contras:
            - Duas ou mais queries ou utilização do $lookup            
#### :page_facing_up: **Aula - Boas práticas**                    
- Boas Práticas
    - Evite documentos muitos grandes
    - Use nome campos objetivos e curtos
    - Analise as suas queries utilizando explain()
    - Atualize apenas os campos alterados
    - Evite negações em queries
    - Listas/Arrays dentro dos documentos não podem crescer sem limite
#### :page_facing_up: **Aula - Operações de manipulação de dados** 
- Comandos
    - Listar bases:
        ```
        show databases;
        ```
    - Criar base:
        ```
        use "NOME_NOVA_BASE" # OBS: Caso já exista ele vai apenas utilizar
        ```
    - Criar collection:
        ```
        db.createCollection("NOME_COLLECTION", {copped: true, max: 2, size:2}); # Explicita
        
        db."NOME_COLLECTION".insertOne({"nome": "Edgar"}) # Implícita
        ```
    - Inserir:
        ```
        db."NOME_COLLECTION".insert({"nome": "Edgar"});
        ```
    - Consultar:
        ```
        db."NOME_COLLECTION".find({}); # Lista todo documento

        db."NOME_COLLECTION".find({"name":"Edgar"}); # Filtra por nome

        db."NOME_COLLECTION".find({}).limit(1); # Lista apenas a primeira ocorrência

        db."NOME_COLLECTION".find({"name": {$in: ["Edgar","Silva"]}}); # Filtra múltiplas ocorrências

        db."NOME_COLLECTION".find({$or: [{"name","Edgar"},{"age":41}]}); # Filtra múltiplas ocorrências em campos diferentes

        db."NOME_COLLECTION".find({"age": {$lt: 55}}); # Filtra menor que

        db."NOME_COLLECTION".find({"age": {$lte: 55}}); # Filtra menor ou igual que
        ```
    - Atualizar:
        ```
        db."NOME_COLLECTION".save({"_id" : ObjectiId("608734ascd98234r") , "name":"Edgar Reis"}); # Atualiza o documento por completo

        db."NOME_COLLECTION".update({"name":"Edgar Reis"},{$set :{"name": "Edgar"}}); # Atualiza somente o valor do match

        db."NOME_COLLECTION".updateMany({"name":"Edgar Reis"},{$set :{"name": "Edgar"}}); # Atualiza em massa o que der match
        ```
    - Remover:
        ```
        db."NOME_COLLECTION".deleteOne({"name": "Edgar"}) # Deleta somente a primeira ocorrência 

        db."NOME_COLLECTION".deleteMany({"name": "Edgar"}) # Deleta em massa a ocorrência 
        ```
#### :page_facing_up: **Aula - Agregações**
- Agregações
    - É o procedimento de processar dados em uma ou mais etapas, onde o resultado de cada etapa é utilizado na etapa seguinte, de modo a retornar um resultado combinado.
- Tipos de agregações
    - **Proposito único**, não é possível aplicar customizações/filtros
        - Count
        - Distinct
    - **Pipeline**, permitem as customizações das agregações 
        - Groupy
        - AddFields
    - Funções
        - $sum
        - $avg
        - $max
        - $min
    - Operadores Lógicos
        - $and
        - $or
        - $not
        - $nor
