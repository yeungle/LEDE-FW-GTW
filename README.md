1，Docker 创建网络：  
docker network create --subnet=172.18.1.0/24 --gateway 172.18.1.1 MyNET

2，部署固定IP的 ADGuard Home：  
docker run -d --name AdGuard-Home1 -v /opt/docker/AGH_Docker1:/opt/adguardhome/work -v /opt/docker/AGH_Docker1:/opt/adguardhome/conf -p 3001:3000 --restart always --net MyNET --ip 172.18.1.10 adguard/adguardhome:latest

最新增强版模型 Model-ML-Enhance.bin 使用方法：将 Model-ML-Enhance.bin 改名为 Model.bin：
1，openclash上传到：/etc/openclash

ZashBoard 配置导入：https://gh-proxy.com/raw.githubusercontent.com/liandu2024/little/refs/heads/main/zashboard/zashboard-20250417.json

LEDE：

防火墙-区域设置-常规设置-允许转发到目标区域：+LAN，+WAN

防火墙-区域设置-高级设置-涵盖的设备：+桥接Br，+桥接docker

DHCP/DNS-设置及端口-DNS 服务器端口：53-0

openclash：

插件设置-DNS设置-本地劫持：使用dnsmasq转发-禁用

覆写设置-DNS设置-取消勾选 追加上游 DNS

设置自定义上游 DNS 服务器（在上方设置中启用本功能后生效）-勾选172.18.1.10
