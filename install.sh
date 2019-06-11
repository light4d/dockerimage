#!/bin/sh
gov="1.11"

cd ~
wget "https://storage.googleapis.com/golang/go${gov}.linux-amd64.tar.gz"  --progress=bar:force 2>&1 &&\
tar xzvf "go${gov}.linux-amd64.tar.gz" 
mv go  /opt/go


wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/12.0.1+12/69cfe15208a647278a19ef0990eea691/jdk-12.0.1_linux-x64_bin.tar.gz --progress=bar:force 2>&1
tar xzvf jdk-12.0.1_linux-x64_bin.tar.gz
mv jdk-12.0.1_linux-x64_bin jdk
mv jdk /opt
rm jdk-12.0.1_linux-x64_bin.tar.gz

mkdir -p /GOPATH &&\
echo "export GOROOT=/opt/go" >>/etc/profile  &&\
echo "export GOPATH=/GOPATH" >>/etc/profile  &&\
echo "export JAVA_HOME=/opt/jdk" >>/etc/profile
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/go/bin:/opt/jdk/bin" >>/etc/profile
