FROM ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

# RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y g++-multilib wget bzip2 #zip

RUN wget ftp://ftp.nluug.nl/pub/languages/java/jdk/JDK-1.2.2/i386/FCS/j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		bunzip2 j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		tar xvf j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar && \
		rm j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar

RUN apt-get install -y strace

# RUN wget https://www.vitki.net/sites/vitki.net/files/attachments/p3006854_9204_LINUX.zip && \
# 		unzip p3006854_9204_LINUX.zip && \
# 		sed 's/gcc/gcc -m32/' < 3006854/rhel3_pre_install.sh > 3006854/rhel3_pre_install.sh && \

ADD rhel3_pre_install.sh /rhel3_pre_install.sh
RUN sh rhel3_pre_install.sh && \
		rm -rf rhel3_pre_install.sh

ENV JAVA_HOME /jdk1.2.2
ENV CLASSPATH /jdk1.2.2/lib/tools.jar
ENV LD_LIBRARY_PATH /jdk1.2.2/jre/lib/i386:/jdk1.2.2/jre/lib/i386/native_threads:/jdk1.2.2/jre/lib/i386/classic:/lib32
ENV APPHOME /jdk1.2.2/bin/i386/native_threads
ENV JREHOME /jdk1.2.2/bin/i386/native_threads/jre
ENV LC_ALL C
ENV LANG C

ADD javac /bin/javac
RUN ln -s /bin/javac /bin/java

# ENV PATH /jdk1.2.2/bin/i386/${THREAD_TYPE}_threads:/jdk1.2.2/jre/bin:/jdk1.2.2/jre/bin/i386:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# ENV LD_LIBRARY_PATH_32 /lib32/libcwait.so
