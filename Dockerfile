FROM ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update
RUN apt-get install -y wget gcc-multilib

RUN wget --no-check-certificate https://github.com/mcandre/oracle-jdk/raw/master/j2sdk-1_4_2_19-linux-i586.bin && \
		chmod +x j2sdk-1_4_2_19-linux-i586.bin && \
		echo yes | ./j2sdk-1_4_2_19-linux-i586.bin && \
		rm j2sdk-1_4_2_19-linux-i586.bin

ENV JAVA_HOME /jdk1.4.2_19
ENV PATH /j2sdk1.4.2_19/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
