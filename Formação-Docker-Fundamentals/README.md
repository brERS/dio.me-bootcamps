# Formação Docker Fundamentals

## Módulo 1

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
        - curl -fsSL https://get.docker.com -o get-docker.sh
        - sudo sh get-docker.sh

- Comandos basicos
    - Iniciar um container
        - docker run -dti  ubuntu  # Execução padrão
        - docker run -dti --name Ubuntu-A ubuntu # Especificar um nome ao container
        - docker run  -dti --name Ubuntu-A ubuntu -p 80:80 # Especificar uma porta 
    - Para um container
        - docker stop [id]
    - Remover um container ou uma imagem
        - docker rm [id]
        - docker rmi [imagem]
    - Remover container que não estão em uso da lista
        - docker container prune
    - Acessar terminal do container
        - docker exec -it [id ou nome]  /bin/bash
    - Executar comandos sem acessar o terminal do container
        - docker exec Ubuntu-A mkdir ls -l / # Listar diretorios que existe no /
        - docker exec Ubuntu-A mkdir /destino # Criar diretorio destino no /
    - Copiar arquivo local para o container
        - docker cp arquivo.txt Ubuntu-A:/aula/
    - Copiar aquivo do container para máquina local
        - docker cp Ubuntu-A:/aula/ arquivo.txt 
    - Mount
        - Bind
            - docker run -dti --mount type=bind,src=/opt/teste,dst=/teste ubuntu # Acesso total
            - docker run -dti --mount type=bind,src=/opt/teste,dst=/teste,ro debian # Acesso leitura
        - Volumes ( Local padrão /var/lib/docker/volumes/ )
            - docker volume create teste
                - docker run -dti --mount type=volume,src=teste,dst=teste ubuntu
            - Remover volume
                - docker volume rm teste
            - Remover todos volumes que não estão em uso
                - docker volume prune
    - Recursos do container (CPU, men disco e etc)
        - Listar recursos em uso. 
            - docker stats "NOME DO CONTAINER"
        - Realizar update nos recursos com container rorando.
            - docker update "NOME DO CONTAINER" -m 128M --cpus 0.2 # executar com 128M de memoria e 2% do cpu
        - Iniciar container com limite de memoria e cpu
            - docker run --name "NOME DO CONTAINER" -dti -m 128M --cpus 0.2 "IMAGEM"
            


    - Material de apoio;
        - https://stack.desenvolvedor.expert/appendix/docker/comandos.html


