#!/bin/bash

# 修改默认IP
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate


sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=65535' package/base-files/files/etc/sysctl.conf


sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
 
# 更改默认 Shell 为 zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# TTYD 免登录
# sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config



# ./scripts/feeds update -a
# ./scripts/feeds install -a
