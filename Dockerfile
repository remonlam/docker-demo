FROM centos:centos6

# Bundle app source
COPY . /src

# Install Node.js and npm, install app dependencies, and remove extraneous files
RUN yum install -y epel-release && yum install -y wget npm && wget -P / https://raw.githubusercontent.com/remonlam/docker-demo/master/node_web.js

EXPOSE 8080
CMD ["node", "node_web.js"]
