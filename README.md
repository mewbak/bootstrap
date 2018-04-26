# Getting Started

The bootstrap project is about getting users from zero to Fyne as fast as possible. The
[automation](https://github.com/fyne-io/fyne/issues/6) is underway - this page will stay up to date with the latest instructions.

## Installing Dependencies

Some operating systems are fully automated but others need you to install some dependencies first - follow the right instructions below for your system.

### Arch Linux

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/fyne-io/bootstrap/master/bootstrap.sh)"

### Debian / Ubuntu

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/fyne-io/bootstrap/master/bootstrap.sh)"

### Fedora

    sudo dnf install git go efl
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/fyne-io/bootstrap/master/bootstrap.sh)"

### Max OS X

The recommended method for OS X installation is to use homebrew - if you do not already have it installed
then just execute the following command and follow the instructions:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

After that you can use the bootstrapper to complete the process

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/fyne-io/bootstrap/master/bootstrap.sh)"

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

To get the basic install of Fyne running on Windows you still need to install the Go code directly, this is done using
the built in go get functionality:

    go get github.com/fyne-io/fyne-app

That's all there is to it - you're now ready to write your first Fyne app!
