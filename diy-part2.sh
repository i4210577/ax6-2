#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/10.10.10.1/192.168.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/$1$WplwC1t5$HBAtVXABp7XbvVjG4193B.:18753:0:99999:7:::/$1$ttZeRDG3$V0pEG8rex5imt2uWJp3gO\/:18875:0:99999:7:::/g' package/base-files/files/etc/shadow
# modify wifi ssid 
sed -i 's/OpenWrt_2.4G/OpenWrt_5G/g'  package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '185s/OpenWrt_5G/OpenWrt_2.4G/' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# themes添加（svn co 命令意思：指定版本如https://github）
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
#git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomato.git package/luci-theme-opentomato
#git clone https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod.git package/luci-theme-argon-dark-mod

# Add luci-theme-argon
#git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
#git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
#rm -rf ../lean/luci-theme-argon

#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#VSSR
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
