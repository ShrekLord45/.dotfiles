#!/bin/bash

rm ~/.vimrc #Removes .vimrc

sed -i '/source ~\/bashrc_custom/d' ~/.bashrc #replaces the text with nothing
rmdir ~/.TRASH #removes directory

