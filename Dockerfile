FROM debian:jessie

RUN apt-get update && apt-get --yes install reprepro

WORKDIR /code
