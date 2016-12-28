#!/bin/bash

DOTFILES_ROOT="$(cd "$(dirname "$0")"; pwd)"
cd $HOME
find $DOTFILES_ROOT -path "./.git" -prune -or -name "*.link" -print \
  | xargs -I@ sh -c 'ln -svf @ .$(basename @ .link)'

