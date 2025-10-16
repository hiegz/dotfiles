#!/bin/bash

paru -S --noconfirm --needed \
    cups \
    cups-pdf \
    cnijfilter2

sudo systemctl enable --now cups

# further setup instruction
#
# `lpinfo -v` to list all printers connected to the system
# `lpinfo -m` to list the available drivers.
#
# `lpadmin -p NAME -E -v URI -m DRIVER` to add a printer
# `lpoptions -p NAME -l` to list printer options
# `lpoptions -p NAME -o` to set options to a value
#
# `cupsenable` enables the printer
# `cupsaccept` sets the printer up to accept jobs
# `cupsreject` sets the printer up to reject all incoming tasks
# `cupsdisable` disables the printer
