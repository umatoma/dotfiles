#!/bin/bash -eu

SOURCE_DIR=~/.dotfiles
GIT_REPOSITORY=git@github.com:umatoma/dotfiles.git
DOTFILES=(".gitconfig" ".gitignore_global" ".zshrc")

echo '
      | |     | |  / _(_) |
    __| | ___ | |_| |_ _| | ___  ___
   / _` |/ _ \| __|  _| | |/ _ \/ __|
  | (_| | (_) | |_| | | | |  __/\__ \
   \__,_|\___/ \__|_| |_|_|\___||___/
'

if [ -e $SOURCE_DIR ]; then
  echo "[exec] cd $SOURCE_DIR && git pull"
  cd $SOURCE_DIR && git pull
else
  echo "[exec] git clone $GIT_REPOSITORY $SOURCE_DIR"
  git clone $GIT_REPOSITORY $SOURCE_DIR
fi

for file in ${DOTFILES[@]}; do
  echo "[exec] ln -fs $SOURCE_DIR/$file ~/$file"
  ln -fs $SOURCE_DIR/$file ~/$file
done

echo "[exec] ls -al ~ | grep -- '->'"
ls -al ~ | grep -- '->'
