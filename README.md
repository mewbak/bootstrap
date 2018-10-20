# Getting Started

The bootstrap project is about getting users from zero to Fyne as fast as possible. The
[automation](https://github.com/fyne-io/fyne/issues/6) is underway - this page will stay up to date with the latest instructions.
Some of Fyne's features depend on vector graphics which were only properly
supported in EFL 1.19 and later. Systems that ship earlier EFL may not funciton
as expected.

## Installing Dependencies

Some operating systems are fully automated but others need you to install some dependencies first - follow the right instructions below for your system.

### Linux (Arch, Manjaro, Debian 10+, Ubuntu 18.10+ or Fedora 27+)

On Linux the bootstrap script will install efl and it's development headers
and dependencies - if you prefer to not use the script below you can install
EFL manually if you have access to a 1.19 release or newer.

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/fyne-io/bootstrap/master/bootstrap.sh)"

### Mac OS X

The recommended method for OS X installation is to use homebrew - if you do not already have it installed
then just execute the following command and follow the instructions:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

After that you can use the bootstrapper to complete the processs. It will install the EFL dependency and run the Fyne examples

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/fyne-io/bootstrap/master/bootstrap.sh)"

### Windows

> Note that EFL windows packages are currently much older so you will not see
> the vector graphics portions of Fyne applications.

Installing on Windows is a little more complicated, the recommended setup is using MSYS.
If you do not already have the MSYS command line you can install it from http://www.msys2.org/ .
The remaining dependencies are managed by Win-Builds which you can download from
http://win-builds.org/doku.php/download_and_installation_from_windows - make sure to install it for MSYS when asked.
Allow Win-Builds to install all the recommended packages and then update your MSYS environment
to include the following variables:

    export PATH=$PATH:/c/Go/bin:/opt/windows_64/bin
    export PKG_CONFIG_PATH=/opt/windows_64/lib64/pkgconfig/

If you get errors later on about pkg-config not working you may need to fix prefix variable
in some /opt/windows\_64/lib64/pkgconfig/ files (ecore.pc, ecore-input.pc, ecore-evas.pc, eina.pc, eo.pc, evas.pc, evil.pc)
- change /opt/windows\_64 to c:\\\\msys64\\\\opt\\\\windows\_64

## Run examples

After installing the dependencies you can install the Fyne toolkit and run the
examples using standard go commands. The Fyne repository includes an simple 
demo which can help to test the installation.

    go get github.com/fyne-io/fyne
    cd $GOPATH\src\github.com\fyne-io\fyne
    go run examples\main.go

That's all there is to it - you're now ready to write your first Fyne app!
