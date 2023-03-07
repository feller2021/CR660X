**English** | [中文](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt
## https://github.com/vernesong/OpenClash
## https://github.com/jerrykuku/luci-app-vssr
[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

A template for building OpenWrt with GitHub Actions

## Usage

- Click the [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) button to create a new repository.
- Generate `.config` files using [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) source code. ( You can change it through environment variables in the workflow file. )
- Push `.config` file to the GitHub repository.
- Select `Build OpenWrt` on the Actions page.
- Click the `Run workflow` button.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

## Tips

该文件对应本地编译执行make menuconfig后生成的.config文件。

该文件主要包含luci应用，流程中会自动转为完整的.config。

增减插件修改这个文件即可，以argon主题为例，格式如下：

CONFIG_PACKAGE_luci-theme-argon=y 选中编译进固件的是这种

CONFIG_PACKAGE_luci-theme-argon=m 选中仅编译ipk插件是这种

# CONFIG_PACKAGE_luci-theme-argon is not set 未选中是这种
## Credits



## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)



## 55
$ vim ./package/lean/default-settings/files/zzz-default-settings    # 打开要编辑的文件

uci set network.lan.ipaddr='192.168.1.254'   # 默认 IP 地址
uci set network.lan.proto='static'   # 静态 IP
uci set network.lan.type='bridge'   # 接口类型：桥接
uci set network.lan.ifname='eth0'   # 网络端口：默认 eth0，第一个接口
uci set network.lan.netmask='255.255.255.0' # 子网掩码
uci set network.lan.gateway='192.168.1.1'   # 默认网关地址（主路由 IP）
uci set network.lan.dns='192.168.1.1'  # 默认上游 DNS 地址
uci commit network



假设有三台路由器的固件需要编译，比如 K2P、x86_64 软路由、新路由 3。

生成它们的.config文件
分别将它们重命名为k2p.config、x64.config、d2.config放入本地仓库根目录。
复制多个 workflow 文件（.github/workflows/build-openwrt.yml）。为了更好的区分可以对它进行重命名，比如k2p.yml、x64.yml、d2.yml。此外第一行name字段也可以进行相应的修改。
然后分别用上面修改的文件名替换对应 workflow 文件中下面两个位置的.config，不同的机型同样可以使用不同的 DIY 脚本。
...
    paths:
      - '.config'
...
        CONFIG_FILE: '.config'
        DIY_SH: 'diy.sh'
...
