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

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 添加旁路由防火墙
# echo "iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE" >> package/network/config/firewall/files/firewall.user

# Add a feed source
echo '我证明diy-part1.sh脚本已经成功运行'
# 科学插件
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default

# echo 'src-git bypass https://github.com/tianiue/luci-app-bypass.git' >>feeds.conf.default

#echo 'src-git openclash https://github.com/vernesong/OpenClash.git' >>feeds.conf.default
echo 'src-git wiwiz https://github.com/wiwizcom/WiFiPortal.git' >>feeds.conf.default
echo 'src-git nodogsplashpz https://github.com/tty228/luci-app-nodogsplash.git' >>feeds.conf.default

# echo 'src-git wifidog https://github.com/liudf0716/apfree_wifidog.git' >>feeds.conf.default


# 修改自带主题，删除原主题包
rm -rf package/lean/luci-theme-argon

# echo 'src-git app-store https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-store' >>feeds.conf.default 
# echo 'src-git app-advanced https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-advanced' >>feeds.conf.default 
# echo 'src-git openssl https://github.com/kiddin9/openwrt-packages/tree/master/openssl' >>feeds.conf.default 

# echo 'src-git bypass https://github.com/kiddin9/openwrt-packages/tree/master/luci-app-bypass' >>feeds.conf.default 
# echo 'src-git netspeedtest https://github.com/sirpdboy/netspeedtest/tree/master/luci-app-netspeedtest' >>feeds.conf.default 
# echo 'src-git autotimeset https://github.com/sirpdboy/luci-app-autotimeset' >>feeds.conf.default 
# echo 'src-git unblockneteasemusic https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-unblockneteasemusic' >>feeds.conf.default
# echo 'src-git unblockneteasemusic https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git' >>feeds.conf.default

echo "src-git OAF https://github.com/destan19/OpenAppFilter" >> ./feeds.conf.default
# echo "src-git OAF https://github.com/destan19/OpenAppFilter" >> ./feeds.conf.default  应用过滤



# 添加新的主题包 # Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon



