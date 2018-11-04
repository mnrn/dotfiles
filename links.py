"""
@file  links.py
@brief make symlinks
"""


import os
import logging

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


    def exec(self, ignores):
        rootdir = os.path.abspath(os.path.dirname(__file__))
        for root, _, files in os.walk(rootdir):
            for file in files:
                if file[0] != '.':
                    continue
                elif any([file == ignore for ignore in ignores]):
                    continue

                linksrc = os.path.join(root, file)
                linkdst = os.path.join(self.HOME_DIR, file)
                if os.path.exists(linkdst):
                    self.logger.warn(self.EXISTS_MSG.format(linkdst))
                    continue
                os.symlink(linksrc, linkdst)
                self.logger.info(self.SYMLINKS_MSG.format(linksrc, linkdst))


    def neovim_symlink(self):
        linksrc = os.path.join(self.HOME_DIR, '.vimrc')
        linkdst = os.path.join(self.HOME_DIR, '.config/nvim/init.vim')
        if os.path.exists(linkdst):
            self.logger.warn(self.EXISTS_MSG.format(linkdst))
            return

        # Make symlink for neovim.
        os.symlink(linksrc, linkdst)
        self.logger.info(self.SYMLINKS_MSG.format(linksrc, linkdst))


if __name__ == '__main__':

    links = Links()
    links.exec(ignores=['.git', '.gitignore', '.DS_Store'])

    links.neovim_symlink()
