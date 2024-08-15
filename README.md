# Apache Server Scrip

## Descrição

Este repositório tem um script de User Data para configuração automática do Apache HTTP Server em uma instância Amazon Linux. O script foi projetado para ser utilizado em ambientes de nuvem, como a AWS EC2, e executa as seguintes tarefas:

- Instala o servidor Apache HTTP (`httpd`).
- Inicia o serviço Apache e configura para iniciar automaticamente no boot da instância.
- Cria um arquivo `index.html` vazio no diretório padrão do Apache.
- Ajusta as permissões do arquivo `index.html` para que o usuário Apache possa modificá-lo.

  ### Arquivos
  O scrip cria um arquivo vazio chamado index.html, já o script_html cria um arquivo com o codigo HTML.

  ### Como Fazer

  Criar uma nova instancia.
  
  ![image](https://github.com/user-attachments/assets/e42cea15-3a8a-4796-bb48-7c5e30ff0e1d)


  
