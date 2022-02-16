curl -O https://distfiles.macports.org/MacPorts/MacPorts-2.7.1.tar.bz2
tar xf MacPorts-2.7.1.tar.bz2
cd MacPorts-2.7.1/
./configure
make
sudo make install
cd ..
sudo port install ffmpeg
sudo port install neofetch
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
git clone -b dev https://github.com/TeamUltroid/Ultroid /root/Ultroid
cp SedLoif/.env /root/Ultroid/.env
chmod 777 /root/Ultroid
cd /root/Ultroid
chmod +x startup
pip3 install -r requirements.txt 
pip3 install -r resources/startup/optional-requirements.txt
pip3 install aiohttp 
pip3 install --no-cache-dir --ignore-installed yt_dlp 
pip3 install av --no-binary av
sh startup
