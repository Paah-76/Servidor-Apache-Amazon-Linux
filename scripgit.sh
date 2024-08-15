#!/bin/bash

# Atualizar o sistema
yum update -y

# Instalar o Apache
yum install -y httpd

# Instalar Git 
yum install -y git

# Iniciar o Apache e configurá-lo para iniciar automaticamente no boot
systemctl start httpd
systemctl enable httpd

# Clonar o repositório contendo o arquivo HTML
git clone https://github.com/Paah-76/pagina-web-ada.git /tmp/pagina

# Copiar o arquivo index.html para o diretório padrão do Apache
cp /tmp/pagina/index.html /var/www/html/

# Ajustar permissões para o arquivo
chown apache:apache /var/www/html/index.html

# Limpar o repositório clonado
rm -rf /tmp/pagina

# Reiniciar o Apache para garantir que todas as alterações sejam aplicadas
systemctl restart httpd