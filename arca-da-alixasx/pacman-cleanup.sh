#!/bin/bash

# Limpar pacman
sudo pacman -Rns $(pacman -Qtdq)
sudo pacman -Scc --noconfirm

# Limpar yay
yay -Yc --noconfirm
yay -Sc --noconfirm

# Adicionar e atualizar repositório BlackArch
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh
sudo pacman -Syyu --noconfirm

echo "Limpeza e configuração do BlackArch concluídas."

