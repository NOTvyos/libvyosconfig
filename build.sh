#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config git@github.com:VyOS-Networks/vyos1x-config.git#1174b4a952d7a984c89bdc6478d4083176f125dc -y'

eval `opam config env`
make clean
make
