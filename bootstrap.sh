#!/bin/bash

GOPATH=`go env GOPATH`

BOOTSTRAP_VERSION=2
BOOTSTRAP_REPO=github.com/fyne-io/bootstrap
BOOTSTRAP_DIR=$GOPATH/src/github.com/fyne-io/bootstrap

CONFIG_DIR=$HOME/.config/fyne/bootstrap/
LOG_FILE=$CONFIG_DIR/install.log
VERSION_FILE=$CONFIG_DIR/version

# TODO check if we are up to date with bootstrap

mkdir -p $CONFIG_DIR
echo "Install started at `date`" > $LOG_FILE

echo "[INFO ] Downloading bootstrapper"

go get -u $BOOTSTRAP_REPO
if [[ $? -ne 0 ]]; then
  echo "[FATAL] Unable to download bootstrap repository"
  exit 3
fi
cd $BOOTSTRAP_DIR

go run bootstrap.go
