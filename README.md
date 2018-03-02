# Getting Started

The bootstrap project is about getting users from zero to Fyne as fast as possible. Until the process is
[automated](https://github.com/fyne-io/fyne/issues/6) you will need to follow the steps below to get started.

## Installing Dependencies

The first of the two steps is to install the required dependencies, if you already have them installed then 
you can skip to (Installing Fyne)[#installing-fyne].

### Linux

For linux simply pick your system from this list and execute the appropriate package manager command

#### Arch Linux

    sudo pacman -S git go efl

#### Debian / Ubuntu

    sudo apt-get install git go efl

#### Fedora

    sudo dnf install git go efl

### Max OS X

The recommended method for OS X installation is to use homebrew - if you do not already have it installed
then just execute the following command and follow the instructions:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

After that you can use the brew command to install the dependencies

    brew install go efl

### Windows

Installing on Windows is a little more complicated, the recommended setup is using MSYS.
If you do not already have the MSYS command line you can install it from http://www.msys2.org/ .
The remaining dependencies are managed by Win-Builds which you can download from
http://win-builds.org/doku.php/download_and_installation_from_windows - make sure to install it for MSYS when asked.
Allow Win-Builds to install all the recommended packages and then update your MSYS environment
to include the following variables:

    export PATH=$PATH:/c/Go/bin:/opt/windows_64/bin
    export PKG_CONFIG_PATH=/opt/windows_64/lib64/pkgconfig/

If you get errors later on about pkg-config not working you may need to fix prefix variable
in some /opt/windows_64/lib64/pkgconfig/ files (ecore.pc, ecore-evas.pc, eina.pc, eo.pc, evas.pc, evil.pc)
- change /opt/windows_64 to c:\\msys64\\opt\\windows_64

## Installing Fyne

To get the basic install of Fyne is currently managed by installing the Go code directly, this is done using
the built in go get functionality:

    go get github.com/fyne-io/fyne-app

That's all there is to it - you're now ready to write your first Fyne app!
