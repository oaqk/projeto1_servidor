#!/bin/bash 

echo "> criando diretórios" 

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec 

echo "> criando grupos" 

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC 

echo "> designando diretórios aos seus grupos" 

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec 

echo "> atribuindo permissões" 

sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec
sudo chmod 777 /publico 

echo "> criando usuários - adm" 

sudo useradd carlos -c "Carlos Tenório" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_ADM
sudo passwd -e carlos 

sudo useradd maria -c "Mária Amélia" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_ADM
sudo passwd -e maria 

sudo useradd joao -c "João Pedro" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_ADM
sudo passwd -e joao 

echo "> criando usuários - ven" 

sudo useradd debora -c "Débora Amarante" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_VEN
sudo passwd -e debora 

sudo useradd sebastiana -c "Sebastiana de Oliveira" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_VEN
sudo passwd -e sebastiana 

sudo useradd roberto -c "Roberto dos Santos" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_VEN
sudo passwd -e roberto 

echo "> criando usuários - sec" 

sudo useradd rogerio -c "Rogério de Carvalho" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_SEC
sudo passwd -e rogerio 

sudo useradd amanda -c "Amanda Guimarães" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_SEC
sudo passwd -e amanda 

sudo useradd josefina -c "Josefina Lisboa" -s /bin/bash -p $(openssl passwd padrao000) -G GRP_SEC
sudo passwd -e josefina 

echo "> processo finalizado com sucesso"