FROM maven:3.6.3-jdk-11

ARG VERSION=8_0_8

RUN \
    apt-get update && \
    apt-get install -y nano && \
    apt-get install -y zip && \
    wget https://download-gcdn.ej-technologies.com/install4j/install4j_linux_$VERSION.deb && \
    dpkg -i install4j_linux_$VERSION.deb && \
    rm install4j_linux_$VERSION.deb