FROM ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update
RUN apt-get install -y wget gcc-multilib patch

ENV _POSIX2_VERSION=199209
RUN wget --no-check-certificate https://github.com/mcandre/oracle-jdk/raw/master/j2sdk-1_3_0_05-linux.bin && \
		chmod +x j2sdk-1_3_0_05-linux.bin && \
		echo yes | ./j2sdk-1_3_0_05-linux.bin && \
		rm j2sdk-1_3_0_05-linux.bin

ENV JAVA_HOME /jdk1.3.0_05

ADD fix-architecture-detection.patch $JAVA_HOME/fix-architecture-detection.patch
RUN cd $JAVA_HOME && patch -p1 -i fix-architecture-detection.patch

ENV PATH /jdk1.3.0_05/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
