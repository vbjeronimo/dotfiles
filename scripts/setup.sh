HOSTNAME=""
USERNAME=""
ROOT_PASSWORD=""
USER_PASSWORD=""

pacman -S --noconfirm archlinux-keyring

# Time zone
ln -sf /usr/share/zoneinfo/Canada/Atlantic /etc/localtime
hwclock --systohc

# Localization
sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

# Network configuration
hostnamectl set-hostname $HOSTNAME
pacman -S --noconfirm networkmanager
systemctl enable NetworkManager

# Basic firewall setup
pacman -S --noconfirm ufw
systemctl enable ufw
ufw default deny
ufw allow from 192.168.0.0/24
ufw limit ssh
ufw enable

# Root management
echo "root:$ROOT_PASSWORD" | chpasswd

# Boot loader & microcode installation
pacman -S --noconfirm grub efibootmgr amd-ucode
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

# Install and config sudo
pacman -S --noconfirm sudo
sed -i 's/^# %wheel ALL=(ALL) ALL$/%wheel ALL=(ALL) ALL/' /etc/sudoers

# User management
useradd -m -G wheel $USERNAME
echo "$USERNAME:$USER_PASSWORD" | chpasswd

# install yay and the rest of the packages



