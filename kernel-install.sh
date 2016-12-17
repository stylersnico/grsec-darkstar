#!/bin/bash
cd /tmp
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.8.15/linux-image-4.8.15-grsec-darkstar-k_20161217_amd64.deb
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.8.15/linux-image-4.8.15-grsec-darkstar-k_20161217_amd64.deb.sha256
sha256sum -c linux-image-4.8.15-grsec-darkstar-k_20161217_amd64.deb.sha256
dpkg -i linux-image-4.8.15-grsec-darkstar-k_20161217_amd64.deb
