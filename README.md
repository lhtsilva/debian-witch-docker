# docker-witch-debian

Instruções de Uso
1. Construir a Imagem Docker
Após baixar o projeto, entre na pasta do projeto e execute o seguinte comando para construir a imagem Docker:

bash
Copiar código
docker build -t <nome_da_sua_imagem> .
2. Executar o Contêiner em Modo Privilegiado
Com a imagem criada, execute o comando abaixo em modo privilegiado para permitir que o usuário dentro do contêiner consiga iniciar o daemon do Docker:

bash
Copiar código
docker run --privileged -d --name <nome_do_container> <nome_da_imagem_criada>
3. Verificar se o Contêiner Está Rodando
Para verificar se o contêiner está rodando, execute o comando:

bash
Copiar código
docker ps
4. Acessar o Contêiner
Para acessar o contêiner, execute o comando:

bash
Copiar código
docker exec -it <id_container> /bin/bash
Pronto!
Você agora tem o Docker instalado e em execução dentro de um contêiner!
