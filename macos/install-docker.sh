#!/bin/bash
set -e

echo "Instalando colima e docker"

brew install colima
brew install docker
brew install docker-compose
brew install docker-completion

mkdir -p ~/.zsh/completion
docker completion zsh > ~/.zsh/completion/_docker
docker completion zsh > ~/.zsh/completion/_docker-compose

echo "Criando configuração do Docker para habilitar Compose V2..."

DOCKER_CONFIG_FILE="$HOME/.docker/config.json"

mkdir -p "$HOME/.docker"

cat <<EOF > "$DOCKER_CONFIG_FILE"
{
	"currentContext": "colima",
	"cliPluginsExtraDirs": [
      "/opt/homebrew/lib/docker/cli-plugins"
  ]
}
EOF

echo "Arquivo $DOCKER_CONFIG_FILE criado com Compose V2 habilitado."