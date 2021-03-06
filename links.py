"""
@file  links.py
@brief make symlinks
"""


import os
import logging
from pathlib import Path, PurePath
import argparse


class Links(object):

    def __init__(self, logger=None):
        # Constant Values
        self.HOME_DIR = os.environ['HOME']  # Home directory.
        self.LOGGER_FORMAT = '%(asctime)s - %(levelname)s: %(message)s'
        self.SYMLINKS_MSG = 'make symlink src={0}, dst={1}'
        self.EXISTS_MSG = 'already exists: {0}'

        # Setting logger
        if logger is None:
            self.logger = logging.getLogger(__name__)
            ch = logging.StreamHandler()
            formatter = logging.Formatter(self.LOGGER_FORMAT)
            ch.setFormatter(formatter)
            self.logger.addHandler(ch)
        else:
            self.logger = logger

    # Symlink dotfiles.
    def exec(self, ignores):
        rootdir = os.path.abspath(os.path.dirname(__file__))
        for root, _, files in os.walk(rootdir):
            for file in files:
                if file[0] != '.':
                    continue
                elif any([file == ignore for ignore in ignores]):
                    continue

                linksrc = PurePath(root).joinpath(file)
                linkdst = PurePath(self.HOME_DIR).joinpath(file)
                self.symlink(linksrc, linkdst)

    # Make symlink for neovim.
    def neovim_symlink(self):
        linksrc = PurePath(self.HOME_DIR).joinpath('.vimrc')
        linkdst = PurePath(self.HOME_DIR).joinpath('.config/nvim/init.vim')
        self.symlink(linksrc, linkdst)

    # Make symlink
    def symlink(self, linksrc, linkdst):
        if Path(linkdst).exists():
            self.logger.warning(self.EXISTS_MSG.format(linkdst))
        else:
            Path(linkdst).symlink_to(linksrc)
            self.logger.info(self.SYMLINKS_MSG.format(linksrc, linkdst))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Make symlinks.')
    parser.add_argument('--with-neovim', action='store_true')
    args = parser.parse_args()

    links = Links()
    links.exec(ignores=['.git', '.gitignore', '.DS_Store', '.travis.yml'])

    if args.with_neovim:
        links.neovim_symlink()
