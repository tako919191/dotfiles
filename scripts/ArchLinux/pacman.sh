#!/bin/zsh

PACKAGES=" base base-devel zsh git vim openssh curl wget systemd"
PACKAGES+=" zsh-completions zsh-syntax-highlighting"
PACKAGES+=" pwgen tree jq yq tcpdump sed gzip tar whois"
PACKAGES+=" docker kubectl helm minikube"
PACKAGES+=" go"

AUR_PACKAGES=" yay tfenv rbenv pyenv nodenv"

sudo pacman -S `echo $PACKAGES`
yay -S `echo $AUR_PACKAGES`
