# 上古神器VIM
Vim 是一款比较古老的编辑器，对于Linux下的用户来讲是一款非常好的编辑器，特别是远程终端连接的时候比较方便，但是对于普通的
java等项目来讲就是没有现在的一些编辑器方便(个人感觉是这样的，也可能是我没有使用好vim),但是一般情况下使用vim还是比较好的
一种选择。

## 说明
### 要求
* `vim7.5.15`以上
* `python2.7+`,`python3+`

## vim 8 安装
本人在使用`centos 7` 的源安装vim时发现源中的`vim`版本比较低，于是在网上找了教程，安装了`vim 8`

[vim 8 安装教程](vim安装.md)

## 配置vim
1. 安装依赖包
`debian` 系列
```sh
apt install ctags cmake make build-essential python-dev python3-dev
```
`redhat` 系列可以找到相同的包安装即可，其他相同
2. 克隆项目到本地
```sh
git clone ssh://git@git.zeekling.cn:222/linux/vimrc.git
```
3. 执行安装脚本
```sh
./install.sh
```
