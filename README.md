# Apache Server Script

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

  ## Como funciona o scrip_html.sh

  - Instalação do Apache:
    
    yum install -y httpd instala o servidor Apache.

  - Início e Configuração do Apache:
    
    systemctl start httpd inicia o servidor Apache.
    systemctl enable httpd configura o Apache para iniciar automaticamente quando a         instância for reiniciada.
    
  - Criação da Página HTML:

    cat <<EOF > /var/www/html/index.html cria um arquivo HTML simples no diretório           padrão do Apache (/var/www/html). O conteúdo da página inclui uma saudação e uma         breve descrição.

    Entre <<EOF e EOF (ou qualquer outro marcador que você escolher), você insere o          conteúdo que deseja escrever no arquivo. Este bloco de texto é enviado diretamente       para o arquivo de destino especificado pelo redirecionamento >.

    Em resumo, o EOF é um marcador que indica onde o bloco de texto começa e termina         quando você usa o redirecionamento de texto em scripts de shell. É uma maneira           prática de incluir grandes blocos de texto em um arquivo sem ter que usar múltiplos      comandos echo ou outros métodos de escrita.
    
  - Permissões:

    chown -R apache:apache /var/www/html garante que o Apache tenha as permissões            corretas para acessar o diretório onde a página HTML está armazenada.
    
  - Reinício do Apache:

    systemctl restart httpd reinicia o Apache para aplicar quaisquer alterações.

    ## Como funciona o scrip.sh

  - Instalação do Apache:

      yum install -y httpd: Instala o servidor Apache.

  - Início e Configuração do Apache:

      systemctl start httpd: Inicia o serviço do Apache.
      systemctl enable httpd: Configura o Apache para iniciar automaticamente com o            sistema.
      
  - Criação de um Arquivo HTML Vazio:

      touch /var/www/html/index.html: Cria um arquivo index.html vazio no diretório           padrão do Apache.
 
      Se o arquivo /var/www/html/index.html não existir, o comando touch cria um novo         arquivo vazio com esse nome. Isso significa que nenhum conteúdo é adicionado ao         arquivo neste momento, apenas a estrutura de arquivo é criada.
      
  - Permissões:

      chown apache:apache /var/www/html/index.html: Ajusta as permissões do arquivo           index.html para que o usuário apache possa acessá-lo e modificá-lo.
    

    
  
  
  
  
