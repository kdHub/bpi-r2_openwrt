apt-get update && apt-get install subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc wget unzip python openssl -y

cd /media/
curl -o openwrt-18.06.0-mediatek-mt7623-7623n-bananapi-bpi-r2-initramfs-kernel.bin https://downloads.openwrt.org/releases/18.06.0/targets/mediatek/mt7623/openwrt-18.06.0-mediatek-mt7623-7623n-bananapi-bpi-r2-initramfs-kernel.bin
curl -o openwrt-18.06.0-mediatek-mt7623-7623n-bananapi-bpi-r2-squashfs-sysupgrade.bin https://downloads.openwrt.org/releases/18.06.0/targets/mediatek/mt7623/openwrt-18.06.0-mediatek-mt7623-7623n-bananapi-bpi-r2-squashfs-sysupgrade.bin
curl -o openwrt-18.06.0-mediatek-mt7623.manifest https://downloads.openwrt.org/releases/18.06.0/targets/mediatek/mt7623/openwrt-18.06.0-mediatek-mt7623.manifest

curl -o openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64.tar.xz https://downloads.openwrt.org/releases/18.06.0/targets/mediatek/mt7623/openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64.tar.xz

tar -xvf openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64.tar.xz
rm -rf openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64.tar.xz

cd openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64
make image PACKAGES="nano openvpn"

#mv /media/openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64/bin/targets/mediatek/mt7623/openwrt-18.06.0-mediatek-mt7623-7623n-bananapi-bpi-r2-squashfs-sysupgrade.bin /media/shared
#mv /media/openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64/bin/targets/mediatek/mt7623/openwrt-18.06.0-mediatek-mt7623-default.manifest /media/shared
#mv /media/openwrt-imagebuilder-18.06.0-mediatek-mt7623.Linux-x86_64/bin/targets/mediatek/mt7623/sha256sums /media/shared
