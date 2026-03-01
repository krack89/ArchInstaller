#!/usr/bin/env bash

iso_name="archinstaller"
iso_label="ARCHINSTALLER_$(date +%Y%m)"
iso_publisher="ArchInstaller <https://github.com/krack89/ArchInstaller>"
iso_application="ArchInstaller Live ISO"
iso_version="$(date +%Y.%m.%d)"

install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.systemd-boot')

arch="x86_64"
pacman_conf="pacman.conf"

airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')

file_permissions=(
  ["/usr/local/bin/archinstaller.sh"]="0:0:755"
)
