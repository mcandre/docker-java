FROM ubuntu
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV JAVA_HOME /jdk1.5.0_22
ENV PATH /jdk1.5.0_22/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt-get update && \
    apt-get install -y wget && \
    wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/1.5.0_22/jdk-1_5_0_22-linux-amd64.bin && \
    echo yes | sh jdk-1_5_0_22-linux-amd64.bin && \
    rm jdk-1_5_0_22-linux-amd64.bin
