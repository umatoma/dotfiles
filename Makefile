zsh:
	@ln -i -s ${PWD}/.zshrc ${HOME}/.zshrc
vim:
	@ln -i -s ${PWD}/.vimrc ${HOME}/.vimrc
git:
	@ln -i -s ${PWD}/.gitconfig ${HOME}/.gitconfig && \
	ln -i -s ${PWD}/.gitignore_global ${HOME}/.gitignore_global
editor:
	@ln -i -s ${PWD}/.editorconfig ${HOME}/.editorconfig
dotfiles: zsh vim git editor


anyenv:
	@git clone https://github.com/riywo/anyenv ~/.anyenv
homebrew:
	@/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
