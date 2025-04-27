# Exports

# cloning device tree
rm -rf device/xiaomi/sm6150-common
git clone https://github.com/Infinity-X-Devices/device_xiaomi_sm6150-common.git --depth 1 -b 15 device/xiaomi/sm6150-common

# cloning kernel tree
rm -rf inline-rom kernel/xiaomi/mojito
git clone https://github.com/Infinity-X-Devices/kernel_xiaomi_mojito.git --depth 1 -b inline-rom kernel/xiaomi/mojito

# cloning vendor tree
rm -rf vendor/xiaomi/mojito
rm -rf vendor/xiaomi/sm6150-common
git clone https://gitlab.com/romgharti/android_vendor_xiaomi_mojito.git --depth 1 -b 15 vendor/xiaomi/mojito
git clone https://gitlab.com/romgharti/android_vendor_xiaomi_sm6150-common.git --depth 1 -b 15 vendor/xiaomi/sm6150-common

# cloning hardware tree
rm -rf vendor/xiaomi/sm6150-common
git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi.git --depth 1 -b mojito hardware/xiaomi

# leica camera
rm -rf vendor/xiaomi/mojito-leicacamera
rm -rf vendor/xiaomi/miuiapps
git clone https://gitlab.com/dpenra/android_vendor_xiaomi_mojito-leicacamera.git --depth 1 -b main vendor/xiaomi/mojito-leicacamera
git clone https://gitea.com/miui-apps/vendor_xiaomi_miuiapps.git --depth 1 -b main vendor/xiaomi/miuiapps

rm -rf frameworks/native
git clone https://github.com/K4LCHAKRA/frameworks_native.git --depth 1 -b 15 frameworks/native

export TARGET_SUPPORTS_BLUR=true
