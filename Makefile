install: install-virtualenvwrapper install-pythonrc \
		 install-bin install-git

install-git:
	ln -fs `pwd`/git/gitconfig ~/.gitconfig
	curl -o ~/.git-completion.bash https://github.com/git/git/raw/master/contrib/completion/git-completion.bash -OL

install-bin:
	mkdir -p ~/.bin/
	ln -fs `pwd`/bin/* ~/.bin/

install-virtualenvwrapper:
	mkdir -p ~/.virtualenvs/
	ln -fs `pwd`/virtualenvwrapper/* ~/.virtualenvs/

install-pythonrc:
	ln -fs `pwd`/python/pythonrc.py ~/.pythonrc.py

install-zsh:
	ln -fs `pwd`/zsh/zshrc ~/.zshrc
	# mkdir -p ~/.zsh-extras/
	# [ ! -e ~/.zsh-extras/zsh-autosuggestions ] && git clone git://github.com/tarruda/zsh-autosuggestions ~/.zsh-extras/zsh-autosuggestions
