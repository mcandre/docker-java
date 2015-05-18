FROM centos:6
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN yum install -y wget tar strace gdb

ADD linuxtech.repo /etc/yum.repos.d/linuxtech.repo
RUN yum install -y libc5-extras

RUN yum install -y libXpm-3.5.10-2.el6.i686 \
                   libICE-1.0.6-1.el6.i686 \
                   libSM-1.2.1-2.el6.i686 \
                   libXext-1.3.2-2.1.el6.i686 \
                   libXt-1.1.4-6.1.el6.i686
RUN rpm -U http://ftp.vim.org/pub/languages/java/jdk/JDK-1.0.2/JDK_static-1.0.2.pl2-3.i386.rpm && \
    yum install -y JDK_static-1.0.2.pl2

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
