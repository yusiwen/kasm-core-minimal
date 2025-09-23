#!/usr/bin/env bash
set -ex

if [[ "${DISTRO}" == "ubuntu" ]] ; then
  sed -i \
    '/locale/d' \
    /etc/dpkg/dpkg.cfg.d/excludes
elif [[ "${DISTRO}" == "debian" ]] ; then
  sed -i \
    '/locale/d' \
    /etc/dpkg/dpkg.cfg.d/docker
fi

echo "Upgrading packages from upstream base image"
if [ "${DISTRO}" == "alpine" ]; then
  apk update
  apk add --upgrade apk-tools
  apk upgrade --available
else
  apt-get update
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
fi
