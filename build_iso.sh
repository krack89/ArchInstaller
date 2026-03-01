#!/usr/bin/env bash
set -euo pipefail

PROFILE_DIR="$(pwd)"
OUT_DIR="$PROFILE_DIR/out"

# Проверка root
if [[ $EUID -ne 0 ]]; then
    echo "Ошибка: скрипт нужно запускать от root."
    exit 1
fi

# Проверка archiso
if ! command -v mkarchiso &>/dev/null; then
    echo "Устанавливаю archiso..."
    pacman -Sy --noconfirm archiso
fi

# Очистка
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

echo "Собираю ISO..."
mkarchiso -v -w "$OUT_DIR/work" -o "$OUT_DIR" "$PROFILE_DIR"

echo "Готово! ISO находится в $OUT_DIR"
