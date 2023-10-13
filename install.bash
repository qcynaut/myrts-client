sudo su
rm -rf /var/lib/myrts
systemctl stop myrts-remote
rm /etc/systemd/system/myrts-remote.service
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl pulseaudio libpulse-dev librust-libpulse-sys-dev alsa-utils libogg-dev libvorbis-dev ffmpeg libopus-dev
curl -L https://qcynaut.github.io/myrts-client/asound.state -o ./asound.state
sudo alsactl --file ./asound.state restore
sudo pulseaudio --start
curl -L https://qcynaut.github.io/myrts-client/remote -o ./remote
chmod +x ./remote
sudo ./remote
