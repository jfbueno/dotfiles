#!/bin/bash

DELTA_VERSION="0.18.2"
DELTA_DEB="git-delta_${DELTA_VERSION}_amd64.deb"
DELTA_URL="https://github.com/dandavison/delta/releases/download/${DELTA_VERSION}/${DELTA_DEB}"

# Instala delta se não estiver instalado
if ! command -v delta &> /dev/null; then
  echo "Instalando delta ${DELTA_VERSION}..."
  wget -q "$DELTA_URL" -O "/tmp/${DELTA_DEB}"
  sudo dpkg -i "/tmp/${DELTA_DEB}"
  rm "/tmp/${DELTA_DEB}"
else
  echo "delta já está instalado."
fi
