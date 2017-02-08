#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.8.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.9.8-201702071801.patch
tar -xvf linux-4.9.8.tar.xz
cd linux-4.9.8
patch -p1 < ../grsecurity-3.1-4.9.8-201702071801.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=2 --initrd --revision=20170208 kernel_image
