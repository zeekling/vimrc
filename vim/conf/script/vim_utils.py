#!/usr/bin/env python3
# -*- utf-8 -*-

import os

curr_dir = os.getcwd()


def git_exits(dir_name: object = None):
    if dir_name is None:
        dir_name = curr_dir
    print(dir_name)
    git_fold = ""
    if dir_name.endswith('/'):
        git_fold = dir_name + '.git'
    else:
        git_fold = dir_name + '/.git'
    print("git fold :", git_fold)
    if os.path.exists(git_fold):
        return True
    parent_path = os.path.dirname(dir_name)
    if parent_path == "/":
        return False
    else:
        return git_exits(parent_path)


if __name__ == "__main__":
    if git_exits("/home/zeek/project/ml/basic"):
        print("存在")
    else:
        print("不存在")
