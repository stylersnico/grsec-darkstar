#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.8.9.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.8.9-201611192033.patch
tar -xvf linux-4.8.9.tar.xz
cd linux-4.8.9
patch -p1 < ../grsecurity-3.1-4.8.9-201611192033.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20161120 kernel_image
