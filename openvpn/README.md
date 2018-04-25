# OpenVPN资料总结
``` bash
# cat /etc/redhat-release 
CentOS Linux release 7.2.1511 (Core) 
# uname -r
3.10.0-514.26.2.el7.x86_64
# uname -m
x86_64

yum install -y easy-rsa openssh-server lzo openssl openssl-devel openvpn NetworkManager-openvpn openvpn-auth-ldap
cp /usr/share/doc/openvpn-*/sample/sample-config-files/server.conf /etc/openvpn
# grep -vE "^$|^#|^;" server.conf       //默认配置
port 1194
proto udp
dev tun
ca ca.crt
cert server.crt
key server.key  # This file should be kept secret
dh dh2048.pem
server 10.8.0.0 255.255.255.0
ifconfig-pool-persist ipp.txt
keepalive 10 120
tls-auth ta.key 0 # This file is secret
cipher AES-256-CBC
persist-key
persist-tun
status openvpn-status.log
verb 3
explicit-exit-notify 1

# vim server.conf
port 1194
proto tcp　　　　#指定TCP协议(使用TCP协议如果连接上VPN后网络很慢，可以更改成使用UDP协议)
dev tun　　　　# 采用路由隧道模式
ca ca.crt
cert server.crt
key server.key　　　　# This file should be kept secret 服务器密钥
dh dh2048.pem　　　　# 密钥交换协议文件
topology subnet
server 10.8.0.0 255.255.255.0　　　　# 给客户端分配地址池，注意：不能和VPN服务器内网网段相同
ifconfig-pool-persist ipp.txt
push "route 0.0.0.0 0.0.0.0"　　　　 # 定义网关
push "route 192.168.0.0 255.255.255.0"　　　　# 推送vpn服务器内网网段给客户端
push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 223.5.5.5"
push "dhcp-option DNS 114.114.114.114"
;client-to-client     # 这里为了安全起见，我禁止了客户端间的互访
;duplicate-cn　　　　# 正式环境下建议注释掉，因为会有安全隐患
keepalive 10 120　　　　# 存活时间，10秒ping一次,120 如未收到响应则视为断线
tls-auth ta.key 0　　　　# 第二个参数在服务器端应该为'0'，在客户端应该为'1'。
cipher AES-256-CBC　　　　# 选择一个密码加密算法。
comp-lzo　　　　# 传输数据压缩
max-clients 50　　　　# 最多允许 50 客户端连接
persist-key
persist-tun
status openvpn-status.log　　　　# OpenVPN的状态日志
log-append openvpn.log　　　　# OpenVPN的运行日志(追加)
verb 3
mute 20　　　　# 相同类别的信息只有前20条会输出到日志文件中
```
# 参考资料
- https://www.cnblogs.com/airoot/p/7252987.html
- https://blog.csdn.net/zhemeban/article/details/69665985
