#!/bin/bash
#Autor: git alvino-oliveira
#Version: 0.1
#Script para criar diretórios, usuários, grupos, e por fim a configuração das permissoes de usuários nos respectivos diretórios.
#
echo "Criando os diretorios ... "
mkdir -p /dados/publico
mkdir -p /dados/adm
mkdir -p /dados/ven
mkdir -p /dados/sec
echo "Diretorios criados com sucesso "
echo "Criando grupos ... "
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados com sucesso!"
echo "Criando os usuários e setando o grupo GRP_ADM ... "
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "Joao Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
echo "Usuários criados e grupo GRP_ADM setado com sucesso!"
echo "Criando os usuarios e setando o grupo GRP_VEN ... "
useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
echo "Usuário criados e grupo GRP_VEN setado com sucesso!"
echo "Criando os usuarios e setando o grupo GRP_SEC ... "
useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
echo "Usuário criados e grupo GRP_SEC setado com sucesso!"
echo "Definindo as permissões de acesso nos diretório ... "
echo "Definindo o root como dono e definindo os grupo nos diretorios ... "
chown root:GRP_ADM /dados/adm
chown root:GRP_VEN /dados/ven
chown root:GRP_SEC /dados/sec
echo "Definindo as permissões de acesso ... "
chmod 770 /dados/adm
chmod 770 /dados/ven
chmod 770 /dados/sec
echo "Definindo as permissões do diretório publico ... "
chmodd 777 /dados/publico
echo "Permissões definidas com sucesso!"
echo "Fim do script
