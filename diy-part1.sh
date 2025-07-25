#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
sed -i 's/src-git luci https:\/\/github.com\/coolsnowwolf\/luci.git;openwrt-23.05/src-git luci https:\/\/github.com\/coolsnowwolf\/luci.git;openwrt-24.10/g' ./feeds.conf.default


