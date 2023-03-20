## traefik v2.9.8 嵌码方案
### 功能说明
+ 使用听云Go探针对Traefik嵌码, 完善跨应用追踪链路

### 编译/镜像制作
1. 编译环境
  + linux系统
  + docker环境
  + go1.19.x

2. 编译
```bash
# 执行build.sh脚本
./build.sh
```
3. 镜像制作
```bash
#
docker build -t tingyun-traefik:v2.9.8 .
```

### 探针配置
1. 容器/pod部署方式运行traefik的配置
  + traefik:v2.9.8 替换成 tingyun-traefik:v2.9.8
  + 创建容器/Pod时设置环境变量:
  ```
  # 1. 配置授权字符串
  #  TINGYUN_LICENSE_KEY="${TingyunLicense}"
  # 2. 配置collector服务器地址
  #  TINGYUN_COLLECTORS="${CollectorAddress}"
  ```
2. 单独运行traefik的配置
  + 参考tingyun.conf文件,在配置文件里设置好collector.address 地址和license_key
  + 在traefik运行前设置环境变量 TINGYUN_GO_APP_CONFIG=/path/to/tingyun.conf
  