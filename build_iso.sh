#!/usr/bin/env bash
set -e

echo "== ArchInstaller v0.0.7 EXTREME++ ISO Builder =="

WORKDIR="./work"
OUTDIR="./out"

mkdir -p "$WORKDIR" "$OUTDIR"

mkarchiso -v -w "$WORKDIR" -o "$OUTDIR" archiso
