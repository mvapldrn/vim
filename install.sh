#!/bin/bash
# ----------------------------------------------------------------------------
# Name         : install.sh
# Purpose      : Install script for installing vimrc files
# Copyright    : Copyright (C) 2005, M.C. van Apeldoorn
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#
# Author       : Marcel van Apeldoorn
#                <mvapldrn@nlr.nl|marcel@vapeldoorn.net>
# URL          : wwww.vapeldoorn.net
# ----------------------------------------------------------------------------

DATE=`date +%F-%T`
BACKUP=.bak-${DATE}

# Backup files and vim directory
cp ${HOME}/.vimrc ${HOME}/.vimrc${BACKUP}
cp ${HOME}/.gvimrc ${HOME}/.gvimrc${BACKUP}
cp -R ${HOME}/.vim ${HOME}/.vim${BACKUP}

# Remove current files
rm -rf ${HOME}/.vim
rm -f  ${HOME}/.vimrc
rm -f  ${HOME}/.gvimrc

# Install files
cp rc/vimrc ${HOME}/.vimrc
cp rc/gvimrc ${HOME}/.gvimrc

mkdir ${HOME}/.vim
mkdir ${HOME}/.vim/colors
cp mva.vim ${HOME}/.vim/colors/mva.vim

