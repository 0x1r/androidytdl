pkg install -y git nano curl wget vim  neofetch
pkg install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cd ~
git clone https://github.com/OscarAkaElvis/zsh-parrot-theme
cd zsh-parrot-theme
zsh install.zsh
cd ~
rm -rf zsh-parrot-theme
#plugins=(git)

#theme_name="git zsh-autosuggestion zsh-syntax-highlighting"

sed -i -e 's/plugins=(.*)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ${HOME}/.zshrc
echo "neofetch" >> /data/data/com.termux/files/usr/etc/zshrc
rm /data/data/com.termux/files/usr/etc/motd
echo "alias ytmp3='youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0'">> ~/.zshrc
