#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:18.04

COPY script.sh /home/script.sh

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get autoclean

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /home/romario/2rpnet/docker-kubernetes

# Define default command.
CMD ["bash"]
