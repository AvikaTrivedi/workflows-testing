apt-get update -y && apt-get upgrade -y && apt-get install ffmpeg -y && apt-get install neofetch -y && apt-get install mediainfo
clear
git clone https://github.com/TeamUltroid/Ultroid 
cp SedLoif/.env Ultroid/.env
chmod 777 Ultroid
cd Ultroid
chmod +x startup
pip3 install --no-cache-dir --ignore-installed -r requirements.txt && pip3 install --no-cache-dir --ignore-installed -r resources/startup/optional-requirements.txt && pip3 install --ignore-installed aiohttp && pip3 install --no-cache-dir --ignore-installed yt_dlp && pip3 install av --no-binary av
bash startup
