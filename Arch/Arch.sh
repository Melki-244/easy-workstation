loadkeys br-abnt2
fdisk /dev/sda 
g,
n +500M 
n +2G
n +50G
n + 
t 1 4
t 2 19 

mkfs.fat -F32 /dev/sda1 
mkswap /dev/sda2 
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
 
mount /dev/sda3 /mnt 
mkdir /mnt/home 
mkdir /mnt/boot
mount /dev/sda4 /mnt/home 
swapon /dev/sda2 

pacstrap base base-devel linux linux-firmware /mnt
genfsab -U -p /mnt >>/mnt/etc/fstab 
arch-chroot /mnt 
ln -sf / usr /share/zoneinfo/America/Sao_Paulo /etc/localtime
hwclock --systohc
vim /etc/locale.gen
locale-gen
echo LANG=pt_BR.UTF-8 >> /etc/locale.conf
echo Arch-Melki >> /etc/hostname
pacman -S dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog sudo
vim /etc/hosts
127.0.0.1 localhost.localdomain    localhost
:: 1 localhost.localdomain         localhost 
127.0.1.1 Arch-Melki.localdomain   Arch-Melki
passwd 
pacman -S grub 
grub-install --target=i386-pc --recheck /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
reboot 
systemctl start NetworkManager
systemctl enable NetworkManager
pacman -Sy 
pacman -S xorg-server 
pacman -s virtualbox-guest-utils virtualbox-host-modules-arch mesa mesa-libgl




