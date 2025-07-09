FROM tiledesk/tiledesk-server:v2.10.82

USER root

# 1) Cria /usr/src/app/logs e ajusta permissões
RUN mkdir -p /usr/src/app/logs \
  && chown -R node:node /usr/src/app/logs

# 2) Instala netcat e curl para testes internos
RUN apt-get update \
  && apt-get install -y --no-install-recommends netcat-openbsd curl \
  && rm -rf /var/lib/apt/lists/*

USER node
