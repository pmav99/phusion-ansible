FROM phusion/baseimage:0.11

# Install ansible
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-add-repository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" && \
    apt update && \
    apt upgrade -y -o Dpkg::Options::="--force-confold" && \
    apt install -y \
        -o APT::Install-Recommends=false \
        -o APT::Install-Suggests=false \
        ansible && \
    # clean up
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* \
           /var/tmp/* \
           /tmp/apt-fast.list
