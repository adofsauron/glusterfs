
HERE=`pwd`

cd 3rd

# yum

cp ./yum.repos.d.tar.gz /etc
rm -rf /etc/yum.repos.d.back
mv /etc/yum.repos.d /etc/yum.repos.d.back
cd /etc
tar -xzvf yum.repos.d.tar.gz
cd ..

# 
cd $HERE

yum makecache -y

yum install -y epel-release

