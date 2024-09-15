#!/bin/sh

qemu-system-riscv64 -nographic -machine virt -bios default \
  -kernel KernelImage \
  -initrd initramfs.cpio.gz \
  -m 512M \
  -append "console=ttyS0 loglevel=7 earlyprintk=serial" \
  -net nic -net user \
  -netdev user,id=mynet0 \
  -device virtio-net-device,netdev=mynet0
