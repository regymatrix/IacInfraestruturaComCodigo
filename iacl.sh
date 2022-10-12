
#!/bin/bash

echo "Criando diretórios"

mkdir /publico 
mkdir /adm 
mkdir /ven && trace_output "Pasta Ven criada" 
mkdir /sec  

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando usuários..."

useradd -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0],"password")' 'Senha123') carlos -G GRP_ADM
useradd -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0],"password")' 'Senha123') maria -G GRP_ADM  
useradd -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0],"password")' 'Senha123') joao -G GRP_ADM 

useradd -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0],"password")' 'Senha123') debora -G GRP_VEN 
useradd -m -s /bin/bash -p $(perl -e 'print crypt ($ARGV[0],"password")' 'Senha123') sebastian -G GRP_VEN 
useradd -m -s /bin/bash -p $(perl -e 'print crypt ($ARGV[0],"password")' 'Senha123') roberto -G GRP_VEN  

useradd -m -s /bin/bash -p $(perl -e 'print crypt ($ARGV[0],"password")' 'Senha123') josefina -G GRP_SEC 
useradd -m -s /bin/bash -p $(perl -e 'print crypt ($ARGV[0],"password")' 'Senha123') amanhda  -G GRP_SEC 
useradd -m -s /bin/bash -p $(perl -e 'print crypt ($ARGV[0],"password")' 'Senha123') rogerio -G GRP_SEC 

echo "Configurando permissões nos diretórios"
chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico 

echo "Fim..."


