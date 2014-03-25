read -s -p "Enter path to directory to save music too (full path):" dir
echo ...
read -p "Wanna use $dir as the music download dir? [y/n]" RESP
if [ "$RESP" = "y" ]; then
   sed -i "1i cd $dir" scdl.sh
   ./install-dependencies-apt-get.sh 
else
  echo "Quitting."
fi
read -p "Wanna install system wide and rename to soundcloud-dl (/usr/local/bin) [y/n]" RESP2
if [ "$RESP2" = "y" ]; then
   cp scdl.sh soundcloud-dl 
   sudo mv soundcloud-dl /usr/local/bin
   echo "Awesome, now invoke anywhere with soundcloud-dl [URL]"
else
  echo "Quitting."
fi
