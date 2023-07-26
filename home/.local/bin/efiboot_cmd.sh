#!/bin/sh
# setup bootentry
# https://wiki.archlinux.org/title/EFISTUB#efibootmgr

sudo efibootmgr --create --disk /dev/nvme0n1 --part 1 --label "archspectre" --loader /vmlinuz-linux --unicode 'root=UUID=6dd16c46-0e98-4050-846c-ffa2e10b1037 resume=UUID=6dd16c46-0e98-4050-846c-ffa2e10b1037 resume_offset=1828864 rw initrd=\intel-ucode.img initrd=\initramfs-linux.img quiet'

sudo efibootmgr --create --disk /dev/nvme0n1 --part 1 --label "archspectre-lts" --loader /vmlinuz-linux-lts --unicode 'root=UUID=6dd16c46-0e98-4050-846c-ffa2e10b1037 resume=UUID=6dd16c46-0e98-4050-846c-ffa2e10b1037 resume_offset=1828864 rw initrd=\intel-ucode.img initrd=\initramfs-linux-lts.img quiet'
