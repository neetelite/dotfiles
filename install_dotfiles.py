#!/bin/python

import os

dir_home = os.path.expanduser("~")+"/"
dir_dotfiles = dir_home+".dotfiles/"

def rmx(path):
    if os.path.isdir(path):
        for file in os.listdir(path):
            dir_path = path+"/"+file
            #print(dir_path)
            rm(dir_path)
        os.rmdir(path)
    else:
        if(os.path.islink(path)):
            os.unlink(path)
        else:
            os.remove(path)

def rm(path):
    if(os.path.islink(path)):
        os.unlink(path)
    else:
        if os.path.isdir(path):
            for file in os.listdir(path):
                dir_path = path+"/"+file
                #print(dir_path)
                rm(dir_path)
            os.rmdir(path)
        else:
            os.remove(path)


def if_exists_rm(path):
    if(os.path.exists(path)):
        rm(path)
        print("Removed: " + path)

def link(path):
    path_from = dir_dotfiles+path
    path_to = dir_home+path
    command = "ln -sf" + " " + path_from + " " + path_to

    if_exists_rm(path_to)
    os.system(command)
    print(command)

print("Installing dotfiles")
print("Copying config directories")
for file in os.listdir(dir_dotfiles+".config"):
    file = ".config/" + file
    link(file)

print("\nCopying other directories")
link(".screenlaout")

print("\nCopying files")
link(".bashrc")
link(".vimrc")
link(".emacs")
link(".xinitrc")
link(".Xresources")
