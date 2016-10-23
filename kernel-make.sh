#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.7.10.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.7.10-201610222037.patch
tar -xvf linux-4.7.10.tar.xz
cd linux-4.7.10
patch -p1 < ../grsecurity-3.1-4.7.10-201610222037.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20161023 kernel_image
