FROM ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y g++-multilib wget bzip2

RUN wget ftp://ftp.nluug.nl/pub/languages/java/jdk/JDK-1.2.2/i386/FCS/j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		bunzip2 j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		tar xvf j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar && \
		rm j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar

ENV JAVA_HOME /jdk1.2.2
ENV LD_LIBRARY_PATH $JAVA_HOME/jre/lib/i386/green_threads:$JAVA_HOME/jre/lib/i386/classic:/lib32
ENV APPHOME=$JAVA_HOME/bin/i386/green_threads
ENV JREHOME=$APPHOME/jre
ENV LC_ALL C
ENV LANG C
ENV PATH $JAVA_HOME/bin/i386/green_threads:$JAVA_HOME/jre/bin:$JAVA_HOME/jre/bin/i386:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get install -y strace
