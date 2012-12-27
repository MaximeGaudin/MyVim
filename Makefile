backup:
	if [ ! -d backup ]; then mkdir backup; else rm -rf backup; fi
	cp -r ~/.vimrc ~/.vim backup

install: backup
	rm -rf ~/.vimrc ~/.vim
	cp -r .vimrc .vim ~/
	if [ -d ~/.vim/bundle/ ]; then rm -rf ~/.vim/bundle/*; fi
	git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim +BundleInstall

update:
	rm -rf .vimrc .vim
	cp -r ~/.vimrc ~/.vim .
	if [ -d .vim/bundle/ ]; then rm -rf .vim/bundle/*; fi
