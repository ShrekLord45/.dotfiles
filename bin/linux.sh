#!/bin/bash
if [[ $uname="Linux" ]] 
then #if the operating system is linux

  	mkdir ~/.TRASH #makes a new directory
  	if [ -f ~/.vimrc ] 
  	then
        	mv ~/.vimrc ~/.bup_vimrc #rename vimrc
        	echo "Current vimrc file was changed to .bup_vimrc" >> linuxsetup.log#createsfile
	fi

	touch ~/.vimrc#make file
	cat etc/.vimrc > ~/.vimrc #Redirects the vimrc fileoutput to your home .vimrc

	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc # appends onto ./bashrc

else
	echo "error wrong OS" >> linuxsetup.log #throws error
	exit
fi
