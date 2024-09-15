# riscv64-linux-from-scratch

*These binaries/kernel were compiled on a x86_64 PC with target arch riscv64!*

Binaries ready to run Linux on arch RiscV64GC with QEMU.

# Required

QEMU

We will use Qemu for launching Linux on our X86_64 hardware. 
This is ideal for prototyping in a RISC-V without having specific hardware.
QEMU is a generic and open source machine emulator and virtualizer.

RHEL Linux 
```
sudo dnf install qemu-system-riscv
```

# Base articles

- https://risc-v-getting-started-guide.readthedocs.io/en/latest/linux-qemu.html

- https://risc-v-machines.readthedocs.io/en/latest/linux/simple/

- https://github.com/UCanLinux/riscv64-sample
