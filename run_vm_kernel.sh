#!/bin/sh
sudo qemu-system-x86_64 \
	-m 2048 \
	-enable-kvm \
	-drive file=vm_state/sra-kernel.qcow2,media=disk,if=virtio \
	-serial tcp::5602,server,nowait  \
	-kernel linux/arch/x86/boot/bzImage \
	-append "root=/dev/vda1 ro quiet nokaslr kgdboc=ttyS0,115200" \
	-net nic -net user,hostfwd=tcp::22222-:22