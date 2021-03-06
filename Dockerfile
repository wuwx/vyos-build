# Must be run with --privileged flag
# Recommended to run the container with a volume mapped 
# in order to easy exprort images built to "external" world 
FROM debian:jessie

RUN apt-get update &&\
    apt-get install -y \
      vim \
      git \
      make \
      live-build \
      pbuilder \
      devscripts \
      python3-pystache \
      squashfs-tools \
      autoconf \
      dpkg-dev \
      syslinux \
      genisoimage \
      lsb-release \
      fakechroot \
      kernel-package \
      libtool \
      libglib2.0-dev \
      libboost-filesystem-dev \
      libapt-pkg-dev \
      flex \
      bison \
      libperl-dev \
      libnfnetlink-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR ~
