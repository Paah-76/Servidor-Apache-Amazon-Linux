#!/bin/bash

# Atualizar o sistema
yum update -y

# Instalar o Apache
yum install -y httpd

# Iniciar o Apache e configurá-lo para iniciar automaticamente no boot
systemctl start httpd
systemctl enable httpd

# Criar uma página HTML simples
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servidor Apache</title>
</head>
<body>
    <h2>Bem vindo ao meu primeiro servidor Apache</h2>

    <p> Esse servidor foi criado utilizando um script e um EC2 com Amazon Linux </p>
    
</body>
</html>
EOF

# Garantir que as permissões estejam corretas
chown -R apache:apache /var/www/html

# Reiniciar o Apache para garantir que as mudanças sejam aplicadas
systemctl restart httpd