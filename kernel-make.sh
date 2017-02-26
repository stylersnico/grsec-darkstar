#!/bin/bash

cd /tmp
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.9.12.tar.xz
wget https://grsecurity.net/test/grsecurity-3.1-4.9.12-201702231830.patch
tar -xvf linux-4.9.12.tar.xz
cd linux-4.9.12
patch -p1 < ../grsecurity-3.1-4.9.12-201702231830.patch

make menuconfig
make-kpkg clean
make-kpkg --jobs=16 --initrd --revision=20170226 kernel_image
