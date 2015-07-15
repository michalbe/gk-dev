#!/bin/bash
if [ ! -d "~/bin" ]; then
  mkdir ~/bin
fi
cp initEnv ~/bin/initEnv
chmod +x ~/bin/initEnv
