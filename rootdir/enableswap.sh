#!/bin/sh
echo lz4 > /sys/block/zram0/comp_algorithm
echo 536870912 > /sys/block/zram0/disksize
/system/bin/mkswap /dev/block/zram0
/system/bin/swapon /dev/block/zram0
