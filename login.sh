#! /usr/bin/env bash
# 此脚本功能为模拟登录成电微教务微信公众号网页，获取 cookie 并同步设置到用户环境变量供 Nginx lua 脚本读取
# 此脚本应当定时运行，目前测试 30 分钟 cookie 不失效

# 请修改脚本中的 USERNAME 和 PASSWORD 为自己的账号，并妥善保管，避免泄露
# USERNAME: 学号
# PWD：统一身份认证系统密码

USERNAME=xxxxxxxxxxxxxx
PWD=xxxxxx
cookie=$(curl 'http://wx.jwc.uestc.edu.cn/wx/Login.action' -d "userCode=${USERNAME}&pwd=${PWD}" -s -i | grep Set-Cookie)
time=$(date "+%Y-%m-%d %H:%M:%S")
export JWCCOOKIE=${cookie#*Set-Cookie: }
echo "${cookie#*Set-Cookie: } ${time} "