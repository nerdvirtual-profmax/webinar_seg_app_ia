#!/bin/bash

echo "[*] A verificar a configuração do Git..."

# Verifica se o nome do Git está configurado globalmente, senão solicita
if [ -z "$(git config --global user.name)" ]; then
    read -p "Digite o seu Nome para os commits do Git (ex: Maximiliano Jácomo): " git_name
    git config --global user.name "$git_name"
fi

# Verifica se o e-mail do Git está configurado globalmente, senão solicita
if [ -z "$(git config --global user.email)" ]; then
    read -p "Digite o seu E-mail para os commits do Git (ex: seu-email@exemplo.com): " git_email
    git config --global user.email "$git_email"
fi

# Inicializa o git caso não exista na pasta
if [ ! -d ".git" ]; then
    git init
    echo "[+] Repositório Git inicializado com sucesso."
fi

# Solicita a URL do repositório remoto do GitHub caso ainda não esteja configurada
if ! git remote get-url origin > /dev/null 2>&1; then
    echo ""
    read -p "Digite a URL do seu repositório no GitHub (ex: https://github.com/nerdvirtual-profmax/webinar_seg_app_ia.git): " repo_url
    git remote add origin "$repo_url"
fi

echo "[*] A adicionar arquivos ao stage..."
git add .

echo "[*] A criar o commit..."
read -p "Digite a mensagem do commit (padrão: 'Atualização do laboratório de IA'): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Atualização do laboratório de IA"
fi

git commit -m "$commit_msg"

echo "[*] A enviar para o GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "[+] Processo concluído com sucesso!"
