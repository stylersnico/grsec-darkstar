#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.7.4.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.7.4-201609152234.patch
tar -xvf linux-4.7.4.tar.xz
cd linux-4.7.4
patch -p1 < ../grsecurity-3.1-4.7.4-201609152234.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20160917 kernel_image
