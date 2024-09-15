#!/bin/sh

qemu-system-riscv64 -nographic -machine virt -bios default \
  -kernel KernelImage \
  -initrd initramfs.cpio.gz \
  -m 512M \
  -append "console=ttyS0 loglevel=7 earlyprintk=serial"
