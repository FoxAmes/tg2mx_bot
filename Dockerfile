FROM scratch

ARG BINARY

ADD ${BINARY} /init

ENTRYPOINT [ "/init" ]
