#!/bin/sh

qemu-system-aarch64 -nographic -machine virt \
  -kernel kernelRustLLVMImg.gz \
  -initrd initramfs.cpio.gz \
  -cpu cortex-a57 -m 512M \
  -append "console=ttyAMA0 loglevel=7 earlyprintk=serial ip=dhcp" \
  -net nic -net user \
  -netdev user,id=mynet0 \
  -device virtio-net-device,netdev=mynet0
