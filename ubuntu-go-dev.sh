#!/bin/sh
# install curl
sudo apt install curl

# install go
sudo snap install go --classic
mkdir -p $HOME/go/src/contact
echo "export GOPATH=$HOME/go" >>$HOME/.profile

# install mariadb
sudo apt install mariadb-server mariadb-client

# create user and schema on mariadb
sudo mysql -u root <createdb.sql

# certificates for Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Install VS Code
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders

# give some hints
echo "Start Visual Studio Code with >>code<<"
echo "Start mariadb with >>mysql -u contact -p<<. Password is contact.
echo "Install Go extension in Visual Studio Code"
