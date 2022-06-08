#!/bin/bash

HERE=`pwd`

cd trunk

cd glusterfs-10.2

dos2unix *.sh
chmod +x *.sh

dos2unix build-aux/*
chmod +x build-aux/*

bash ./autogen.sh

dos2unix ./configure
chmod +x ./configure

./configure

make -j"$(nproc)"

make check

make install

# make clean

cd $HERE