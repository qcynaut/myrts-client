sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl pulseaudio alsa alsa-utils libogg-dev libvorbis-dev ffmpeg libopus-dev
sudo pulseaudio --start
curl -L https://qcynaut.github.io/myrts-client/remote -o ./remote
chmod +x ./remote
sudo ./remote
