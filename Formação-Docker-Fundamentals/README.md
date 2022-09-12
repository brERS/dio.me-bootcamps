# Formação Docker Fundamentals

## Módulo 1
### Introdução do Docker

- Microsserviços 
    - Microsserviços é uma abordagem arquitetônica e organizacional do desenvolvimento de software na qual o sfotware consite em pequenos serviços independentes que se comunicam usando APIs bem definidas.

- Container
    - Os contêineres são uma tecnologia usada pra reunir um aplicativo e todos os seus arquivos necessários em um ambiente de tempo de execução. Além disso, os containers oferecem mair flexibilidade para criar, implantar, copiar e migrar de ambiente.
    - Material de apoio;
        - https://www.ibm.com/br-pt/cloud/learn/containers
        - https://www.redhat.com/pt-br/topics/containers

- Docker
    - Com o Docker, é possível lidar com os containers como se fossem máquinas virtuais modulares e extremamente leves.
    - Material de apoio;
        - https://www.redhat.com/pt-br/topics/containers/what-is-docker
        - https://docs.microsoft.com/pt-br/dotnet/architecture/microservices/container-docker-introduction/docker-defined

- Diferença entre container e máquina virtual
    - Com a virtualização, é possível executar sistemas operacionais (Windows ou Linux) simultaneamente em umm único sistema de hardware.
    - Os containers compartilham o mesmo kernel do sistema operacional e isolam os processos da aplicação do restante do sistema.
    - Material de apoio;
        - https://www.redhat.com/pt-br/topics/containers/containers-vs-vms

- Instalação Docker
    - Instalação via script;
        - Baixar arquivo sh ```curl -fsSL https://get.docker.com -o get-docker.sh ```
        - Executar ```sudo sh get-docker.sh ```

- Comandos basicos
    - Iniciar um container
        - Execução padrão ``` $ docker run -dti  ubuntu ```
        - Especificar um nome ao container ```docker run -dti --name Ubuntu-A ubuntu ```
        - Especificar uma porta ```docker run  -dti --name Ubuntu-A ubuntu -p 80:80 ```        
        - Especifica uma network ```docker run -dit --name Ubuntu-B --network "NOME DA REDE" ubuntu ```
        - Especificarlimite de memoria e cpu
            - ```docker run --name "NOME DO CONTAINER" -dti -m 128M --cpus 0.2 "IMAGEM"```
    - Para um container
        - ```docker stop [id]```
    - Remover um container ou uma imagem
        - ```docker rm [id]```
        - ```docker rmi [imagem]```
    - Remover container que não estão em uso da lista
        - ```docker container prune```
    - Acessar terminal do container
        - ```docker exec -it [id ou nome]  /bin/bash```
    - Executar comandos sem acessar o terminal do container
        - Listar diretorios que existe no / ```docker exec Ubuntu-A mkdir ls -l /```
        - Criar diretorio destino no / ```docker exec Ubuntu-A mkdir /destino ```
    - Copiar arquivo local para o container
        -  ```docker cp arquivo.txt Ubuntu-A:/aula/ ```
    - Copiar aquivo do container para máquina local
        - ``` docker cp Ubuntu-A:/aula/ arquivo.txt  ```
    - Mount
        - Bind
            - Acesso total ```docker run -dti --mount type=bind,src=/opt/teste,dst=/teste ubuntu ```
            - Acesso leitura ```docker run -dti --mount type=bind,src=/opt/teste,dst=/teste,ro debian ``` 
        - Volumes ( Local padrão /var/lib/docker/volumes/ )
            - docker volume create teste
                - ```docker run -dti --mount type=volume,src=teste,dst=teste ubuntu```
            - Remover volume
                - ```docker volume rm teste```
            - Remover todos volumes que não estão em uso
                - ```docker volume prune```
    - Recursos do container (CPU, men disco e etc)
        - Listar recursos em uso. 
            - ```docker stats "NOME DO CONTAINER"```
        - Realizar update nos recursos com container rorando.
            - ```docker update "NOME DO CONTAINER" -m 128M --cpus 0.2 # executar com 128M de memoria e 2% do cpu```
    - Redes
        - Lista network ```docker network ls```       
        - Criar uma network ```docker network create minha-rede```
    - Informações a cerca do servidor e container
        - Informções do servidor e container```docker info```        
        - Lista de containers ```docker ps```
        - Obter logs de execução ```docker container logs "NOME DO CONTAINER"```
        - Lista processos em execução dos containers ```docker container top "NOME DO CONTAINER"```
    - Criar uma imagem 
        - Apos criar o dockerfile ```docker image build -t "NOME FINAL":1.0 . ```
    - Realizar upload de uma imagem HubDocker
        - Efetuar login no hub docker ```docker login```
        - Criar imagem ```docker build . -t nome-de-usuário/my-go=app:1.0```
        - Enviar imagem ```docker push nome-deu-usuário/my-go=app:1.0```
    - Instalando e realizando upload de uma imagem servidor proprio
        - Baixar imagem do servidor ```docker run -d -p 5000:5000 --restart=always --name registry registry:2```
        - Usar umagem existente ```docker image tag [id] localhost:5000/meu-apache:1.0```
        - Enviar imagem ```docker push  localhost:5000/my-go-app:1.0```
        - Validar repositorio local ```curl localhost:5000/v2/_catalog```
        - Observação
            - Caso o servidor local não esteja em https irá acusar um erro que pode ser tratado criando um arquivo json de configuração de exceção do docker, realizando os seguintes passos;
                - Crie o arquivo ```nano /etc/docker/daemon.json```
                - Conteúdo ```{ "insecure-registries":["10.0.0.189:5000"] }```
                - Reinicie o serviço do docker ```systemctl restart docker``` 
                - Execute novamente o push
            
    - Material de apoio;
        - https://docs.docker.com/engine/reference/commandline/docker/
        - https://stack.desenvolvedor.expert/appendix/docker/comandos.html
        - https://medium.com/xp-inc/principais-comandos-docker-f9b02e6944cd
        - https://dev.to/soutoigor/docker-imagens-containers-e-seus-principais-comandos-23p6
        - 

