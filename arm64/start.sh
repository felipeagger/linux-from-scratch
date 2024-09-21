#!/bin/sh

qemu-system-aarch64 -nographic -M virt \
  -kernel kernelRustLLVMImg.gz \
  -initrd initramfs.cpio.gz \
  -cpu cortex-a57 -m 512M \
  -netdev user,id=n0 -device virtio-net-device,netdev=n0 \
  -append "console=ttyAMA0 ip=dhcp loglevel=7 earlyprintk=serial"
