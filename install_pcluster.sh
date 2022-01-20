cd /home/efnobody
python3 -m venv .venv
echo "source .venv/bin/activate" >> ~/.bashrc
source .venv/bin/activate
pip3 install --upgrade pip
pip3 install aws-parallelcluster
aws configure
cp -r ~/.aws /home/efnobody/.
chown efnobody /home/efnobody/.aws/*
