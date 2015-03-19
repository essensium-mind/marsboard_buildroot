#!/bin/sh

set -e -u

TARGET_DIR=$1
BOARD_DIR=$(dirname "$0")

mkimage -A arm -O linux -T script -C none -n "boot script" \
    -d "$BOARD_DIR/boot.cmd" "$TARGET_DIR/boot/boot.scr"
