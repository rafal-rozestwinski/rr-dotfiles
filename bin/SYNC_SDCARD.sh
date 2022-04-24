#!/bin/bash -x
set -e
set -x

cleanup() {
  echo "Cleanup - umount /mnt/3dp1"
  sync || true
  sudo umount /mnt/3dp1 || true
}
trap cleanup EXIT
trap cleanup SIGINT

sudo umount /mnt/3dp1 || true
PART_UUID=xxxxxxxxx
#F0EC-DB34


# ender3: mkfs.fat -i F0ECDB34 /dev/sdd1
# ender5:
if ls -1 /dev/disk/by-uuid | grep D9F9-116A ; then
        echo "PARTITION FOUND! ender5 card"
        PART_UUID=D9F9-116A
else
        if ls -1 /dev/disk/by-uuid | grep F0EC-DB34 ; then
                echo "PARTITION FOUND - ender3/apm card"
                PART_UUID=F0EC-DB34
        else
                echo "Card not found. Exiting"
                exit 1
        fi
fi

sudo mount -t vfat -o rw,uid=1000,gid=1000,umask=022 /dev/disk/by-uuid/$PART_UUID /mnt/3dp1/
sudo mkdir -vp /mnt/3dp1/0sync/
sudo rsync -r --no-perms --no-owner --no-group . /mnt/3dp1/0sync/
sync
sudo umount /mnt/3dp1
