#!/bin/bash

# Instalar o Apache
yum install -y httpd

# Iniciar o Apache e configurá-lo para iniciar automaticamente no boot
systemctl start httpd
systemctl enable httpd

# Criar um arquivo HTML vazio
touch /var/www/html/index.html

# Garantir que as permissões estejam corretas
chown apache:apache /var/www/html/index.html
