FROM mcandre/docker-debian:slink
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD http://archive.kernel.org/debian-archive/debian/pool/main/x/xpm/xpm4.7_3.4k-6_i386.deb /xpm4.7_3.4k-6_i386.deb
ADD http://archive.kernel.org/debian-archive/debian/dists/bo/non-free/binary-i386/jdk-common_1.0.2-7.deb /jdk-common_1.0.2-7.deb
ADD http://archive.kernel.org/debian-archive/debian/dists/bo/non-free/binary-i386/jdk-shared_1.0.2-7.deb /jdk-shared_1.0.2-7.deb
ADD arch /bin/arch
RUN apt-get update && \
    apt-get install -y libc5 xlib6g && \
    dpkg -i xpm4.7_3.4k-6_i386.deb && \
    rm xpm4.7_3.4k-6_i386.deb && \
    dpkg -i jdk-common_1.0.2-7.deb && \
    rm jdk-common_1.0.2-7.deb && \
    dpkg -i jdk-shared_1.0.2-7.deb && \
    rm jdk-shared_1.0.2-7.deb
