sudo su
rm -rf /var/lib/myrts
systemctl stop myrts-client
rm /etc/systemd/system/myrts-client.service
mkdir /var/lib/myrts
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl pulseaudio libpulse-dev librust-libpulse-sys-dev alsa-utils libogg-dev libvorbis-dev ffmpeg libopus-dev
curl -L https://qcynaut.github.io/myrts-client/asound.state -o ./asound.state
sudo alsactl --file ./asound.state restore
sudo pulseaudio --start
curl -L https://qcynaut.github.io/myrts-client/client -o /var/lib/myrts/client
chmod +x /var/lib/myrts/client
curl -L https://qcynaut.github.io/myrts-client/myrts-client.service -o /etc/systemd/system/myrts-client.service
systemctl daemon-reload
systemctl enable myrts-client
systemctl start myrts-client