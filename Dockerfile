FROM timeloveboy/moedocker
MAINTAINER light4d(account@mirrorsoft.cn)
ADD install.sh install.sh
RUN sh install.sh
ENV GOROOT /opt/go
ENV GOPATH /GOPATH
ENV JAVA_HOME /opt/jdk
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/go/bin:/opt/jdk/bin