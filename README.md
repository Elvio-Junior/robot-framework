# Objetivo
 
Este projeto tem o objetivo de demonstrar conceitos e formas de utilizar o framework Robot para a criação de testes e2e, mobile (Android) e de API

# Pré-requisitos

## Python
    - Python 3.8 e superiores
    - Gerenciador de Pacotes do Python (pip)

## Node.js
    - Node.js 14.17.0, 16.13.0, 18.0.0 e superiores
    - Gerenciador de Pacotes do Node.js (npm)

## Make
    Ferramenta para controlar a geração de executáveis a partir de arquivos fonte

## Aplicativo Mobile - Android

### Android Studio
    Para este projeto utilizaremos o Android Studio para fornecer um ambiente de desenvolvimento integrado (IDE), kit de desenvolvimento (SDK), interface de usuário (UI Automator) para termos emuladores integrados, ferramentas de depuração e dispositivos virtuais (AVD). 

### Appium
    Precisamos também do Appium como um servidor HTPP para criar e manipular as sessões do WebDriver para diferentes plataformas, como iOS e Android.

## Variável de ambiente

    Precisamos definir e persistir a variável de ambiente como ANDROID_HOME (ou alternativamente ANDROID_SDK_ROOT) com o caminho do diretório do SDK do Android Studio

npm i --location=global appium
npm install wd
npm install @appium/doctor --location=global
download appium inspector 
appium driver install uiautomator2
sudo apt-get install android-sdk
sudo apt-get install libva-dev
appium server -p 4723 -a 127.0.0.1 -pa /wd/hub
appium -a 127.0.0.1 -p 4723 /wd/hub

FUSE

sudo add-apt-repository universe

# Robot Framework

Framework de testes automatizados baseado no Python, fornecendo suporte para testes:
- Aplicativos web
- APIs REST
- Aplicativos móveis
- Aplicativos desktop
- Execução de processos

É baseado em palavras-chave, principalmente, nos testes de aceitação (Acceptance Test Driven Development-ATDD) e comportamento (Behavior Driven Development-BDD)

## Organização

As seções do Robot Framework são estruturadas da seguinte forma:

Settings	
    1) Importar bibliotecas de teste, arquivos de recursos e arquivos de variáveis
    2) Definição de metadados para suítes de teste e casos de teste

Variables
	Definição de variáveis ​para serem utilizadas nos testes

Test Cases
	Criar a Suite e/ou Casos de teste

Tasks
	Criar tarefas baseadas em regras (rpa)

Keywords
	Criar palavras-chave de usuário a partir de palavras-chave existentes (biblioteca / usuário)

Comments
	Comentários ou dados adicionais. Ignorado pelo Robot Framework.

# Projeto

## Instalação

Para instalar os recursos do projeto é necessário criar o ambiente virtual pelo comando `make env-create`

Em seguida ativar o ambiente virtual pelo comando `source robot-venv/bin/activate` e instalar as dependencias pelo comando `make install-packages`

Importante lembrar que é necessário configurar o Python Path no ambiente virtual, pois é uma dependencia para as Library funcionar. Para isto com o ambiente virtual ativado execute o comando
    `export PYTHONPATH=<PATH do seu computador>/robot-venv/bin/python`

## Execução dos Testes

Existe algumas maneiras de executar os testes, sendo:
    - Executação dos testes basicos: `make robot-basic`
    - Executação dos testes pagina Login sauce demo com abertura do navegador: `make robot-sauce-demo`
    - Executação dos testes pagina Login sauce demo sem abertura do navegador: `make robot-sauce-demo-headless`
    - Executação dos testes mobile: `make robot-mobile`
    - Executação dos testes de api: `make robot-backend`

# Referências

- https://robotframework.org/
- https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#getting-started
- https://docs.robotframework.org/docs
- http://appium.io/
- https://developer.android.com/studio

# Ferramentas para o Desenvolvimento

    As seguintes ferramentas são necessárias e/ou sugeridas para o projeto

## Instalação:
- [Git](https://git-scm.com/downloads)
- [Python](https://www.python.org/)

## IDE
- [VSCode](https://code.visualstudio.com/download)