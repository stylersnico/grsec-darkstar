#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.7.2.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.7.2-201608211829.patch
tar -xvf linux-4.7.2.tar.xz
cd linux-4.7.2
patch -p1 < ../grsecurity-3.1-4.7.2-201608211829.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20160822 kernel_image
