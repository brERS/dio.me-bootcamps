#!/bin/bash

echo "Criando diretórios..."

# Cria o diretório "public"
mkdir /public
# Cria o diretório "admin"
mkdir /admin
# Cria o diretório "ven"
mkdir /ven
# Cria o diretório "sec"
mkdir /sec

echo "Criando grupos de usuários..."

# Cria o grupo "GRP_ADMIN"
groupadd GRP_ADMIN
# Cria o grupo "GRP_VEN"
groupadd GRP_VEN
# Cria o grupo "GRP_SEC"
groupadd GRP_SEC

echo "Criando usuários..."

# Cria o usuário "gloria" e adiciona ao grupo "GRP_ADMIN"
useradd gloria -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_ADMIN
# Cria o usuário "mitiu" e adiciona ao grupo "GRP_ADMIN"
useradd mitiu -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_ADMIN
# Cria o usuário "clear" e adiciona ao grupo "GRP_ADMIN"
useradd clear -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_ADMIN

# Cria o usuário "fil" e adiciona ao grupo "GRP_VEN"
useradd fil -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_VEN
# Cria o usuário "alice" e adiciona ao grupo "GRP_VEN"
useradd alice -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_VEN
# Cria o usuário "robert" e adiciona ao grupo "GRP_VEN"
useradd robert -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_VEN

# Cria o usuário "joseph" e adiciona ao grupo "GRP_SEC"
useradd joseph -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_SEC
# Cria o usuário "monica" e adiciona ao grupo "GRP_SEC"
useradd monica -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_SEC
# Cria o usuário "roger" e adiciona ao grupo "GRP_SEC"
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt User123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

# Permissões para o diretório "admin"
chown root:GRP_ADMIN /admin
# Permissões para o diretório "ven"
chown root:GRP_VEN /ven
# Permissões para o diretório "sec"
chown root:GRP_SEC /sec


chmod 770 /admin
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Fim....."