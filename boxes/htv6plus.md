# 📦 TV BOX HTV6+
</p>
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/05%20-%20HTV6PLUS/Screenshots/HTV6PLUS%20HARDWARE.png?raw=true" alt="Size Limit CLI" width="1500">
 </p>

# ⚙️ **Hardware**

<img src="https://github.com/educabox/educabox/blob/main/imagens/00%20-%20PROCESSADORES/S905W.png?raw=true" align="right" alt="" width="120" height="120">

|Sumário | Detalhes|
---------|:--:
Codename | HTV6+
Fabricante | HTV
Modelo | 6+ (Plus)
Placa Mãe | HD.1326.05 2018.9.28
Placa DTB | glx_p212_2g
CPU | Amlogic S905W
Família | Cortex-A53
Velocidade | 100 - 1512 MHz
GPU | Mali-450 MP
Wifi | RTL8723BS 
Memória | 2GB
Armazenamento | 16GB
Resolução | 1080x1920

# ![My Skills](https://skillicons.dev/icons?i=linux&theme=light) Sistema Operacional

|Sumário | Detalhes|
---------|:--:
Codename | Bookworm
S.O | Armbian 23.8.1
Linux | Ubuntu
Kernel | 6.1.50
Imagem Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://drive.google.com/uc?export=download&id=16XfAspTprQX2QKNFBrFKEcHLAQbMXLjE)
Torrent Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://drive.google.com/uc?export=download&id=10nbA5OmPXiTydt9d8HHTb1Cm_RJv1YWm)
Imagem Educabox | [educabox_armbian_htv6plus.img.gz](https://drive.google.com/uc?export=download&id=19QaJgEUeq8gKwQdj9ZN7SVD5Uve7ifBN)
DTB | [meson-gxl-s905w-p281.dtb](https://drive.google.com/uc?export=download&id=1sxFmf05YRUHH6osUPyVq6ZUMxfWzpNE9)

# 📌 Serviços Ativos/Inativos 
<img src="https://github.com/educabox/educabox/blob/main/imagens/logo-educabox.png?raw=true" align="right" alt="" width="120" height="120">

 - ✅ CPU
 - ✅ GPU/HDMI   
 - ✅ USB 2.0
 - ✅ WIFI (RTL8723BS)
 - ✅ ETHERNET
 - ✅ BLUETOOTH
 - ❌ ~~AUDIO~~

# 📄 Geral

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/05%20-%20HTV6PLUS/Screenshots/GERAL.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🔧 SOC

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/05%20-%20HTV6PLUS/Screenshots/SOC.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📲 Sistema

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/05%20-%20HTV6PLUS/Screenshots/SISTEMA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🖥️ Tela

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/05%20-%20HTV6PLUS/Screenshots/TELA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 💾 Memória

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/05%20-%20HTV6PLUS/Screenshots/MEMORIA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📝 Neofetch

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/05%20-%20HTV6PLUS/Screenshots/NEOFETCH.png?raw=true" alt="Size Limit CLI" width="738">
</p>

# ✅ Guia de Instalação

O guia de instalação abaixo é para criação de uma imagem limpa com os parâmetros necessários para que o Armbian seja instalado corretamente na TV Box - [HTV6+].

Caso deseje obter uma instalação pronta e otimizada para está TV Box, faça o download da [Imagem Educabox] do respectivo equipamento.

|Imagens | Download|
---------|:--:
Imagem Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://drive.google.com/uc?export=download&id=16XfAspTprQX2QKNFBrFKEcHLAQbMXLjE)
Torrent Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://drive.google.com/uc?export=download&id=10nbA5OmPXiTydt9d8HHTb1Cm_RJv1YWm)
Educabox | [educabox_armbian_htv6plus.img.gz](https://drive.google.com/uc?export=download&id=19QaJgEUeq8gKwQdj9ZN7SVD5Uve7ifBN)
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
 
## 3️⃣ Configurar SDCard ou Pendrive para Armbian

1.  Abra a partição legível do pendrive no Windows Explorer ou Finder (Ex: ```BOOT, armbian_boot```)
2.  Renomeie o arquivo apropriado abaixo para ```u-boot.ext``` na raiz do Pendrive:
    
    ~~u-boot-s905 (para s905)~~  
    ```u-boot-s905x-s912 (para s905x, S905w e s912)``` (Altere esse arquivo) p/ ```u-boot.ext``` 
    ~~u-boot-s905x2-s922 (para s905x2, s905x3 e s922)~~
    
3.  Edite o arquivo /extlinux/extlinux.conf em um editor de texto:
    
    1.  Comente as linhas com inicio FDT adicionando #
    2.  Remova o comentário das linhas aml s9xx FDT removendo #
    3.  Atualize/Adicione a linha FDT para apontar para um arquivo .dtb funcional para o seu dispositivo e salve o arquivo
    4. HTV6+ -> ```/dtb/amlogic/meson-gxl-s905w-p281.dtb``` (*Remova #)
```
LABEL Armbian
LINUX /zImage
INITRD /uInitrd

# aml s9xxx
#FDT /dtb/amlogic/meson-gxbb-p200.dtb
#FDT /dtb/amlogic/meson-gxl-s905x-p212.dtb
FDT /dtb/amlogic/meson-gxl-s905w-p281.dtb 
#FDT /dtb/amlogic/meson-gxm-q200.dtb
#FDT /dtb/amlogic/meson-g12a-x96-max.dtb
#FDT /dtb/amlogic/meson-g12b-odroid-n2.dtb

APPEND root=LABEL=ROOT_EMMC rootflags=data=writeback rw console=ttyAML0,115200n8 
console=tty0 no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
```
    
4.  Remova o Pendrive com segurança
5.  Insira o Pendrive na TV Box

## ▶️ Inicializando no Armbian pela primeira vez via Pendrive

 1. Conecte o Pendrive na `porta USB1 ou USB2`
 2. Pressione com um clips/palito o botão `Recovery`. 
 4. Conecte o adaptador de energia na TV Box até a tela apagar e reiniciar o equipamento
 4. O sistema será reinicializado e deverá então começar a inicializar o Armbian a partir do Pendrive
 5. Você deverá ver o terminal Armbian executando scripts de inicialização
 6. Quando solicitado, faça login com nome de `usuário: root` `senha: 1234`
 7. Armbian irá inicializar no ambiente de desktop
 8. Siga para - Instalação Armbian Pendrive para eMMC

## #️⃣ Inicializando no Armbian pela primeira vez via c/ Script

1. Se o dispositivo nunca inicializou a partir do armazenamento externo antes do carregamento do sistema operacional Android padrão
2. No Android, navegue até o menu de aplicativos > Executar atualização e backup
3. Selecione Local > Navegue até o Pendrive > aml_autoscript.zip
4. Selecione Atualizar
5. O sistema será reinicializado duas vezes e deverá então começar a inicializar o Armbian a partir do Pendrive
6. Você deverá ver o terminal Armbian executando scripts de inicialização
7. Quando solicitado, faça login com nome de `usuário: root` `senha: 1234`
8. Armbian irá inicializar no ambiente de desktop
9. Siga para - Instalação Armbian Pendrive para eMMC

## #️⃣ Instalação Armbian Pendrive para eMMC

 1. Depois que o ambiente desktop for inicializado abra o terminal de comando `Terminator` 
 2. No terminal digite: `\root\install-aml.sh` 
 3. O script fará uma cópia do u-boot original da TV Box e depois a instalação do Armbian 
 4. Diferente de outras TVs Boxes processadores Amlogic **não tem compatibilidade** com a instalação padrão do 
    Armbian `armbian-install`, **por isso não tente utilizar** o comando padrão do Armbian para instalação em TVs Boxes com processadores Amlogic
 5. Remova o Pendrive com segurança
 6. Reinicie a TV BOX
    
   ---
   <p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/armbian.png?raw=true" alt="Size Limit CLI" width="738">
</p>


