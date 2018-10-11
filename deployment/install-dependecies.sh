#!/bin/bash
id -u gunicorn || useradd gunicorn
getent group gunicorn || groupadd gunicorn
adduser gunicorn gunicorn || true

apt-get install python3-pip -y
/usr/bin/pip3 install virtualenv
rm -rf /home/ubuntu/venv
virtualenv /home/ubuntu/venv -p /usr/bin/python3
/home/ubuntu/venv/bin/pip install -r /home/ubuntu/app/requirements.txt