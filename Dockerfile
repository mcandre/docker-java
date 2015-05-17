FROM mpasternacki/ubuntu-lucid-i386:minbase
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update && \
    apt-get install -y libxext6 \
                       libxpm4 \
                       libxp6 \
                       libxmu6 \
                       wget \
                       tar

RUN apt-get install -y strace binutils gdb

RUN echo 'deb http://archive.kernel.org/debian-archive/debian woody main' >> /etc/apt/sources.list && \
    echo 'deb-src http://archive.kernel.org/debian-archive/debian woody main' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --force-yes libstdc++2.9-glibc2.1

RUN echo 'deb http://archive.kernel.org/debian-archive/debian sarge main' >> /etc/apt/sources.list && \
    echo 'deb-src http://archive.kernel.org/debian-archive/debian sarge main' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --force-yes libc5

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
