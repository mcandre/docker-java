FROM mcandre/docker-debian:slink
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update && \
		apt-get install -y wget \
											 tar \
											 libc5 \
											 xlib6g \
											 strace \
											 gdb

RUN wget http://archive.kernel.org/debian-archive/debian/pool/main/x/xpm/xpm4.7_3.4k-6_i386.deb && \
		dpkg -i xpm4.7_3.4k-6_i386.deb && \
		rm xpm4.7_3.4k-6_i386.deb

RUN wget http://ftp.vim.org/pub/languages/java/jdk/JDK-1.0.2/JDK_common.1.0.2.pl2.tar.gz && \
		tar xzvf JDK_common.1.0.2.pl2.tar.gz && \
		rm JDK_common.1.0.2.pl2.tar.gz && \
		wget http://ftp.vim.org/pub/languages/java/jdk/JDK-1.0.2/JDK_static.1.0.2.pl2.tar.gz && \
		tar xzvf JDK_static.1.0.2.pl2.tar.gz && \
		rm JDK_static.1.0.2.pl2.tar.gz && \
		mv /java /usr/local/

# Various fixes
ENV J_HOME /usr/local/java
ENV APP_HOME /usr/local/java
ENV CLASSPATH .:/usr/local/java/classes:/lib/classes.zip
ENV LD_LIBRARY_PATH /usr/X11R6/lib
ADD javac /usr/bin/javac
RUN ln -s /usr/bin/javac /usr/bin/java
