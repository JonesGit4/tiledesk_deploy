FROM tiledesk/tiledesk-server:v2.10.82

USER root

# 1) cria a pasta de logs e dá permissão ao usuário node
RUN mkdir -p /usr/src/app/logs \
 && chown node:node /usr/src/app/logs

# 2) instala netcat e curl para testes internos
RUN apt-get update \
 && apt-get install -y --no-install-recommends netcat-openbsd curl \
 && rm -rf /var/lib/apt/lists/*

USER node