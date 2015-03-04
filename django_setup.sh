sudo wget https://pypi.python.org/packages/source/s/setuptools/setuptools-12.3.tar.gz#md5=67614b6d560fa4f240e99cd553ec7f32 && /
sudo tar -zxvf setuptools-12.3.tar.gz && /
sudo yum install python-devel
sudo apt-get install python-devel
sudo brew install python-devel
sudo wget https://bootstrap.pypa.io/ez_setup.py && /
sudo python ez_setup.py && /
sudo easy_install pip && /
sudo pip install --upgrade Django==1.7.4 && /
sudo pip install --upgrade uwsgi && /
sudo pip install --upgrade ansible && /
sudo pip install --upgrade python-daemon && /
sudo rm -rf *.tar.gz && /
sudo rm -rf *.zip && /
sudo -rf *.bz2 && /

