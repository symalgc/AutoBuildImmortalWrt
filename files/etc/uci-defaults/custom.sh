#!/bin/sh

# 设置主机名映射，解决安卓原生 TV 无法联网的问题
uci add dhcp domain
uci set "dhcp.@domain[-1].name=time.android.com"
uci set "dhcp.@domain[-1].ip=203.107.6.88"


# 网络设置
if [ "$count" -eq 1 ]; then
  uci set network.lan.proto='dhcp'
elif [ "$count" -gt 1 ]; then
  uci set network.lan.ipaddr='192.168.50.251'
fi


