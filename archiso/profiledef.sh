#!/usr/bin/env bash

iso_name="ArchInstaller"
iso_label="ARCHINSTALLER_007"
iso_publisher="EXTREME++ 2026"
iso_application="ArchInstaller EXTREME++ Gaming Edition"
iso_version="0.0.7"
install_dir="archinstaller"

buildmodes=('iso')
bootmodes=('uefi-x64.systemd-boot' 'bios.syslinux.mbr')

arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
