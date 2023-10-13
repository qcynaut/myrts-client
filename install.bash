sudo su
rm -rf /var/lib/myrts
systemctl stop myrts-remote
rm /etc/systemd/system/myrts-remote.service
mkdir /var/lib/myrts
echo -n "Nama device:"
read device
while [ -z "$device" ]
do
    echo -n "Nama device:"
    read device
done
echo $device > /var/lib/myrts/desc.txt
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl pulseaudio libpulse-dev librust-libpulse-sys-dev alsa-utils libogg-dev libvorbis-dev ffmpeg libopus-dev
curl -L https://qcynaut.github.io/myrts-client/asound.state -o ./asound.state
sudo alsactl --file ./asound.state restore
sudo pulseaudio --start
curl -L https://qcynaut.github.io/myrts-client/remote -o ./remote
chmod +x ./remote
sudo ./remote
#make other code after `read device` wait for user to fill the `read`