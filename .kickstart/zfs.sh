#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    dkms \
    python

ZFSDIR=$HOME/.kickstart/zfs

test -d $ZFSDIR/.git || git clone https://github.com/openzfs/zfs $ZFSDIR
cd $ZFSDIR
git reset --hard
git pull
sh autogen.sh
./configure
make -s -j$(nproc)

sudo make install
sudo ldconfig
sudo depmod
