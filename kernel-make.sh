#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.8.15.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.8.15-201612151923.patch
tar -xvf linux-4.8.15.tar.xz
cd linux-4.8.15
patch -p1 < ../grsecurity-3.1-4.8.15-201612151923.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20161217 kernel_image
