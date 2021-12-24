#!/bin/bash

# Drive to install to
DRIVE='/dev/sda'

install() {
    # Update system clock
    timedatectl set-ntp true

    # Partition the disk
    parted -s "$DRIVE" \
        mklabel gpt \
        mkpart "EFI system partition" fat32 1MiB 501MiB \
        mkpart "root partition" ext4 501MiB 30.5GiB \
        mkpart "swap partition" linux-swap 30.5GiB 46.5GiB \
        mkpart "home partition" ext4 46.5GiB 100% \
        set 1 esp on
}

install
