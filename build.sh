#!/bin/sh

DIR=$1

sudo sh -c 'eval $(opam env --root=/opt/opam --set-root) && opam pin add vyos1x-config https://github.com/vyos/vyos1x-config.git#b8d221356a11e172bba4fc54ecb1a0f3133bf12a -y'

eval `opam config env`
make clean
make
