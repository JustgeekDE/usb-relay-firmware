FROM ubuntu

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y avr-libc avrdude make && \
    apt-get clean

WORKDIR /build
CMD make