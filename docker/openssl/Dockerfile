FROM ubuntu:latest

RUN apt update && apt install -y openssl

WORKDIR /etc/ssl
COPY ./openssl.cnf /usr/lib/ssl/openssl.cnf
# Generate CA key and certificate
