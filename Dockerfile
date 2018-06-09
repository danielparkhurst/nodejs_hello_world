FROM centos:latest

#Copy hello world node project into container.
COPY /helloworld /usr/local/hello

LABEL maintainer="Zackeryddparkhurst@gmail.com"

#Install nodejs.
RUN PKGS='nodejs' && \
    curl --silent --location https://rpm.nodesource.com/setup_8.x | bash - && \
    yum install -y --setopt tsflags=nodocs $PKGS && \
    yum clean all -y && \
    echo 'Installation of nodeJs was successful :)'

#Change folder permission.
RUN chmod -R 777 /usr/local/hello

WORKDIR /usr/local/hello

#Command when container starts up.
CMD echo 'Hello from container!' && npm install && npm start