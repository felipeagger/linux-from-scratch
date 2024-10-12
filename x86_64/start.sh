#!/bin/sh

qemu-system-x86_64 -kernel bzImage \
  -initrd initramfs.cpio.gz -nographic -m 512M -smp 2 \
  -append "console=ttyS0 loglevel=7 earlyprintk=serial ip=dhcp" \
  -device virtio-net-pci,netdev=eth0 -netdev user,id=eth0
