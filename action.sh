apt-get update -y && apt-get upgrade -y 
apt-get install neofetch -y 
apt-get install mediainfo -y
apt-get install ffmpeg -y
clear
git clone https://github.com/TeamUltroid/Ultroid 
cp SedLoif/.env Ultroid/.env
chmod 777 Ultroid
cd Ultroid
chmod +x startup
python3 -m pip install --upgrade pip setuptools wheel && python3 -m pip install --no-cache-dir --ignore-installed --force-reinstall -U -r req* && python3 -m pip install --no-cache-dir --ignore-installed --force-reinstall -U -r res*/sta*/opt*.txt && clear 
bash startup
