FROM centos:centos6

MAINTAINER Remon Lam <remon.lam@virtualclouds.info>

# Install epel-release, wget, npm and install any app dependencies.
# NOTE: the RUN line have one run command so we have one install layer instead of 4.
RUN yum install -y epel-release \
 && yum install -y wget \
                    npm \
 && yum clean all

# Download our Node.js website from my GitHub (github.com/remonlam/docker-demo).
RUN wget -P / https://raw.githubusercontent.com/remonlam/docker-demo/master/node_web.js

EXPOSE 8080
CMD ["node", "node_web.js"]
