apt-get update && apt-get upgrade

termux-setup-storage 

pkg install python 

pip install youtube-dl 


FILE=/data/data/com.termux/files/home/storage/shared/Youtube
if [ -d "$FILE" ]; then
    echo "$FILE exists"
else mkdir /data/data/com.termux/files/home/storage/shared/Youtube; 
	echo"made dir"
fi




 

FILE=~/.config/youtube-dl
if [ -d "$FILE" ]; then
    echo "$FILE exists"
else mkdir -p ~/.config/youtube-dl; 
	echo"made dir"
fi
 
apt-get install nano ffmpeg
pkg install vim git curl wget

FILE=~/.config/youtube-dl/config 
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else touch ~/.config/youtube-dl/config ;
	echo "made"
	fi
echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s '>> ~/.config/youtube-dl/config



FILE=~/bin
if [ -d "$FILE" ]; then
    echo "$FILE exists"
else mkdir ~/bin; 
	echo "made dir"
fi


cd ~/bin 

FILE=~/bin/termux-url-opener  
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else touch ~/bin/termux-url-opener ;
	echo "made"
	fi
echo 'youtube-dl $1' >>termux-url-opener 
echo "alias ytmp3='youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0'">> ~/.zshrc


