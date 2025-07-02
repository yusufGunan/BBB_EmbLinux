#!/bin/bash

# Define source and target directories
# Initramfs
INITRAMFS_SRC_DIR="/home/ysfgnn/EmbeddedLinux/busybox/initramfs"
INITRAMFS_TRG_DIR="/home/ysfgnn/EmbeddedLinux/BBBgit/BBB_EmbLinux"
# Rootfs
ROOTFS_SRC_DIR="/home/ysfgnn/EmbeddedLinux/busybox/rootfs"
ROOTFS_TRG_DIR="/home/ysfgnn/EmbeddedLinux/BBBgit/BBB_EmbLinux"
# Bootloader(Fatfs)

# Check if source exists
if [ ! -d "$INITRAMFS_SRC_DIR" ]; then
	echo "initramfs source directory not exist: $INITRAMFS_SRC_DIR"
	exit 1
fi

if [ ! -d "$ROOTFS_SRC_DIR" ]; then
        echo "rootfs source directory not exist: $ROOTFS_SRC_DIR"
        exit 1
fi

sudo cp -r "$INITRAMFS_SRC_DIR" "$INITRAMFS_TRG_DIR"
sudo cp -r "$ROOTFS_SRC_DIR" "$ROOTFS_TRG_DIR"

echo "Folder updated ..."
