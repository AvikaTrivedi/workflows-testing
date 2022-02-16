/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo brew update && sudo brew upgrade
sudo brew install git
sudo brew install ffmpeg
sudo brew install neofetch
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
pip3 install aiohttp -U
pip3 install av --no-binary av
sh startup
