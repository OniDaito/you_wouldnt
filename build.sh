#!/bin/bash
VASM_PATH=/home/oni/Projects/vbcc/bin
PASMO_PATH=/home/oni/Projects/pasmo
ZXBASIC_PATH=/home/oni/Projects/zxbasic
BIN2TAP_PATH=/home/oni/Projects/bin2tap

mkdir ./build

# Build with PASMO
$PASMO_PATH/pasmo -d -v --bin youwouldnt.asm ./build/youwouldnt.bin

# Build the tap files for tape emulations
$BIN2TAP_PATH/bin2tap -b ./build/youwouldnt.bin -o ./build/youwouldnt.tap
