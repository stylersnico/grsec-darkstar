#!/bin/bash
cd /tmp
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.8.7/linux-image-4.8.7-grsec-darkstar-k_20161112_amd64.deb
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.8.7/linux-image-4.8.7-grsec-darkstar-k_20161112_amd64.deb.sha256
sha256sum -c linux-image-4.8.7-grsec-darkstar-k_20161112_amd64.deb.sha256
dpkg -i linux-image-4.8.7-grsec-darkstar-k_20161112_amd64.deb
