exp="extra-keys = [ \
    ['ESC','/','-','HOME','UP','END','PGUP'], \
    ['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN'] \
]"

FILE=$HOME/.termux/
if [ -d "$FILE" ]; then
    echo "$FILE exists"
else mkdir $HOME/.termux/; 
	echo "made dir"
fi


FILE=~/.termux/termux.properties
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else touch ~/.termux/termux.properties;
	echo "made"
	fi
echo ${exp}>> ~/.termux/termux.properties
	


 
