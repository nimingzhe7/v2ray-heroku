cd /v2raybin
wget -O v2ray.zip http://github.com/nimingzhe7/v2ray-h-fz/releases/download/test/v2ray-l64k.zip
unzip v2ray.zip 
cd /v2raybin/v2ray-v$VER-linux-64
chmod +x v2ray
chmod +x v2ctl

echo -e -n "$CONFIG_JSON1" > config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json

./v2ray
