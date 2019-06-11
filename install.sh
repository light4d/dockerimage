#!/bin/sh
gov="1.11"
javav="12.0.1"
mvnv="3.6.1"
cd ~
wget "https://storage.googleapis.com/golang/go${gov}.linux-amd64.tar.gz"  --progress=bar:force 2>&1 &&\
tar xzvf "go${gov}.linux-amd64.tar.gz" 
mv go  /opt/go

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/${javav}+12/69cfe15208a647278a19ef0990eea691/jdk-${javav}_linux-x64_bin.tar.gz --progress=bar:force 2>&1
tar xzvf jdk-${javav}_linux-x64_bin.tar.gz
mv jdk-${javav} jdk
mv jdk /opt/jdk
rm jdk-${javav}_linux-x64_bin.tar.gz

wget http://mirror.bit.edu.cn/apache/maven/maven-3/${mvnv}/binaries/apache-maven-${mvnv}-bin.tar.gz --progress=bar:force 2>&1
tar xzvf apache-maven-${mvnv}-bin.tar.gz
mv apache-maven-${mvnv}  /opt/maven
rm apache-maven-${mvnv}-bin.tar.gz

mkdir -p /GOPATH &&\
echo "export GOROOT=/opt/go" >>/etc/profile  &&\
echo "export GOPATH=/GOPATH" >>/etc/profile  &&\
echo "export JAVA_HOME=/opt/jdk" >>/etc/profile
echo "export M2_HOME=/opt/maven" >>/etc/profile
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/go/bin:/opt/jdk/bin:/opt/maven/bin" >>/etc/profile
