sudo docker run -it && \
sudo docker run -it && \

    -v /vagrant/hosts:/tmp/hosts && \

    -v /vagrant/insecure_private_key:/tmp/insecure_private_key && \

    ansible-examples && \

    /sbin/my_init --skip-startup-files --skip-runit -- &&  \

    ansible-playbook /srv/ansible/site.yml && \

    -i /tmp/hosts -u vagrant --private-key=/tmp/insecure_private_key
