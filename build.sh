#!/bin/bash

HERE=`pwd`

cd glusterfs-10.2

chmod +x ./configure

./configure

make 

make install

make clean

cd $HERE