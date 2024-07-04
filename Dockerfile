#Create by Leandro Henrique, date: 03/07/2024

# Usar a imagem base do Debian
FROM debian:latest

# Definir variáveis de ambiente para que os comandos "apt-get" não esperem por respostas interativas
ENV DEBIAN_FRONTEND=noninteractive

# Atualizar a lista de pacotes e instalar pacotes necessários para adicionar repositórios
RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Adicionar a chave GPG oficial do Docker
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Adicionar o repositório do Docker ao sources.list.d
RUN echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

# Atualizar a lista de pacotes novamente e instalar o Docker
RUN apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io

# Limpar o cache do apt para reduzir o tamanho da imagem
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Copiar o script de inicialização do Docker para o container
COPY start-docker.sh /usr/local/bin/start-docker.sh
RUN chmod +x /usr/local/bin/start-docker.sh

# Definir o comando padrão para quando o container for iniciado
CMD ["/usr/local/bin/start-docker.sh"]
