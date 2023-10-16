:: ----------------------------------------------------------------------------
:: Name         : install.bat
:: Purpose      : Install script for installing vimrc files
:: Copyright    : Copyright (C) 2005, M.C. van Apeldoorn
::
::   This program is free software; you can redistribute it and/or modify
::   it under the terms of the GNU General Public License as published by
::   the Free Software Foundation; either version 2 of the License, or
::   (at your option) any later version.
::
::   This program is distributed in the hope that it will be useful,
::   but WITHOUT ANY WARRANTY; without even the implied warranty of
::   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
::   GNU General Public License for more details.
::
::   You should have received a copy of the GNU General Public License
::   along with this program; if not, write to the Free Software
::   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
::
:: Author       : Marcel van Apeldoorn
::                <mvapldrn@nlr.nl|marcel@vapeldoorn.net>
:: URL          : wwww.vapeldoorn.net
:: ----------------------------------------------------------------------------
copy rc\vimrc "%HOMEDRIVE%\%HOMEPATH%\_vimrc"
copy rc\gvimrc "%HOMEDRIVE%\%HOMEPATH%\_gvimrc"
mkdir "%HOMEDRIVE%\%HOMEPATH%\vimfiles"
mkdir "%HOMEDRIVE%\%HOMEPATH%\vimfiles\colors"
copy colors\* "%HOMEDRIVE%\%HOMEPATH%\vimfiles\colors\."

