sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl wget pulseaudio alsa-utils libogg-dev libvorbis-dev ffmpeg libopus-dev
curl -L https://qcynaut.github.io/myrts-client/remote -o ./remote
chmod +x ./remote
./remote