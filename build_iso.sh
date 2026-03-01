#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

PROFILE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="$PROFILE_DIR/out"
WORK_DIR="$OUT_DIR/work"

echo "[*] Проверка прав..."
if [[ $EUID -ne 0 ]]; then
    echo "Ошибка: скрипт нужно запускать от root."
    exit 1
fi

echo "[*] Проверка наличия mkarchiso..."
if ! command -v mkarchiso &>/dev/null; then
    echo "[*] Устанавливаю archiso..."
    pacman -Sy --noconfirm archiso
fi

echo "[*] Очистка старых сборок..."
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

echo "[*] Сборка ISO..."
mkarchiso -v -w "$WORK_DIR" -o "$OUT_DIR" "$PROFILE_DIR"

echo "[+] Готово! ISO находится в: $OUT_DIR"
