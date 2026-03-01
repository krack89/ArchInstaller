#!/usr/bin/env bash
set -e
echo "[*] EXTREME++ system tuning"
echo "vm.swappiness=10" > /etc/sysctl.d/99-gaming.conf
echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/99-wheel
systemctl enable gdm NetworkManager cups
