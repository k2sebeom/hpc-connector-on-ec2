cd /home/efnobody
python3 -m venv .venv
echo "source /home/efnobody/.venv/bin/activate" >> ~/home/efnobody/.bashrc
source .venv/bin/activate
pip3 install --upgrade pip
pip3 install aws-parallelcluster
aws configure
cp -r ~/.aws /home/efnobody/.
chown efnobody /home/efnobody/.aws/*

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
chmod ug+x /home/efnobody/.nvm/nvm.sh
source /home/efnobody/.nvm/nvm.sh
nvm install --lts
