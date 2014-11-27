#!/bin/sh

alias ctags="/usr/local/bin/ctags"

root=$1

if [ $# -ne 1 ];
then
  root="."
fi

(
  cd $root ;
  ctags -R -f .tags \
    --exclude=.git \
    --exclude=node_modules \
    --exclude=dist \
    --exclude=bin \
    --exclude=demo
)
