#!/bin/bash

DOTFILES_ROOT="$(cd "$(dirname "$0")"; pwd)"
cd $HOME

echo "=> Make global symbol links:"
find $DOTFILES_ROOT -regex ".*/\.git$" -prune -or -name "*.link" -print \
  | xargs -I@ sh -c 'ln -svf @ .$(basename @ .link)'

echo -e "\n=> Execute individual setup scripts:"
find $DOTFILES_ROOT -regex ".*/.git$" -prune -or -path "$DOTFILES_ROOT/*/setup.sh" -exec "{}" ";"

