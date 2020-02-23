#!/usr/bin/env bash

echo "              ____________      __                  "
echo "             / ____/ ____/     / /_                 "
echo "    _____   / /___/ /_____    / /_/     __ _______  "
echo "   /__  /  / ____/ ____/ /___/ / /\    / / __    /  "
echo "     / /__/ /___/ /___/ / __/ / /\ \  / / /_/ / /   "
echo "    /____/_____/_____/_/\_\/_/_/  \_\/_/\____/ /    "
echo "                                       _____/ /     "
echo "                                      /______/      "
echo "       @author:zeekling<zeekling@163.com>           "
echo "                                                    "
if [ ! -d '~/.vim/autoload/plug.vim' ];then
	echo "开始安装vim-plug"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	echo "安装vim-plug完成"
fi

PLUG_FILE="~/.vim/plugged"
if [ ! -f ${PLUG_FILE} ]; then
    mkdir ${PLUG_FILE} -p
fi
echo "拷贝配置文件"
cp .vimrc ~/.vimrc && cp -rf .vim/* ~/.vim/
echo "拷贝完成,打开vim"
