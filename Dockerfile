FROM ubuntu
RUN apt update && \
  apt install openssh-server -y && \
  ssh-keygen -A && \
  mkdir -p /run/sshd && \
  /usr/sbin/sshd && \
  useradd user
