#!/bin/bash
#This script installs the syslinux config file...
#
#
BOOT_DIR=$1

cat config/syslinux/syslinux.cfg | sed "s#INSTALLDIR#$BOOT_DIR#g" | tee /mnt/boot/syslinux/syslinux.cfg
echo "SYSLINUX CONFIG UPDATE DONE; Boot set to: $BOOT_DIR"
