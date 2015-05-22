FROM ubuntu
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV JAVA_HOME /jdk1.3.1_20
ENV PATH $JAVA_HOME/bin:$JAVA_HOME/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ADD fix-architecture-detection.patch $JAVA_HOME/fix-architecture-detection.patch
RUN apt-get update && \
    apt-get install -y wget patch && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y libc6:i386 \
                       libtinfo5:i386 \
                       libstdc++6:i386 && \
    wget http://archive.debian.org/debian/pool/main/e/egcs1.1/libstdc++2.9-glibc2.1_2.91.66-4_i386.deb && \
    dpkg -i libstdc++2.9-glibc2.1_2.91.66-4_i386.deb && \
    rm libstdc++2.9-glibc2.1_2.91.66-4_i386.deb && \
    wget https://github.com/mcandre/oracle-jdk/raw/master/j2sdk-1_3_1_20-linux-i586.bin && \
    echo yes | sh j2sdk-1_3_1_20-linux-i586.bin && \
    rm j2sdk-1_3_1_20-linux-i586.bin && \
    cd $JAVA_HOME && patch -p1 -i fix-architecture-detection.patch
