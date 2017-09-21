FROM ubuntu:latest

RUN dpkgArch="$(dpkg --print-architecture)"; \
    echo $dpkgArch;
