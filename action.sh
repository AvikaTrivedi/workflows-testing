apt-get update -y && apt-get upgrade -y
clear
git clone -b dev https://github.com/TeamUltroid/Ultroid 
cp SedLoif/.env Ultroid/.env
chmod 777 Ultroid
cd Ultroid
chmod +x startup
apt-get update -y && apt install ffmpeg mediainfo neofetch wkhtmltopdf libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev -y && python3 -m pip install --upgrade pip setuptools wheel && python3 -m pip install --no-cache-dir --ignore-installed --force-reinstall --no-warn-conflicts -U -r req* && python3 -m pip install --no-cache-dir --ignore-installed --force-reinstall --no-warn-conflicts -U -r res*/sta*/opt*.txt && clear && bash startup
