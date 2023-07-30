FROM ubuntu:latest
WORKDIR /app

RUN apt update && apt install -y curl wget gcc g++ libc-dev libssl-dev openssl
