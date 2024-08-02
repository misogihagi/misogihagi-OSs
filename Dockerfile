FROM ubuntu
RUN apt update && \
  apt install openssh-server sudo -y && \
  ssh-keygen -A && \
  mkdir -p /run/sshd && \
  /usr/sbin/sshd && \
  useradd user && \
  chsh user /bin/bash && \
  echo 'user:user' | chpasswd && \
  usermod --append -G sudo user && \
  echo 'user ALL=(ALL:ALL) ALL' >> /etc/sudoers
RUN echo 
Host *
  ControlMaster auto
  ControlPath ~/.ssh/mux-%r@%h:%p
  ControlPersist 4h
>> ~/.ssh/config
