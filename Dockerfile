FROM ubuntu:14.04

MAINTAINER Christopher Harris (xixonia@gmail.com)

ENV HOME /opt/factorio
ENV SAVEFILE /opt/factorio/saves/factorio_save.zip

RUN apt-get update \
    && apt-get install -y \
        wget \
        xz-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ARG FACTORIO_VERSION
RUN wget --no-check-certificate "https://www.factorio.com/get-download/${FACTORIO_VERSION}/headless/linux64" -O /tmp/factorio.tar.xz \
    && tar -xf /tmp/factorio.tar.xz -C /opt \
    && rm -rf /tmp/factorio.tar.xz

WORKDIR /opt/factorio
COPY ./init.sh /opt/factorio/
CMD ["./init.sh"]
EXPOSE 34197/udp
