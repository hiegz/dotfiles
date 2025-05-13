#!/bin/bash

sudo pacman -S --needed --noconfirm \
    alsa-tools                      \
    acpica

sudo iasl -tc $HOME/.kickstart/um3402ya/ssdt_csc3551.dsl
sudo cp -f $HOME/.kickstart/um3402ya/ssdt_csc3551.aml /boot
sudo cp -f $HOME/.kickstart/um3402ya/01_acpi /etc/grub.d
sudo chmod +x /etc/grub.d/01_acpi
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "1. Local the 'Options' section in the upper-left corner of the window"
echo "2. Tick the checkbox marked 'Show unconnected pins'"
echo "3. Locate the unconnected pin with the ID 0x19"
echo "4. Select 'Microphone' instead of the option 'Not connected'"
echo "5. Click the 'Apply now' button"
echo "6. Verify if the changes have had the desired effect"

sudo -E hdajackretask
