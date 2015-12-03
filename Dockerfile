FROM centos:centos6

# Enable EPEL for Node.js
# RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Bundle app source
COPY . /src

# Install Node.js and npm, install app dependencies, and remove extraneous files
RUN yum install epel-release \
 && yum install  -y npm

EXPOSE 8080
CMD ["node", "/src/index.js"]
