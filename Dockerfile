# syntax=docker/dockerfile:1

FROM ubuntu:20.04

RUN apt update 

RUN apt install -y \
  net-tools \
  iputils-ping \
  curl \
  wget \
  jq

COPY tail-shell.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/tail-shell.sh

CMD [ "/usr/local/bin/tail-shell.sh" ]
