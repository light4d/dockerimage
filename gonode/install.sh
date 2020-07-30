#!/bin/sh
gov="1.14"
nodev="14.5.0"
cd ~
wget "https://storage.googleapis.com/golang/go${gov}.linux-amd64.tar.gz"  --progress=bar:force 2>&1 &&\
tar xzvf "go${gov}.linux-amd64.tar.gz" 
mv go  /opt/go

wget "https://nodejs.org/dist/v${nodev}/node-v${nodev}-linux-x64.tar.xz"  --progress=bar:force 2>&1 &&\
xz -d "node-v${nodev}-linux-x64.tar.xz"  
tar xvf "node-v${nodev}-linux-x64.tar"
mv node-v${nodev}-linux-x64  /opt/node
mkdir -p /GOPATH &&\
echo "export GOROOT=/opt/go" >>/etc/profile  &&\
echo "export GOPATH=/GOPATH" >>/etc/profile  &&\
echo "export NODE=/opt/node" >>/etc/profile  &&\
echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/go/bin:/opt/node/bin" >>/etc/profile