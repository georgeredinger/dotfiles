#!/usr/bin/env bash
cd ~/dotfiles
for i in .*
do 
  bname=`basename $i`
  if [[  $bname == "." || $bname == ".." || $bname == ".git" ]]	
  then
	echo "  not linking ~/dotfiles/$i ~/$i"
  else
	echo "linking ~/dotfiles/$i ~/$i"
	ln -s ~/dotfiles/$i ~/$i
  fi
done

