rpm --import https://d1uj6qtbmh3dt5.cloudfront.net/NICE-GPG-KEY
wget https://d1uj6qtbmh3dt5.cloudfront.net/2021.3/SessionManagerBrokers/nice-dcv-session-manager-broker-2021.3.307-1.el7.noarch.rpm
yum install -y nice-dcv-session-manager-broker-2021.3.307-1.el7.noarch.rpm
systemctl enable dcv-session-manager-broker
systemctl start dcv-session-manager-broker

echo "==================="
echo "Installed DCV Session Manager Broker"
echo "==================="

sleep 3

cp /var/lib/dcvsmbroker/security/dcvsmbroker_ca.pem .

java_path=$(readlink /etc/alternatives/java | sed 's/\/bin\/java//')
openssl x509 -in /var/lib/dcvsmbroker/security/dcvsmbroker_ca.pem -inform pem \
        -out dcvsmbroker_ca.der -outform der

keytool -importcert -alias dcvsm \
        -keystore "${java_path}/lib/security/cacerts" \
        -storepass changeit \
        -noprompt \
        -file dcvsmbroker_ca.der
