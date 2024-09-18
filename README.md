# Linux-from-scratch

*These binaries/kernel were compiled with CLang(LLVM)!*

Binaries ready to run Linux on arch's: Arm64, x86_64 & RiscV64 with QEMU.

# Description

- Kernel: 6.11.0 with LLVM(clang version 17.0.6) and Rust Support Enabled.
- Bash: BusyBox 1.36.
- BootFS: initramfs.cpio.gz
- Init Script: /init

# TODOs

- Add C Compiler (like a TinyCC)
- Add InitSystem (like a systemd/OpenRC)

# Required

QEMU

We will use Qemu for launching Linux on our X86_64 hardware. 
This is ideal for prototyping in a RISC-V without having specific hardware.
QEMU is a generic and open source machine emulator and virtualizer.

RHEL Linux 
```
sudo dnf install qemu-system-riscv qemu-system-x86_64, qemu-system-aarch64
```

# How to run:

```
./start.sh
```

# Base articles

- https://risc-v-getting-started-guide.readthedocs.io/en/latest/linux-qemu.html

- https://risc-v-machines.readthedocs.io/en/latest/linux/simple/

- https://github.com/UCanLinux/riscv64-sample

# Output

```
riscv qemu-system-riscv64 -nographic -machine virt -bios default \
  -kernel bootRustLLVM/Image \
  -initrd initramfs.cpio.gz \
  -m 2048M \
  -append "console=ttyS0"

OpenSBI v0.6
   ____                    _____ ____ _____
  / __ \                  / ____|  _ \_   _|
 | |  | |_ __   ___ _ __ | (___ | |_) || |
 | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
 | |__| | |_) |  __/ | | |____) | |_) || |_
  \____/| .__/ \___|_| |_|_____/|____/_____|
        | |
        |_|

Platform Name          : QEMU Virt Machine
Platform HART Features : RV64ACDFIMSU
Platform Max HARTs     : 8
Current Hart           : 0
Firmware Base          : 0x80000000
Firmware Size          : 120 KB
Runtime SBI Version    : 0.2

MIDELEG : 0x0000000000000222
...
...
initing...
mounting...
Welcome to you Linux RISC-V 64 Environment!
arch: riscv64: Linux (none) 6.11.0-rc4-gc97670d2ca04 #1 SMP Sat Sep 14 14:53:54 -03 2024 riscv64 GNU/Linux
~ # ls
bin                init               proc               tmp
dev                initramfs.cpio.gz  root               usr
etc                linuxrc            sbin
home               mnt                sys
~ # cd bin
/bin # cat /proc/version
Linux version 6.11.0-rc4-gc97670d2ca04 (clang version 17.0.6, LLD 18.1.7)
```
