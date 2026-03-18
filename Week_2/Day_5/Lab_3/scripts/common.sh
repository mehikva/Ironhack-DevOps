#!/usr/bin/bash
set -euo pipefail
 
LOG_DIR=${LOG_DIR:-"/mnt/c/Users/Mehi/OneDrive/Desktop/Ironhack-DevOps/Week_2/Day_5/Lab_3/lab3-outputs"}
mkdir -p "$LOG_DIR"
 
log() { echo "[$(date +%F_%T)] $*" | tee -a "$LOG_DIR/lab3.log"; }
die() { echo "ERROR: $*" >&2; exit 1; }
require() { command -v "$1" >/dev/null 2>&1 || die "Missing dependency: $1"; }
