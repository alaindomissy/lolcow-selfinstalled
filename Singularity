Bootstrap: docker
From: ubuntu:16.04


%setup

  cp lolcow.sh $SINGULARITY_ROOTFS/


% post

  apt-get update
  apt-get install -y fortune cowsay lolcat


%runscript

  echo
  echo ===============================================
  echo Attempting to install lolcow in ~/lolcow
  echo ===============================================
  echo

  if [ -d "/home/$USER/lolcow" ]; then
     echo "~/lolcow already exists"
     echo "will not overwrite"
     echo
     exit 1
  fi
  
  mkdir ~/lolcow

  cp *-master.img ~/lolcow/image

  cd ~/lolcow
  cp /lolcow.sh   ./
  chmod 755 lolcow.sh

  ln -s lolcow.sh fortune
  ln -s lolcow.sh cowsay
  ln -s lolcow.sh lolcat

  echo \
  'type "export PATH=~/lolcow:$PATH" and enjoy fortune, cowsay, and lolcat!' \
  | cowsay | lolcat


