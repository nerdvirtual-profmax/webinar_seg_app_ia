# Laboratório Prático: Segurança em Aplicações de Inteligência Artificial

Este repositório contém o código e a documentação para um laboratório prático de demonstração de vulnerabilidades de **Prompt Injection**, **Exfiltração de Dados** e **Defesa Ativa com Guardrails** em aplicações que utilizam Large Language Models (LLMs).

O projeto foi desenvolvido para fins educacionais, auxiliando estudantes e profissionais a compreenderem os riscos de segurança em IA e a importância do desenvolvimento seguro (*Security by Design*).

---

## Sumário
1. Arquitetura do Laboratório
2. Pré-requisitos
3. Guia de Instalação no Kali Linux
4. Como Executar o Laboratório

---

## Arquitetura do Laboratório

O ambiente simula dois cenários principais através de uma interface web interativa desenvolvida em **Streamlit**:
* **Ambiente Vulnerável:** Um chatbot de atendimento bancário sem proteções estruturais, permitindo a execução de ataques de *Prompt Injection* para forçar a exfiltração de dados sensíveis para um painel de comando e controle simulado (C2).
* **Ambiente Blindado (Seguro):** Uma versão endurecida que implementa **Defesa por Delimitadores** (tags de isolamento de contexto) e **Guardrails de Saída** (filtros anti-vazamento).

---

## Pré-requisitos

Antes de iniciar, certifique-se de que a sua máquina (ou VM Kali Linux) possui instalado:
* **Python 3.10+** e o gerenciador de pacotes `pip`
* **Ollama** (para execução local do modelo Llama 3)
* Git

---

## Guia de Instalação no Kali Linux

Siga os passos abaixo para clonar o repositório e configurar o ambiente de laboratório do zero:

### 1. Clonar o Repositório
Abra o terminal e clone o projeto na sua máquina:
```bash
git clone [https://github.com/nerdvirtual-profmax/webinar_seg_app_ia.git](https://github.com/nerdvirtual-profmax/webinar_seg_app_ia.git)
cd webinar_seg_app_ia
```

### 2. Instalar e Iniciar o Ollama (LLM Local)
Certifique-se de que o motor do Ollama está instalado e baixe o modelo Llama 3
```bash
# Inicie o serviço do Ollama em segundo plano (ou em outro terminal)
ollama serve &
```

### 3. Configurar o Ambiente Virtual Python
Crie e ative um ambiente virtual isolado para o projeto
```bash
python3 -m venv venv
source venv/bin/activate
```

### 4. Instalar as Dependências
Instale as bibliotecas necessárias (Streamlit e OpenAI SDK)
```bash
pip install --upgrade pip
pip install streamlit openai
```

---

## Como Executar o Laboratório
Para facilitar a inicialização rápida do ambiente, você pode utilizar o script automatizado incluído no projeto ou rodar manualmente.

# Opção A: Usando o Script de Inicialização Rápida
Dê permissão de execução ao script (apenas na primeira vez) e execute-o:
```bash
chmod +x start_lab.sh
./start_lab.sh
```

# Opção B: Execução Manual
Caso prefira rodar manualmente:
Ative o ambiente virtual: source venv/bin/activate
Inicie a aplicação Streamlit:
```bash
streamlit run (nome do arquivo python)
Exemplo:  streamlit run chatboot_desprotegido_atendimento_cliente_prompt_injection.py
```

# Abra o navegador web (ex. google chrome ou firefox) e digite o endereço URL informado no terminal shell.
