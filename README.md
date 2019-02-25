# Getting Started

The bootstrap project is about getting users from zero to Fyne as fast as possible. The

## Installing Dependencies

The new OpenGL driver has no installation requirements on most systems.
You will need to have CGo running - but that is beyond what this bootstrapper
atomates.

## Run examples

If you don't want to use the bootstrap script you can install the Fyne toolkit
and run the examples using standard go commands. The Fyne repository includes a
simple demo which can help to test the installation.

    go get -u fyne.io/fyne
    go get -u github.com/fyne-io/examples
    cd $GOPATH\src\github.com\fyne-io\examples
    go run main.go

That's all there is to it - you're now ready to write your first Fyne app!

