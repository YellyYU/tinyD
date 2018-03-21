#!/bin/bash 
cp ./src/init initramfs/x86-busybox/ 
cp -r  copy_files/* initramfs/x86-busybox/home/ 
cd initramfs/x86-busybox/ 
find . -print0 \
     | cpio --null -ov --format=newc \
     | gzip -9 > ../../obj/initramfs-busybox-x86.cpio.gz

