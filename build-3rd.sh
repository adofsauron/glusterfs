#!/bin/bash

HERE=`pwd`

cd 3rd

# yum

cp ./yum.repos.d.tar.gz /etc
rm -rf /etc/yum.repos.d.back
mv /etc/yum.repos.d /etc/yum.repos.d.back
tar -xzvf yum.repos.d.tar.gz
cd ..

# liburing

rm -rf liburing-liburing-0.2
unzip liburing-liburing-0.2.zip
cd liburing-liburing-0.2
./configure
make
make install

cd ..
rm -rf liburing-liburing-0.2

# rpcsvc

rm -rf rpcsvc-proto-1.4
tar -xzvf rpcsvc-proto-1.4.tar.gz
cd rpcsvc-proto-1.4
./configure
make 
make install

cd ..
rm -rf rpcsvc-proto-1.4

# 
cd $HERE