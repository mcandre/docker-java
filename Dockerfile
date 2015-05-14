FROM ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update -y

# Accept Oracle JDK license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java8-installer ca-certificates
