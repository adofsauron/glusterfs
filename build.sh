#!/bin/bash

HERE=`pwd`

cd glusterfs-10.2

dos2unix ./configure
chmod +x ./configure

./configure

make 

make check

make install

make clean

cd $HERE