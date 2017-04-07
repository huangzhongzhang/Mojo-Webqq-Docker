# Mojo-Webqq-docker

使用docker来启动Mojo-Webqq，适用于不想在本机安装过多插件和应用，希望能快速推倒重启的童鞋。

灰灰官方也有[Dockerfile](https://github.com/sjdy521/Mojo-Webqq/blob/master/docker-image/Dockerfile)模板，但由于是基于docker hub的perl镜像，在国内下载很慢而且经常连不上。

故在原有模版的基础上稍加改进，基于Daocloud提供的centos镜像，以及灰灰打包的[Mojo-CentosPerl](https://github.com/sjdy521/Mojo-CentosPerl)二进制脚本，还有结合[Mojo-Webqq-Scripts](https://github.com/hzz1989/Mojo-Webqq-Scripts)来启动Mojo-Webqq。

希望能带来用脚本启动时的熟悉体验。

## Mojo::Webqq项目地址:
[Mojo::Webqq](https://github.com/sjdy521/Mojo-Webqq)  
感谢[灰灰](https://github.com/sjdy521)的倾情付出.

## 使用方式：

1. 克隆项目。

```shell
git clone https://github.com/hzz1989/Mojo-Webqq-docker.git
```

也可以直接下载解压：

```shell
wget https://github.com/hzz1989/Mojo-Webqq-docker/archive/master.zip -O Mojo-Webqq-docker.zip

unzip Mojo-Webqq-docker.zip
```

2. 修改`login.pl`文件。

修改`login.pl`文件，添加或删减功能。

具体可参考：[Mojo::Webqq使用简介](http://www.huangzhongzhang.cn/mojo-webqq-shi-yong-jian-jie.html)

```shell
cd Mojo-Webqq-docker

vim login.pl
```

3. 创建docker镜像。

```shell
cd Mojo-Webqq-docker

docker build -t mojo-webqq .
```

4. 启动镜像并扫描二维码。

```shell
docker run -t --name Mojo-Webqq --env MOJO_WEBQQ_LOG_ENCODING=utf8 -p 5011:5011 -v /tmp:/tmp mojo-webqq
```
