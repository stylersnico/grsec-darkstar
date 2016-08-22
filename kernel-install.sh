#!/bin/bash
cd /tmp
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.7.2/linux-image-4.7.2-grsec-darkstar-k_20160822_amd64.deb
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.7.2/linux-image-4.7.2-grsec-darkstar-k_20160822_amd64.deb.sha256 
sha256sum -c linux-image-4.7.2-grsec-darkstar-k_20160822_amd64.deb.sha256 
dpkg -i linux-image-4.7.2-grsec-darkstar-k_20160822_amd64.deb.deb
