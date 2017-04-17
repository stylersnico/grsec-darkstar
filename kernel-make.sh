#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.22.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.9.22-201704120836.patch
tar -xvf linux-4.9.22.tar.xz
cd linux-4.9.22
patch -p1 < ../grsecurity-3.1-4.9.22-201704120836.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=8 --initrd --revision=20170417 kernel_image
