#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.8.11.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.8.11-201611271225.patch
tar -xvf linux-4.8.11.tar.xz
cd linux-4.8.11
patch -p1 < ../grsecurity-3.1-4.8.11-201611271225.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20161202 kernel_image
