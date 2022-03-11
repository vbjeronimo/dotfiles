#!/bin/bash

# Drive to install to
DRIVE='/dev/sda'

install() {
    echo "[*] Starting installation script..."
    sleep 1

    echo "[*] Updating system clock..."
    timedatectl set-ntp true

    echo "[*] Partitioning the disks..."
    partition_disk "$DRIVE"

    echo "[*] Formatting the partitions..."
    format_filesystem "$DRIVE"
}

partition_disk() {
    local dev="$1"

    parted --script "$DRIVE" \
        mklabel gpt \
        mkpart primary fat32 1MiB 501MiB \
        mkpart primary ext4 501MiB 30.5GiB \
        mkpart primary linux-swap 30.5GiB 46.5GiB \
        mkpart primary ext4 46.5GiB 100% \
        set 1 esp on
}

format_filesystem() {
    local dev="$1"

    mkfs.fat -F 32 "$dev"1
    mkfs.ext4 "$dev"2
    mkswap "$dev"3
    mkfs.ext4 "$dev"4
}
