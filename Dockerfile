FROM centos:centos6

MAINTAINER Remon Lam <remon.lam@virtualclouds.info>

# Bundle app source
COPY . /src

# Install Node.js and npm, install app dependencies
RUN yum install -y epel-release \
 && yum install -y wget \
                    npm \
 && yum clean all

# Download our Node.js web app from GitHub
RUN wget -P / https://raw.githubusercontent.com/remonlam/docker-demo/master/node_web.js

EXPOSE 8080
CMD ["node", "node_web.js"]
