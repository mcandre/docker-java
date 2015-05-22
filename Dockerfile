FROM 32bit/ubuntu:14.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV JAVA_HOME /usr/lib/jdk1.1
ENV CLASSPATH .:/usr/lib/jdk1.1/lib/classes.zip
ENV LD_LIBRARY_PATH /usr/lib/jdk1.1/lib/ia32/native_threads
ADD rhel3_pre_install.sh /rhel3_pre_install.sh
ADD arch /bin/arch
ADD javac /usr/bin/javac
RUN echo 'deb http://archive.kernel.org/debian-archive/debian woody main non-free' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --force-yes jdk1.1-native-dev g++-multilib && \
    /rhel3_pre_install.sh && \
    ln -sf /usr/bin/javac /usr/bin/java
