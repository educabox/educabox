

# 📦 TV BOX IMOVE 
</p>
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/IMOVE%20HARDWARE.png?raw=true" alt="Size Limit CLI" width="1500">
 </p>

# ⚙️ **Hardware**

<img src="https://github.com/educabox/educabox/blob/main/imagens/00%20-%20PROCESSADORES/S905W.png?raw=true" align="right" alt="" width="120" height="120">

|Sumário | Info|
---------|:--:
Codename | IMOVE
Fabricante | streambus
Modelo | it01
Placa Mãe | S908X4 MINI_V3.0 2019.01.14
Placa DTB | glx_281_1g
CPU | Amlogic S905W
Família | Cortex-A53
Velocidade | 100 - 1200 MHz
GPU | Mali-450 MP
Wifi | SV6051P 
Memória | 1GB
Armazenamento | 8GB
Resolução | 720x1080

# ![My Skills](https://skillicons.dev/icons?i=linux&theme=light) Sistema Operacional

|Sumário | Info|
---------|:--:
Codename | Bookworm
S.O | Armbian 23.8.1
Linux | Ubuntu
Kernel | 6.1.50
Arquivo | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.gz](https://imola.armbian.com/dl/aml-s9xx-box/archive/Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz)
Imagem Educabox | [educabox_armbian_imove.img.gz](https://drive.google.com/uc?export=download&id=1O6Xzlx-8S0DLrzNtspxkH4fDuruPiVn1)
DTB | [meson-gxl-s905w-p281.dtb](https://drive.google.com/uc?export=download&id=1sxFmf05YRUHH6osUPyVq6ZUMxfWzpNE9)

# 📌 Serviços Ativos/Inativos 
<img src="https://github.com/educabox/educabox/blob/main/imagens/logo-educabox.png?raw=true" align="right" alt="" width="120" height="120">

 - [x] CPU
 - [x] GPU/HDMI   
 - [x] USB 2.0
 - [ ] ~~WIFI (SV6051P)~~
 - [x] ETHERNET
 - [x] BLUETOOTH
 - [ ] ~~AUDIO~~

# 📄 Geral

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/GERAL.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🔧 SOC

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/SOC.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📲 Sistema

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/SISTEMA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🖥️ Tela

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/TELA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 💾 Memória

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/MEMO%CC%81RIA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📝 Neofetch

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/NEOFETCH.png?raw=true" alt="Size Limit CLI" width="738">
</p>

# ✅ Guia de Instalação

O guia de instalação abaixo é para criação de uma imagem limpa com os parâmetros necessários para que o Armbian seja instalado corretamente na TV Box - [IMOVE].

Caso deseje obter uma instalação pronta e otimizada para está TV Box, faça o download da [Imagem Educabox] do respectivo equipamento.

|Imagens | Download|
---------|:--:
Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop](https://imola.armbian.com/dl/aml-s9xx-box/archive/Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz)
Educabox | [educabox_armbian_imove.img.gz](https://drive.google.com/uc?export=download&id=1O6Xzlx-8S0DLrzNtspxkH4fDuruPiVn1)
DTB | [meson-gxl-s905w-p281.dtb](https://drive.google.com/uc?export=download&id=1sxFmf05YRUHH6osUPyVq6ZUMxfWzpNE9)

[Como Instalar nossa Imagem Educabox?](#)

## 1️⃣ Pré-requisitos

 1. Dispositivo USB (Pendrive) - ```Mínimo 8GB```
 2. Software [balenaEtcher](https://etcher.balena.io/) , [Rufus](https://rufus.ie/pt_BR/) ou [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)
 3. Imagem Oficial S.O Armbian
 
## 2️⃣ Gravação Imagem
 
1.  Execute balenaEtcher (*Preferência)
2.  Grave a imagem Armbian no cartão Pendrive USB
3.  Remova com segurança o Pendrive e insira-o novamente
4.  Ignore/Feche as caixas de diálogo do Windows/MacOS para formatar o Pendrive inserido

[Como  gravar uma Imagem no balenaEtcher?](#)
 
## 3️⃣ Configurar cartão Pendrive para Armbian

1.  Abra a partição legível do pendrive no Windows Explorer ou Finder (Ex: ```BOOT, armbian_boot```)
2.  Renomeie o arquivo apropriado abaixo para ```u-boot.ext``` na raiz do Pendrive:
    
    ~~u-boot-s905 (para s905)~~  
    ```u-boot-s905x-s912 (para s905x, S905w e s912)``` (Altere esse arquivo) p/ ```u-boot.ext``` <br>
    ~~u-boot-s905x2-s922 (para s905x2, s905x3 e s922)~~
    
3.  Edite o arquivo /extlinux/extlinux.conf em um editor de texto:
    
    1.  Comente as linhas com inicio FDT adicionando #
    2.  Remova o comentário das linhas aml s9xx FDT removendo #
    3.  Atualize/Adicione a linha FDT para apontar para um arquivo .dtb funcional para o seu dispositivo e salve o arquivo
    4. IMOVE -> ```/dtb/amlogic/meson-gxl-s905w-p281.dtb``` (*Remova #)
```
LABEL Armbian
LINUX /zImage
INITRD /uInitrd

# aml s9xxx
#FDT /dtb/amlogic/meson-gxbb-p200.dtb
#FDT /dtb/amlogic/meson-gxl-s905x-p212.dtb
#FDT /dtb/amlogic/meson-gxm-q200.dtb
#FDT /dtb/amlogic/meson-g12a-x96-max.dtb
#FDT /dtb/amlogic/meson-g12b-odroid-n2.dtb
FDT /dtb/amlogic/meson-gxl-s905w-p281.dtb 

APPEND root=LABEL=ROOT_EMMC rootflags=data=writeback rw console=ttyAML0,115200n8 
console=tty0 no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
```
    
4.  Remova o Pendrive com segurança
5.  Insira o Pendrive na TV Box

## ▶️ Inicializando no Armbian pela primeira vez via Pendrive

 1. Conecte o Pendrive na `porta USB1 ou USB2`
 2. Conecte o adaptador de energia na TV Box 
 3. Com um clips acione o botão `reset` e depois por alguns segundos o botão `update` até a tela apagar e reiniciar o equipamento
 4. O sistema será reinicializado e deverá então começar a inicializar o Armbian a partir do Pendrive
 5. Você deverá ver o terminal Armbian executando scripts de inicialização
 6. Quando solicitado, faça login com nome de `usuário: senha` `root: 1234`
 7. Armbian irá inicializar no ambiente de desktop
 8. Siga para - Instalação Armbian Pendrive para EMMC

## #️⃣ Inicializando no Armbian pela primeira vez via c/ Script

1. Se o dispositivo nunca inicializou a partir do armazenamento externo antes do carregamento do sistema operacional Android padrão
2. No Android, navegue até o menu de aplicativos > Executar atualização e backup
3. Selecione Local > Navegue até o Pendrive > aml_autoscript.zip
4. Selecione Atualizar
5. O sistema será reinicializado duas vezes e deverá então começar a inicializar o Armbian a partir do Pendrive
6. Você deverá ver o terminal Armbian executando scripts de inicialização
7. Quando solicitado, faça login com nome de `usuário: senha` `root: 1234`
8. Armbian irá inicializar no ambiente de desktop
9. Siga para - Instalação Armbian Pendrive para EMMC

## #️⃣ Instalação Armbian Pendrive para EMMC

 1. Depois que o ambiente desktop for inicializado abra o terminal de comando `Terminator` 
 2. No terminal digite: `\root\install-aml.sh` 
 3. O script fará uma cópia do u-boot original da TV Box e depois a instalação do Armbian 
 4. Diferente de outras TVs Boxes processadores Amlogic **não tem compatibilidade** com a instalação padrão do 
    Armbian `armbian-install`, **por isso não tente utilizar** o comando padrão do Armbian para instalação em TVs Boxes com processadores Amlogic
    
   ---
   <p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/armbian.png?raw=true" alt="Size Limit CLI" width="738">
</p>


