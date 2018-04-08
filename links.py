"""
@file  links.py
@brief make symlinks
"""


import os
import sys


# home directory.
HOME_DIR = os.environ['HOME']
# dotfiles directory.
DOT_DIR  = os.path.join(HOME_DIR, '/dotfiles')


def main():
    ignore_files = ['.git']
    rootdir = os.path.abspath(os.path.dirname(__file__))
    for root, dirs, files in os.walk(rootdir):
        for file in files:
            if file[0] != '.' or any([file == ignore_file for ignore_file in ignore_files]):
                continue
            linksrc = os.path.join(root, file)
            linkdst = os.path.join(HOME_DIR, file)
            os.symlink(linksrc, linkdst) 
            print("make symlink src={0}, dst={1}".format(linksrc, linkdst))

# Post processing
def exit():
    linksrc = os.path.join(HOME_DIR, '.vimrc')
    linkdst = os.path.join(HOME_DIR, '.config/nvim/init.vim')
    os.symlink(linksrc, linkdst)
    print("make symlink src={0}, dst={1}".format(linksrc, linkdst))


if __name__ == '__main__':
    #entry()
    main()
    exit()

