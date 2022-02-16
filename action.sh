
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo chown $USER /usr/local/bin/brew
brew update && brew upgrade
brew install neofetch
brew install ffmpeg
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
git clone -b dev https://github.com/TeamUltroid/Ultroid 
cp SedLoif/.env Ultroid/.env
chmod 777 Ultroid
cd Ultroid
chmod +x startup
pip3 install -r requirements.txt 
pip3 install -r resources/startup/optional-requirements.txt
pip3 install aiohttp 
pip3 install --no-cache-dir --ignore-installed yt_dlp 
pip3 install av --no-binary av
sh startup
