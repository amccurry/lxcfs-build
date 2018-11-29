#!/bin/bash
set -ex
yum install -y fuse fuse-libs fuse-devel libtool automake git make
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
mkdir -p $DIR/tmp
cd $DIR/tmp
git clone git://github.com/lxc/lxcfs
cd lxcfs
./bootstrap.sh
./configure
make
make install
