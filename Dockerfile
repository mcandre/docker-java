FROM centos:6
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN yum install -y wget glibc.i686 patch

RUN rpm -U ftp://rpmfind.net/linux/opensuse/factory/repo/oss/suse/x86_64/compat-32bit-2010.1.31-20.2.x86_64.rpm && \
		yum install -y compat-32bit-2010.1.31

ENV _POSIX2_VERSION=199209
RUN wget --no-check-certificate https://github.com/mcandre/oracle-jdk/raw/master/j2sdk-1_3_1_20-linux-i586.rpm.bin && \
		chmod +x j2sdk-1_3_1_20-linux-i586.rpm.bin

RUN echo yes | ./j2sdk-1_3_1_20-linux-i586.rpm.bin && \
		rm j2sdk-1_3_1_20-linux-i586.rpm.bin && \
		rpm -i jdk-1.3.1_20.i586.rpm && \
		rm jdk-1.3.1_20.i586.rpm

ENV JAVA_HOME /usr/java/jdk1.3.1_20

ADD fix-architecture-detection.patch $JAVA_HOME/fix-architecture-detection.patch
RUN cd $JAVA_HOME && patch -p1 -i fix-architecture-detection.patch

ENV PATH /usr/java/jdk1.3.1_20/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
