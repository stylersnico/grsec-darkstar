#!/bin/bash
cd /tmp
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.7.4/linux-image-4.7.4-grsec-darkstar-k_20160917_amd64.deb
wget https://github.com/stylersnico/grsec-darkstar/releases/download/4.7.4/linux-image-4.7.4-grsec-darkstar-k_20160917_amd64.deb.sha256 
sha256sum -c linux-image-4.7.4-grsec-darkstar-k_20160917_amd64.deb.sha256 
dpkg -i linux-image-4.7.4-grsec-darkstar-k_20160917_amd64.deb
