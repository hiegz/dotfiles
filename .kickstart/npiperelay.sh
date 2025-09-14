#!/bin/bash

if ! command -v go &>/dev/null; then
    echo "error: go is not installed. can't proceed"
    exit 0
fi

sudo rm -rdf /mnt/c/Users/hiegz/go/bin/npiperelay.exe
sudo rm -rdf /usr/local/bin/npiperelay.exe
rm -rdf $HOME/.kickstart/npiperelay
mkdir $HOME/.kickstart/npiperelay
cd $HOME/.kickstart/npiperelay
go mod init npiperelay.build
go get -d=true github.com/jstarks/npiperelay
GOOS=windows go build -o /mnt/c/Users/hiegz/go/bin/npiperelay.exe github.com/jstarks/npiperelay
sudo ln -s /mnt/c/Users/hiegz/go/bin/npiperelay.exe /usr/local/bin/npiperelay.exe
paru -S --noconfirm --needed socat
rm -rdf $HOME/.kickstart/npiperelay
