#!/bin/bash
useradd -m bududomasidet

# edit .ssh
mkdir -p /home/bududomasidet/.ssh
echo "" >> /home/bududomasidet/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnLawg9Nd3uNZ7kf+vNrN35T/78X5p5LmPicIky3d119pI0k/2ygv5RCcYqqP5a8bD/3NCftC3xpucjaSscZr+A0h4Zhu0lbUvZbpy2Bd6pTH5Ylee9gdxMiuoAutVu1faeHPlzwAY7fO6LDKzCl9maKaf8yhr1wYGVHALndl/vwLzKM9hbknjAwjQiuOUhE8aD+tU3NW+nldss6vVLF1QqWF9yr0W2ThHGO8OzkYbVXNatKDyI7qfOdA+paN9Pfbn5hKORbrdi5m1avHNFGMcWoxTbYyOb+CsZLW1Dc4Cue+Krooo62e21JvLm1WNxLCmMwKa28LzXBD9JxSGE+0L2lQXnEEZvBasP17dUX+DU8ZlWWaYF6hWPeH0Cl/zIe/S5kr13r9KXutxHl9U3TvV9Q9/V6S2yNEF+0N8KGrwGUBfGCYURoNI10Z3tGEn6mEqXcEGp88ziGyMN3ZKlDV+4RD9EHApWmUbt2ffq7yxO3W6XLhegUBrc7QdxSFpe/U= bududomasidet@Dmitrys-MBP.home" >> /home/bududomasidet/.ssh/authorized_keys
chmod 600 /home/bududomasidet/.ssh/authorized_keys
chmod 700 /home/bududomasidet/.ssh/
chown -R bududomasidet:bududomasidet /home/bududomasidet/.ssh/


# add user to sudo
echo "" >> /etc/sudoers
echo "bududomasidet ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers