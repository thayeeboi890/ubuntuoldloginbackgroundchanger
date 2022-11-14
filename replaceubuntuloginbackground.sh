#!/bin/bash
echo "Welcome to the ubuntu login background replacer"
read -p "What is the photo you wish to use? " photolocation 
echo The photo you chose is $photolocation, is that right
read -p "{y|N} " yesno
if [ $yesno == y ]
then
   echo "Starting"
   if [ $(whoami) == root ]
then
   echo root confirmed
   echo this will replace the default ubuntu background, are you sure you want to continue?
   read -p "{y|N}" yesno3
   if [ $yesno3 == y ]
   then
   cp $photolocation /usr/share/backgrounds/warty-final-ubuntu.png
   echo Finished!
   echo do you want to restart lightdm?
   read -p "{y|N} " yesno2
   if [ $yesno2 == y ]
   then
      systemctl restart lightdm
   else
      echo "DONE!"
   fi
  else
  echo "Aborting"
  fi 
else
   echo aborted, not root
fi

else
   echo "Aborting"
fi
 
