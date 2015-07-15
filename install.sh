#!/bin/bash
if [ ! -d "~/bin" ]; then
  mkdir ~/bin
fi
cp initEnv ~/bin/initEnv
chmod +x ~/bin/initEnv

if [![ $PATH == *"/home/developer/bin"* ]]
  then
  echo "It's there!";
fi
