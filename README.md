Souncloud music downloader
==============

Description
--------------
This shell script is able to download music from http://www.soundcloud.com.
It should work with iOS, OS X, Linux.

System requirements
--------------
* Unix like OS with a proper shell
* URL (Highly recommended) or wget
* Tools wich are preinstalled on linux (I don't know  for OS X) : `sed` ; `tail` ; `tr` ; `echo` ; `grep` ; `head` ; `cut` ; `sort` ; `uniq` .


Required tools
--------------
* Update the package list : `sudo apt-get update`
* Install Recode `sudo apt-get install recode`
* Install eyeD3 `sudo apt-get install eyeD3`
* Install cURL `sudo apt-get install curl`

Instructions
--------------
* Clic "Donwload as zip" (at the right)
* Unzip
* chmod +x install.sh; chmod +x install-dependencies-apt-get.sh 
* Run ./install.sh (it asks you for the directory where downloaded music files go to -- just type it in, it will ask for confirmation before adding it [y/n])
* Apply executable permissions `chmod +x scdl.sh`
* Usage: `./scdl.sh [URL]`

Features
--------------
* Autodetect wich kind of download it is.
* Download all song of an user's page
* Download all song of asong page
* Download all song of an user's playlist page
* Download all song of an user's list of playlist page
* Download all song of a group page
* Download all song of an user's liked song
* Set tags with eyeD3 (skip the tag if eyeD3 is not installed)
* The script stop when he see one song that have already been downloaded
* You can use it as a sync script as i do with my Raspberry PI, each night it launch the script with my users profile and if new song as been added it download them and stop when it encounter a song that is already downloaded ;).

Changelog
--------------
18/01/2014 :
* Replaced id3v2 with eyeD3 wich support image tag
* Added image & genre tags support for each type 
* Added support of playlist in an users page !

don't know the date... :
* Group page support.

18/03/2014 :
* User's like download support.

More information
--------------
The script cannot handle letters like `û` cause to recode. But if i remove it, instead of `&` you will have `&amp;` (the html code of `&`) and as i think there is more `&` than `û` i prefer to let it...

License
--------------
[GPL v2](https://www.gnu.org/licenses/gpl-2.0.txt), orignal author [Luka Pusic](http://pusic.si), Pedro Lopes forked it just to add some tweaks for my private usage -- full credits to the author Luka for such a great tool. 
