/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install pyenv
pyenv install 3.9.2
brew install git
brew install ffmpeg
brew install neofetch
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
git clone -b dev https://github.com/TeamUltroid/Ultroid 
chmod 777 Ultroid
cp SedLoif/.env Ultroid/.env
chmod 777 Ultroid
cd Ultroid
chmod +x startup
pip3 install -r requirements.txt 
pip3 install -r resources/startup/optional-requirements.txt
pip3 install yt_dlp -U
pip3 install aiohttp -U
pip3 install av --no-binary av
sh startup
