#!/bin/bash

python2 ./ImageResources/mkbootimg.py \
  --kernel ./Build/SurfaceDuo-AARCH64/DEBUG_GCC5/FV/SM8150_EFI.fd \
  --ramdisk ./ImageResources/ramdisk \
  --recovery_dtbo ./ImageResources/recovery_dtbo \
  -o ./boot.img \
  --pagesize 4096 \
  --header_version 2 \
  --cmdline "console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xa90000 androidboot.hardware=surfaceduo androidboot.hardware.platform=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 loop.max_part=7 androidboot.usbcontroller=a600000.dwc3 androidboot.boot_devices=soc/1d84000.ufshc buildvariant=user" \
  --dtb ./ImageResources/dtb \
  --base 0x0 \
  --os_version 10.0.0 \
  --os_patch_level 2021-11-01 \
  --second_offset 0xf00000
