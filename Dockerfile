FROM ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y libxext6:i386 \
                       libxpm4:i386 \
                       libxp6:i386 \
                       libxmu6:i386 \
                       lib32z1 \
                       lib32ncurses5 \
                       lib32bz2-1.0 \
                       wget \
                       tar

RUN apt-get install -y strace binutils gdb

RUN echo 'deb [arch=i386] http://archive.kernel.org/debian-archive/debian woody main' >> /etc/apt/sources.list && \
    echo 'deb-src [arch=i386] http://archive.kernel.org/debian-archive/debian woody main' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --force-yes libstdc++2.9-glibc2.1:i386

RUN echo 'deb [arch=i386] http://archive.kernel.org/debian-archive/debian sarge main' >> /etc/apt/sources.list && \
    echo 'deb-src [arch=i386] http://archive.kernel.org/debian-archive/debian sarge main' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --force-yes libc5:i386

RUN wget http://taper.alienbase.nl/mirrors/slackware/slackware-3.2/contrib/java/linux.jdk-1.0.2-pl2.common.tar.gz && \
    tar xzvf linux.jdk-1.0.2-pl2.common.tar.gz && \
    rm linux.jdk-1.0.2-pl2.common.tar.gz
RUN wget http://taper.alienbase.nl/mirrors/slackware/slackware-3.2/contrib/java/linux.jdk-1.0.2-pl2.static-motif.tar.gz && \
    tar xzvf linux.jdk-1.0.2-pl2.static-motif.tar.gz && \
    rm linux.jdk-1.0.2-pl2.static-motif.tar.gz && \
    cp -r /java /usr/local/ && \
    rm -rf /java

# Various fixes
ENV JAIL /usr/local/java
ADD copy-file-and-dependencies.sh /copy-file-and-dependencies.sh
RUN /copy-file-and-dependencies.sh
ENV J_HOME /
ENV APP_HOME /
ENV CLASSPATH .:/classes:/lib/classes.zip
ENV LD_LIBRARY_PATH /lib/i386-linux-gnu:/usr/lib/i386-linux-gnu:/lib/i586:/lib32:/lib
ADD javac /usr/bin/javac
RUN ln -s /usr/bin/javac /usr/bin/java
