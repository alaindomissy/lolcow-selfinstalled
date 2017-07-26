Bootstrap: docker
From: ubuntu:16.04


%setup

  cp singularityexec $SINGULARITY_ROOTFS/


%post

  apt-get update
  apt-get -y install fortune cowsay lolcat


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

  cp *-master.img ~/lolcow/lolcow.img
  cp /singularityexec ~/lolcow/

  #chmod 755 ~/lolcow/singularityexec

  ln -s ~/lolcow/singularityexec ~/lolcow/fortune
  ln -s ~/lolcow/singularityexec ~/lolcow/cowsay
  ln -s ~/lolcow/singularityexec ~/lolcow/lolcat

  echo \
  'type "export PATH=~/lolcow:$PATH" and enjoy fortune, cowsay, and lolcat!' \
  | cowsay | lolcat


