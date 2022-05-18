#!/bin/bash

HERE=`pwd`

cd 3rd

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