#!/bin/bash

echo "Criando usuários no sistema..."

# Cria o usuário "user1" com a senha "User1"
useradd user1 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt User123)
passwd User1 -e

# Cria o usuário "user2" com a senha "User2"
useradd user2 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt User123)
passwd User2 -e

# Cria o usuário "user3" com a senha "User3"
useradd user3 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt User123)
passwd User3 -e

# Cria o usuário "user4" com a senha "User4"
useradd user4 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt User123)
passwd User4 -e

echo "Finalizado!!"