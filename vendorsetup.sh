#!/bin/bash

# Clone kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 https://github.com/rsuntk/android_kernel_asus_sdm660-4.19 kernel/asus/sdm660

# Clone common tree
rm -rf device/asus/sdm660-common
git clone https://github.com/rdw-afk/15device_asus_sdm660-common-4.19 -b 16 device/asus/sdm660-common

# Clone vendor tree
rm -rf vendor/asus
git clone --single-branch https://github.com/Tiktodz/proprietary_vendor_asus-4.19 --depth=1 vendor/asus

# Clone keys
rm -rf vendor/lineage-priv/keys
#mkdir -p vendor/lineage-priv/keys
#git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/

export BUILD_USERNAME=tomtzy
export TZ=Asia/Jakarta
