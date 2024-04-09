#!/bin/sh

# CMD Line Argument 1: Source host ex. root@8.8.8.8
# CMD Line Argument 2: Path to source file ex. C:/Users/me/file

rm -f /sdcard/ifs-rpi4.bin
scp $1:$2 /sdcard/ifs-rpi4.bin
shutdown