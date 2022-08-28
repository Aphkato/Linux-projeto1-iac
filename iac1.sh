#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd moraes -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd junior -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd kesia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd meire -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd odila -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd rafaela -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd keyla -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando premissões dos diretórios.…"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
