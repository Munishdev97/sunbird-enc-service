FROM debian:buster
MAINTAINER "S M Y ALTAMASH" "smy.altamash@gmail.com"
WORKDIR /home/enc
COPY . /home/enc
RUN sudo apt update \
    && sudo apt install -y zip python make g++ \
    && sudo npm i \
    && sudo apt remove --purge -y python make g++ \
    && sudo apt-get autoremove -y \
    && sudo rm -rf /var/lib/apt/lists/*
EXPOSE 8013
CMD sudo sh entrypoint.sh
