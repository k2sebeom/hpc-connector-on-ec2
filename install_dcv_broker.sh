rpm --import https://d1uj6qtbmh3dt5.cloudfront.net/NICE-GPG-KEY
wget https://d1uj6qtbmh3dt5.cloudfront.net/2021.3/SessionManagerBrokers/nice-dcv-session-manager-broker-2021.3.307-1.el7.noarch.rpm
yum install -y nice-dcv-session-manager-broker-2021.3.307-1.el7.noarch.rpm
systemctl enable dcv-session-manager-broker
systemctl start dcv-session-manager-broker
echo "Check the status of dcv-session-manager-broker by systemctl status dcv-session-manager-broker"
