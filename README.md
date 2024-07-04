# docker-witch-debian

- Ao baixar o projeto, entre na pasta e execute o comando:
  docker build -t <nome_da_sua_imagem> .

- Com a imagem criado, rode o comando em modo privilegiado para o usuário consiga startar o daemon do docker dentro do container.
  docker run --privileged -d --name <nome_do_container> <nome_da_imagem_criada>

- Rode o comando docker ps e verá o container rodando!

- Acesse o container :
  docker exec -it <id_container> /bin/bash

  Voaaa Lá!!!!

  Você já tem o docker instalado dentro de uma container!!

  

  
