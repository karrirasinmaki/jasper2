# specify the node base image with your desired version node:<version>

FROM timbru31/ruby-node:2.7-alpine

RUN mkdir /tmp/docker
COPY docker /tmp/docker
RUN /tmp/docker/setup-required.sh
RUN /tmp/docker/setup.sh

# replace this with your application's default port
EXPOSE 3000
EXPOSE 4000
EXPOSE 5000
EXPOSE 5001
EXPOSE 9005
RUN mkdir /work
WORKDIR /work
