#!/bin/sh

qemu-system-riscv64 -nographic -machine virt -bios default \
  -kernel KernelImage \
  -initrd initramfs.cpio.gz \
  -m 512M -smp 2 \
  -append "console=ttyS0 loglevel=7 earlyprintk=serial ip=dhcp" \
  -device virtio-net-device,netdev=eth0 -netdev user,id=eth0
