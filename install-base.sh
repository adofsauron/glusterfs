#!/bin/bash

yum install -y gcc gcc-c++ make cmake automake openssl-devel flex bison libuuid-devel libacl-devel libtool

yum remove -y python2

yum install -y python39 python39-devel

yum install -y libxml2-devel libtirpc libtirpc-devel

yum install -y python3-eventlet
yum install -y python3-netifaces
yum install -y python3-paste-deploy
yum install -y python3-simplejson
yum install -y python3-sphinx
yum install -y python3-webob
yum install -y python3-pyxattr

