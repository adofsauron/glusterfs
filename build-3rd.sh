#!/bin/bash

HERE=`pwd`

cd 3rd

# liburing

rm -rf liburing-liburing-0.2
unzip liburing-liburing-0.2.zip
cd liburing-liburing-0.2
./configure
make -j"$(nproc)"
make install

cd ..
rm -rf liburing-liburing-0.2

# rpcsvc

rm -rf rpcsvc-proto-1.4
tar -xzvf rpcsvc-proto-1.4.tar.gz
cd rpcsvc-proto-1.4
./configure
make -j"$(nproc)"
make install

cd ..
rm -rf rpcsvc-proto-1.4

# tcmalloc

rm -rf gperftools-2.5
tar xzvf gperftools-2.5.tar.gz
cd gperftools-2.5
./configure
make -j"$(nproc)"
make install

cd ..
rm -rf gperftools-2.5

# userspace-rcu
rm -rf userspace-rcu
tar -xzvf userspace-rcu.tar.gz
cd userspace-rcu
./bootstrap
./configure
make -j"$(nproc)"
make install

cd ..
rm -rf userspace-rcu

# 
cd $HERE
