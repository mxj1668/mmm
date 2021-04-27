#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 基本不需要添加啥插件了,我搜集了各位大神的插件都集成一个软件包直接打入源码里面了
# 要了解增加了什么东西，就到我的专用软件包里面看看看吧，如果还是没有你需要的插件，请不要一下子就拉取别人的插件包
# 相同的文件都拉一起，因为有一些可能还是其他大神修改过的容易造成编译错误的
# 想要什么插件就单独的拉取什么插件就好，或者告诉我，我把插件放我的插件包就行了
# 软件包地址：https://github.com/281677160/openwrt-package
# 拉取插件请看《各种命令的简单介绍》第4条、第5条说明,不管大神还是新手请认真的看看,再次强调请不要一下子就拉取别人一堆插件的插件包,容易造成编译错误的
#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus                                                     #SSR出国 
git clone https://github.com/vernesong/OpenClash package/luci-app-openclash                                                 #openclash出国软件
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom                 #透明主题
#git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon                                           #argon主题
rm -rf ./package/lean/luci-theme-argon && git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon  #删除lean主题安装新的argon主题
rm -rf ./package/lean/luci-theme-netgear                                                                                    #删除lean主题安装新的netgear主题
#全新的[argon-主题]此主题玩法很多,这里看说明【https://github.com/jerrykuku/luci-theme-argon/blob/18.06/README_ZH.md】
#用WinSCP连接openwrt，在/www/luci-static/argon里面创建background文件夹（如果本身就有background就不需要创建）来存放jpg png gif格式图片可以自定义登陆界面，gif图片为动态登陆界面
