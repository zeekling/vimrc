## 简介
vim 是一款比较好用的编辑器，被称为编辑器之神。当然linux或者unix默认的vim编辑器比较丑，要经过一系列的美化
对于使用者的要求比较高，没有耐心者勿用。

## vim 安装

### 卸载旧的`vim`
在安装`vim 8`之前要将旧的`vim`卸载掉，不然`vim 8`编译安装完之后还是之前旧的`vim`；由于本人就使用过`red hat` 系列的`centos`
和`debian` 系列的`ubuntu`、`kali`等`Linux`操作系统，所以卸载方法就提供了两种。

1. red hat 系列卸载方法:
```sh
sudo yum remove vim
```
2. debian系列卸载方法
```sh
sudo apt-get remove vim --purge
```
在最新的ubuntu中可以使用以下命令
```sh
sudo apt remove vim --purge
```

### vim 8的安装步骤

#### <span style="color:red;"> 注意</span>

1. 在安装vim 8之前要保证自己gcc 编译器的版本是5及其以上，如果不是则请先安装gcc 5,我现在用的centos 7 中自带的gcc 的版本是4.8，所以重新安装了gcc 5

#### 开始安装
```sh
git clone https://github.com/vim/vim.git
cd vim

./configure
 --with-features=huge --enable-multibyte --enable-pythoninterp=dynamic --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu --enable-python3interp=dynamic --with-python3-config-dir=/usr/lib/python3.9/config-3.9-x86_64-linux-gnu --enable-cscope --enable-gui=auto --enable-gtk2-check --enable-fontset --enable-largefile --disable-netbeans --with-compiledby="lingzhaohui@zeekling.cn" --enable-fail-if-missing --prefix=/home/zeekling/software/vim8.2

make
sudo make install
```
在`~/.zshrc`中添加下面内容即可：
```bash
VIM_HOME=/opt/vim82
export PATH=$PATH:$VIM_HOME/bin
```

