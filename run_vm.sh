#!/usr/bin/env sh
sudo qemu-system-x86_64\
 -enable-kvm \
 -m 2048 \
 -drive file=vm_state/sra.qcow2,media=disk,if=virtio \
 -serial tcp::56001,server,nowait \
 -net nic -net user,hostfwd=tcp::22221-:22