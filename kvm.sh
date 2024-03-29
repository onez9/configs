#!/bin/bash

QEMU="/usr/bin/qemu-system-x86_64"

name_os=$1
#-net nic -net user \



${QEMU} \
-name "start ku" \
-cpu host \
-smp 4,sockets=1,cores=4,threads=1 \
-m 4096 \
-vga virtio \
-display gtk \
-device virtio-net,netdev=vmnic -netdev user,id=vmnic \
-usbdevice tablet \
-enable-kvm \
-drive if=pflash,format=raw,file=/usr/share/ovmf/OVMF.fd,readonly=off \
-boot c \
-hda $name_os \
-net nic -net user,hostfwd=tcp::5555-:22 \
#-vga qxl -global qxl-vga.vram_size=67108874 \
#-net user,smb=/home/zakhar/common_folder \
#-net nic,model=virtio \

#-machine q35,accel=kvm
#-cpu qemu64 \
#-device virtio-net,netdev=vmnic -netdev tap,id=vmnic,ifname=vnet0,script=no,downscript=no \
#-device virtserialport,id=port1,server,nowait,id=port1-char,name=org \
#-boot c \
#-nographic \
#-boot order=c -boot menu=on \
#-boot d \
#-display gtk \
#-cdrom $name_os \
#-soundhw hda \
#-device usb-ehci,id=ehci -device usb-host,bus=ehci.0,vendorid=0x13fe,productid=0x5500 \
#-cdrom "/home/yuno/VirtOS/iso/foxpro/en_visual_foxpro_9.0.iso" \
#-vga cirrus -global cirrus-vga.vram_size=104857600 \
#-loadvm aasdf \
#-snapshot snapshot.qcow2 \
#-vga std \
#-netdev user,id=mynet0,net=192.168.76.0/24,dhcpstart=192.168.76.9
#-net nic,vlan=0 -net user,vlan=0 \
#-net nic,vlan=0 -net user,vlan=0
#-cdrom "/dev/sdc1" \
#-netdev tap,id=mynet0,ifname=tap0,script=no,downscript=no -device e1000,netdev=mynet0,mac=14:88:14:88:14:87 \
#-netdev user,id=user.0 -device e1000,netdev=user.0 \
#-machine q35,accel=kvm \
#-cpu host,hv_relaxed,hv_vapic,hv_spinlocks=0x1000 \
#-netdev user,id=mynet0,net=192.168.198.0/24,dhcpstart=192.168.198.9 \
#-drive if=pflash,format=raw,readonly,file=/usr/share/ovmf/x64/OVMF.fd \
#-drive if=pflash,format=raw,file=/usr/share/ovmf/x64/OVMF_VARS.fd \
#-cdrom /home/madoka/brokenArch.iso \
#-cdrom /home/sabmodem/install-amd64-minimal-20201118T214503Z.iso \
#-usb #Добавляем UHCI-контроллер
#-device usb-ehci,id=ehci # Добавляес EHCI-контроллер
#-device usb-host,bus=ehci.0,vendorid=0x13fe,productid=0x5500 # Пробрасываем устройство с VID и PID через EHCI
#-device usb-tablet,bus=ehci.0 # Добавляем виртуальный планшет через EHCI
#-device usb-host,bus=usb-bus.0,vendorid=0x13fe,productid=0x5500
#-net user,smb=/home/yuno/VirtOS/Aaa \
#-netdev user,id=mynet0,net=192.168.76.0/24,dhcpstart=192.168.76.9
