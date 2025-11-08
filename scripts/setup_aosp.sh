#!/bin/bash
# ------------------------------------------
# Script: setup_aosp.sh
#  exec no terminal: chmod +x ~/setup_aosp.sh
#  exec no terminal o script  source ~/setup_aosp.sh
# ------------------------------------------

cd ~/aosp || { echo "❌ Erro: Pasta 'aosp' não encontrada"; exit 1; }

source build/envsetup.sh

lunch sdk_phone_x86_64-userdebug

echo "✅ Ambiente AOSP configurado com sucesso!"
