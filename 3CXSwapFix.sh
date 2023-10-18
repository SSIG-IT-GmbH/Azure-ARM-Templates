#!/bin/sh
echo '#!/bin/sh' > /var/lib/cloud/scripts/per-boot/swap.sh
echo 'if [ ! -f '/mnt/swapfile' ]; then' >> /var/lib/cloud/scripts/per-boot/swap.sh
echo 'fallocate --length 2GiB /mnt/swapfile' >> /var/lib/cloud/scripts/per-boot/swap.sh
echo 'chmod 600 /mnt/swapfile' >> /var/lib/cloud/scripts/per-boot/swap.sh
echo 'mkswap /mnt/swapfile' >> /var/lib/cloud/scripts/per-boot/swap.sh
echo 'swapon /mnt/swapfile' >> /var/lib/cloud/scripts/per-boot/swap.sh
echo 'swapon -a'  >> /var/lib/cloud/scripts/per-boot/swap.sh
echo 'else' >> /var/lib/cloud/scripts/per-boot/swap.sh
echo 'swapon /mnt/swapfile; fi' >> /var/lib/cloud/scripts/per-boot/swap.sh
chmod +x /var/lib/cloud/scripts/per-boot/swap.sh
/var/lib/cloud/scripts/per-boot/swap.sh