FROM ubuntu
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV JAVA_HOME /jdk1.2.2
ENV APPHOME /jdk1.2.2/bin/i386/native_threads
ENV JREHOME /jdk1.2.2/bin/i386/native_threads/jre
ENV LD_LIBRARY_PATH /jdk1.2.2/jre/lib/i386:/jdk1.2.2/jre/lib/i386/native_threads:/jdk1.2.2/jre/lib/i386/classic:/lib32
ADD rhel3_pre_install.sh /rhel3_pre_install.sh
ADD javac /bin/javac
RUN apt-get update && \
    apt-get install -y g++-multilib wget bzip2 && \
    wget ftp://ftp.nluug.nl/pub/languages/java/jdk/JDK-1.2.2/i386/FCS/j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		bunzip2 j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar.bz2 && \
		tar xvf j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar && \
		rm j2sdk-1.2.2-FCS-linux-i386-glibc-2.1.3.tar && \
    sh rhel3_pre_install.sh && \
		rm -rf rhel3_pre_install.sh && \
    ln -s /jdk1.2.2/lib/tools.jar /jdk1.2.2/jre/lib/ext/tools.jar && \
    ln -s /bin/javac /bin/java
