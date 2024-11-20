#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#fc327ecd769fffd70817f26a60f3277fc3df5dfd -y'

eval `opam config env`
make clean
make
