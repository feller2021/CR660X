#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default
#echo 'src-git openclash https://github.com/vernesong/OpenClash.git' >>feeds.conf.default
echo 'src-git cloudflared https://github.com/yichya/openwrt-cloudflared.git' >>feeds.conf.default
echo 'src-git wifidog https://github.com/liudf0716/apfree_wifidog.git' >>feeds.conf.default

# echo 'src-git app-store https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-store' >>feeds.conf.default 
# echo 'src-git app-advanced https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-advanced' >>feeds.conf.default 
# echo 'src-git cloudflared https://github.com/kiddin9/openwrt-packages/tree/master/openwrt-cloudflared' >>feeds.conf.default 
# echo 'src-git openssl https://github.com/kiddin9/openwrt-packages/tree/master/openssl' >>feeds.conf.default 
# echo 'src-git neobird https://github.com/thinktip/luci-theme-neobird' >>feeds.conf.default 
# echo 'src-git argon_armygreen https://github.com/XXKDB/luci-theme-argon_armygreen' >>feeds.conf.default 
# echo 'src-git bypass https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-bypass' >>feeds.conf.default 
# echo 'src-git netspeedtest https://github.com/sirpdboy/netspeedtest/tree/master/luci-app-netspeedtest' >>feeds.conf.default 
# echo 'src-git autotimeset https://github.com/sirpdboy/luci-app-autotimeset' >>feeds.conf.default 
# echo 'src-git unblockneteasemusic https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-unblockneteasemusic' >>feeds.conf.default
