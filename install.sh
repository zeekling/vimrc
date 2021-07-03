#!/usr/bin/env bash
echo "                                                                           "
echo "  ________   _______  _______  __  ___  __       __  .__   __.   _______   "
echo " |       /  |   ____||   ____||  |/  / |  |     |  | |  \ |  |  /  _____|  "
echo "  ---/  /   |  |__   |  |__   |     /  |  |     |  | |   \|  | |  |  __    "
echo "    /  /    |   __|  |   __|  |    <   |  |     |  | |  .    | |  | |_ |   "
echo "   /  /----.|  |____ |  |____ |  .  \  |   ----.|  | |  |\   | |  |__| |   "
echo "  /________||_______||_______||__|\__\ |_______||__| |__| \__|  \______|   "
echo " "
echo "       @author:zeekling<zeekling@zeekling.cn>       "
echo "                                                    "
echo "开始安装vim-plug"
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "安装vim-plug完成"

PLUG_FILE="${HOME}/.vim/plugged"
if [ ! -f ${PLUG_FILE} ]; then
    mkdir ${PLUG_FILE} -p
fi
echo "拷贝配置文件"
cp vimrc ~/.vimrc && cp -rf vim/* ~/.vim/
echo "拷贝完成,打开vim"
