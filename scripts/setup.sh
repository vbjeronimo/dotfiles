#!/bin/bash

# Drive to install to
DRIVE='/dev/sda'

install() {
    # Update system clock
    timedatectl set-ntp true

    # Partition the disk
    parted --script "$DRIVE" \
        mklabel gpt \
        mkpart primary fat32 1MiB 501MiB \
        mkpart primary ext4 501MiB 30.5GiB \
        mkpart primary linux-swap 30.5GiB 46.5GiB \
        mkpart primary ext4 46.5GiB 100% \
        set 1 esp on
}

install
