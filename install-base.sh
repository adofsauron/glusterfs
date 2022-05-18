#!/bin/bash

yum install -y gcc gcc-c++ make cmake automake openssl-devel flex bison libuuid-devel libacl-devel libtool

yum remove -y python2

yum install -y python39 python39-devel

yum install -y libxml2-devel libtirpc libtirpc-devel
