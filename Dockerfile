FROM jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN apt-get install -y python-pip
RUN pip install virtualenv
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
