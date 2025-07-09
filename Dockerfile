cat > Dockerfile <<'EOF'
FROM tiledesk/tiledesk-server:v2.10.82

USER root
# instala netcat e curl para testes internos
RUN apt-get update \
  && apt-get install -y --no-install-recommends netcat-openbsd curl \
  && rm -rf /var/lib/apt/lists/*

USER node
EOF
