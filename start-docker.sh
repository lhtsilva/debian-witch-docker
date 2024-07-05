#!/bin/bash
Create by: Leandro Henrique 

# Iniciar o Docker daemon
dockerd &

# Esperar até que o Docker daemon esteja pronto
while (! docker stats --no-stream ); do
  echo "Aguardando o Docker daemon iniciar..."
  sleep 1
done

# Manter o container rodando
tail -f /dev/null
