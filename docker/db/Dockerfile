FROM mysql:latest

COPY init.sh /docker-entrypoint-initdb.d/00-init.sh

RUN chmod +x /docker-entrypoint-initdb.d/00-init.sh
