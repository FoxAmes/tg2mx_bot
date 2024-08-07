FROM ubuntu:22.04

ARG BINARY

ADD ${BINARY} /init

RUN apt update -y && apt install -y libavutil56 libavformat58 libavfilter7 libavdevice58 libswscale5 libavcodec58 librlottie0-1 && apt-get clean autoclean && rm -rf /var/lib/{apt,dpkg,cache,log}/
RUN ln -sf /usr/lib/x86_64-linux-gnu/librlottie.so.0-1 /usr/lib/x86_64-linux-gnu/librlottie.so.0

ENTRYPOINT [ "/init" ]
