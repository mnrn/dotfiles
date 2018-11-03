"""
@file  links.py
@brief make symlinks
"""


import os
import sys
import logging

class Links(object):
    def __init__(self):
        self.HOME_DIR = os.environ['HOME']                  # Home directory.

        # Setting logger
        self.logger = logging.getLogger(__name__)
        ch = logging.StreamHandler()
        formatter = logging.Formatter('%(asctime)s - %(levelname)s: %(message)s')
        ch.setFormatter(formatter)
        self.logger.addHandler(ch)


    def exec(self):
        ignores = ['.git', '.gitignore', '.DS_Store']  # ignore files
        rootdir = os.path.abspath(os.path.dirname(__file__))
        for root, _, files in os.walk(rootdir):
            for file in files:
                if file[0] != '.' or any([file == ignore for ignore in ignores]):
                    continue
                linksrc = os.path.join(root, file)
                linkdst = os.path.join(self.HOME_DIR, file)
                if os.path.exists(linkdst):
                    self.logger.warn('already exists: ' + linkdst)
                    continue
                os.symlink(linksrc, linkdst)
                self.logger.info('make symlink src={0}, dst={1}'.format(linksrc, linkdst))

    def __del__(self):
        linksrc = os.path.join(self.HOME_DIR, '.vimrc')
        linkdst = os.path.join(self.HOME_DIR, '.config/nvim/init.vim')
        if os.path.exists(linkdst):
            self.logger.warn('already exists: ' + linkdst)
            return

        # make symlink for neovim.
        os.symlink(linksrc, linkdst)
        self.logger.info('make symlink src={0}, dst={1}'.format(linksrc, linkdst))


if __name__ == '__main__':
    links = Links()
    links.exec()
