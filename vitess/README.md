# Vitess知识总结
## Vitess概述
- 官网文档地址：https://vitess.io/overview/
- GitHub仓库地址：https://github.com/vitessio/vitess

## 实践操作
- 初始化机器
  - https://raw.githubusercontent.com/mds1455975151/tools/master/shell/host_init.sh
  
- Go环境
  - https://raw.githubusercontent.com/mds1455975151/tools/master/go/go_install.sh
  
- MySQL环境
  - https://github.com/mds1455975151/tools/blob/master/mysql/install_mysql.sh
  
- JDK安装
  - 
- 下载Vitess源码并编译
  - https://codeload.github.com/vitessio/vitess/tar.gz/v2.1.1

  - http://apache.org/dist/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz

  - https://github.com/coreos/etcd/releases/download/v3.1.0-rc.1/etcd-v3.1.0-rc.1-linux-amd64.tar.gz

  - https://releases.hashicorp.com/consul/0.7.2/consul_0.7.2_linux_amd64.zip
  
## 客户端
- [PHP](https://github.com/pixelfederation/vitess-php-pdo)
- [Java]()
- [Python]()
- [Go]()

## 相关项目
- https://github.com/square/shift
- https://github.com/github/orchestrator

## 常见MySQL水平扩展架构
- [mysql-proxy](https://github.com/mysql/mysql-proxy)
- [mycat](https://github.com/MyCATApache/Mycat-Server)
- [cobar](https://github.com/alibaba/cobar)
- [Atlas](https://github.com/Qihoo360/Atlas)
- [58同城Oceanus](https://github.com/58code/Oceanus)
- **[YouTube开源vitess](https://github.com/vitessio/vitess)**
- TDDL
- [heisenberg](https://github.com/brucexx/heisenberg)
- [非开源OneProxy](https://github.com/mark-neil-wang/OneProxy)
- [dble](https://github.com/actiontech/dble)
- [网易cetus](https://github.com/Lede-Inc/cetus)

## FQA
- Vitess+RDS

  - https://github.com/vitessio/vitess/issues/2518
- 常用端口

  - vtctld_web_port=15000(vtctld)
  - grpc_port=15999(vtctld)
  
  - uid_base=${UID_BASE:-'100'}         # 未指定则为100
  - port_base=$[15000 + $uid_base]
  - grpc_port_base=$[16000 + $uid_base](vttablet)
  - mysql_port_base=$[17000 + $uid_base](vttablet+MySQL)

  
## 参考资料
- http://jixiuf.github.io/blog/go_vitess_start.html/
- https://github.com/jixiuf/vitess-build-patch
- http://www.cnblogs.com/davygeek/p/6433296.html
- [Intro.pdf](https://github.com/mds1455975151/tools/blob/master/vitess/official-web-docs/pdf/Vitess%20-%20Percona%20Live%202016.pdf)
