FROM ubuntu:latest as base

RUN apt update && \
    apt install net-tools iputils-ping curl -y

FROM base as attacker

RUN apt install ettercap-text-only -y && \
    mkdir /root/dump


