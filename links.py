"""
@file  links.py
@brief make symlinks
"""


import os
import sys
import logging


HOME_DIR = os.environ['HOME']                  # Home directory.
DOT_DIR = os.path.join(HOME_DIR, '/dotfiles')  # Dotfiles directory.


# Pre processing
def entry():
    logging.basicConfig(format='%(asctime)s - %(levelname)s: %(message)s')


def main():
    ignores = ['.git']  # ignore files
    rootdir = os.path.abspath(os.path.dirname(__file__))
    for root, _, files in os.walk(rootdir):
        for file in files:
            if file[0] != '.' or any([file == ignore for ignore in ignores]):
                continue
            linksrc = os.path.join(root, file)
            linkdst = os.path.join(HOME_DIR, file)
            os.symlink(linksrc, linkdst)
            logging.info('make symlink src={0}, dst={1}'.format(linksrc, linkdst))


# Post processing
def exit():
    linksrc = os.path.join(HOME_DIR, '.vimrc')
    linkdst = os.path.join(HOME_DIR, '.config/nvim/init.vim')
    if not os.path.exists(linkdst):
        logging.warn('not found file: '+ linkdst)
        return

    # make symlink for neovim.
    os.symlink(linksrc, linkdst)
    logging.info('make symlink src={0}, dst={1}'.format(linksrc, linkdst))


if __name__ == '__main__':
    entry()
    main()
    exit()
