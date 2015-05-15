FROM ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update
RUN apt-get install -y g++-multilib wget bzip2

RUN wget ftp://ftp.nluug.nl/pub/languages/java/jdk/JDK-1.2.2/i386/FCS/j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		bunzip2 j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		tar xvf j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar && \
		rm j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar

# Various fixes
ADD rhel3_pre_install.sh /rhel3_pre_install.sh
RUN sh rhel3_pre_install.sh && \
		rm -rf rhel3_pre_install.sh
RUN ln -s /jdk1.2.2/lib/tools.jar /jdk1.2.2/jre/lib/ext/tools.jar
ADD javac /bin/javac
RUN ln -s /bin/javac /bin/java

ENV JAVA_HOME /jdk1.2.2
ENV APPHOME /jdk1.2.2/bin/i386/native_threads
ENV JREHOME /jdk1.2.2/bin/i386/native_threads/jre
ENV LD_LIBRARY_PATH /jdk1.2.2/jre/lib/i386:/jdk1.2.2/jre/lib/i386/native_threads:/jdk1.2.2/jre/lib/i386/classic:/lib32
