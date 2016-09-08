#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.7.3.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.7.3-201609072139.patch
tar -xvf linux-4.7.3.tar.xz
cd linux-4.7.3
patch -p1 < ../grsecurity-3.1-4.7.3-201609072139.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20160908 kernel_image