## Módulo 2
### Docker File e Docker Compose

- Instalação docker compose
    - ```apt-get install -y docker-compose```

- Verificar compatibilidade da versão compose file
    - https://docs.docker.com/compose/compose-file/compose-versioning/

- Criar arquivo compose
    - Criar diretório ```mkdir /compose```
    - Acessar diretório ```cd /compose```
    - Crie o arquivo ```vim docker-compose.yml```
    - Exemplo documento
        - https://github.com/brERS/dio.me-bootcamps/blob/main/Forma%C3%A7%C3%A3o-Docker-Fundamentals/Projeto-Criando-um-Container-de-uma-Aplica%C3%A7%C3%A3o-WEB/docker-compose.yml

- Comandos basicos
    - Iniciar container ```docker-compose up -d ```
    - Parar container ```docker-compose down ``` 

- Material de apoio;
    - O que é YAML e sintaxe
        - https://www.redhat.com/pt-br/topics/automation/what-is-yaml
    - Docker compose explicado
        - https://blog.4linux.com.br/docker-compose-explicado/
    - Exemplos github    
        - https://github.com/docker/awesome-compose
    - Como conteinerizar uma aplicação (Conceito)
        - https://aws.amazon.com/pt/blogs/aws-brasil/como-conteinerizar-uma-aplicacao-em-15-minutos/


## Módulo 3
### Trabalhando com Cluster e Docker Swarm

- Comandos básicos
    - Iniciar swarm ```docker swarm init```
    - Adicionar host ao node ```docker swarm join --token [token]```
    - Remover host do node ```docker swarm leave```
    - Listar nodes ```docker node ls```
    - Criar serviços ```docker service create --name web-server --replicas 15 -p 80:80 httpd ```
    - Remove serviço ```docker service rm web-server```
    - Listar serviços ```docker service ls```
    - Listar serviço especifico ```docker service ps web-server```
    - Remover serviço de um node ```docker node update --availability drain "NOME DO NODE"```
    - Permitir que node receba novos serviços ```docker ndoe update --availability active```

- Material de apoio;
    - Orquestração de container
        - https://www.redhat.com/pt-br/topics/containers/what-is-container-orchestration
    - O que é vagrant
        - https://blog.mandic.com.br/artigos/devops-conhecendo-vagrant/

- Comandos básicos vagrant
    - Iniciar ```vagrant up```
    