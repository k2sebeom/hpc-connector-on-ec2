passwd efadmin

efdownload=`curl --silent --output - https://download.enginframe.com/ | grep href | grep enginframe/packages | grep jar |  sed -e 's/.*http/http/' -e 's/jar.*/jar/'`
wget $efdownload

java -jar enginframe-*.jar --batch -f efinstall.config

echo "=================================="
echo "Installed EnginFrame"
echo "=================================="
sleep 3

systemctl start enginframe