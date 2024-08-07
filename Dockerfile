FROM ubuntu:latest

ARG BINARY

ADD ${BINARY} /init

ENTRYPOINT [ "/init" ]
