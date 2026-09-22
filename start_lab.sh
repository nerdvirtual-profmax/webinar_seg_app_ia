#!/bin/bash

echo "[*] A iniciar o serviço do Ollama..."
# Inicia o ollama em background caso não esteja a correr
ollama serve > /dev/null 2>&1 &

echo "[*] A ativar o ambiente virtual..."
source venv/bin/activate

echo "[+] Ambiente pronto!"
echo "[+] Para iniciar a aplicação, execute agora:"
echo "    streamlit run (chatboot desejado)"
echo ""

# Mantém o terminal interativo com o ambiente virtual ativado
exec bash
