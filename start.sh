rm -rf go*.* && /
wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz && /
tar -zxvf go1.4.2.linux-amd64.tar.gz && /
rm -rf /usr/bin/go && /
cp -r ./go /usr/bin && /
export PATH=$PATH:/usr/bin/go/bin && /
rm -rf go && /
rm -rf *.gz && /
sudo yum install docker && /
sudo apt-get -y install docker.io && /
sudo brew install docker && /
sudo pip install --upgrade paramiko PyYAML boto jinja2 httplib2 virtualenv && /
echo *127.0.0.1* > ~/ansible_hosts && /
export ANSIBLE_HOSTS=~/ansible_hosts && /
export ANSIBLE_LIBRARY=~/ansible-modules-core:~/ansible-modules-extras && /
export PATH=$PATH:/usr/bin/go/bin:/usr/bin/go/bin/go && /
cp -r /usr/bin/go/bin /usr/bin && /
cp -r /usr/bin/go/lib /usr/lib && /
PATH=$PATH:/usr/bin/go/bin:/usr/bin/go/bin/go && /
export PATH=$PATH:/usr/bin/go/bin && /
python daemonize.py

