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

  Siga para detalhes Avançados, ao final você vai encontrar o campo: User Data
  ![image](https://github.com/user-attachments/assets/151c97f7-ed75-4877-991b-a78e436244c7)

  Nesse campo, você pode escrever seu scrip ou adicionar um arquivo.
  
  
  
  
  
