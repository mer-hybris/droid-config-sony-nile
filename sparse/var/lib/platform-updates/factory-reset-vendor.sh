#!/bin/sh

# Copy backup partition (vendor_a) to vendor_b
dd if=/dev/mmcblk0p70 of=/dev/mmcblk0p71 bs=1M

