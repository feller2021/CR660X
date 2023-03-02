**English** | [中文](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt

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

CONFIG_PACKAGE_luci-app-accesscontrol=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-wifischedule=y
CONFIG_PACKAGE_luci-app-aliyundrive-webdav=y
CONFIG_PACKAGE_luci-app-airplay2=y
CONFIG_PACKAGE_luci-app-baidupcs-web=y
CONFIG_PACKAGE_luci-app-easymesh=y
CONFIG_PACKAGE_luci-app-serverchan=y
CONFIG_PACKAGE_luci-app-shairplay=y
CONFIG_PACKAGE_luci-app-statistics=y
CONFIG_PACKAGE_luci-app-vlmcsd=y
CONFIG_PACKAGE_luci-app-wrtbwmon=y
CONFIG_PACKAGE_luci-app-pushbot=y
CONFIG_PACKAGE_luci-app-ramfree=y


## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
