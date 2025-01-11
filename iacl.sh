#!/bin/bash

echo "Criando Diretórios..."

mkdir /pub
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Criando Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo "Criando Usuários..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_SEC
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_SEC

echo "Usuários criados!"

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /pub

echo "Permissões criadas!"

echo "\nSCRIPT FINALIZADO!"
