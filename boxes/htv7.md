# 📦 TV BOX HTV7 
</p>
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/06%20-%20HTV7/Screenshots/HTV7%20HARDWARE.png?raw=true" alt="Size Limit CLI" width="1500">
 </p>

# ⚙️ **Hardware**

<img src="https://github.com/educabox/educabox/blob/main/imagens/00%20-%20PROCESSADORES/S905X3.png?raw=true" align="right" alt="" width="120" height="120">

|Sumário  |  Detalhes|
---------|:--:
Codename  |  HTV7
Fabricante  |  HTV
Modelo  |  7
Placa  Mãe  |  HD.1330.03  2020.06.24
Placa  DTB  | sm1_ac213_2g
CPU  |  Amlogic  S905X3
Família  |  Cortex-A55
Velocidade  |  100  -  1908  MHz
GPU  |  Mali-G21  MC1
Wifi  |  RTL8822CS
Memória  | 2GB
Armazenamento  | 16GB
Resolução  | 1080x1920

# ![My Skills](https://skillicons.dev/icons?i=linux&theme=light) Sistema Operacional

|Sumário | Detalhes|
---------|:--:
Codename | Bookworm
S.O | Armbian 23.8.1
Linux | Ubuntu
Kernel | 6.1.50
Imagem Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://imola.armbian.com/dl/aml-s9xx-box/archive/Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz)
Imagem Educabox | [educabox_armbian_htv7.img.gz](https://drive.google.com/uc?export=download&id=13Tv27Ph6NzFVbhkLe8QYam0327eHwrPQ)
DTB | [meson-sm1-sei610-ethfix.dtb](https://drive.google.com/uc?export=download&id=1C-LhDLrU13QZ3Ei-bLLPQ85l6inWfb_W) - Créditos [[Almotra]](https://forum.armbian.com/topic/12988-armbian-for-amlogic-s905x3/?do=findComment&comment=108204)

# 📌 Serviços Ativos/Inativos 
<img src="https://github.com/educabox/educabox/blob/main/imagens/logo-educabox.png?raw=true" align="right" alt="" width="120" height="120">

 - ✅ CPU
 - ✅ GPU/HDMI   
 - ✅ USB 3.0
 - ❌ ~~WIFI (RTL8822CS)~~
 - ✅ ETHERNET
 - ✅ BLUETOOTH
 - ❌ ~~AUDIO~~
   
# 📄 Geral

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/06%20-%20HTV7/Screenshots/GERAL.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🔧 SOC

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/06%20-%20HTV7/Screenshots/SOC.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📲 Sistema

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/06%20-%20HTV7/Screenshots/SISTEMA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🖥️ Tela

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/06%20-%20HTV7/Screenshots/TELA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 💾 Memória

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/06%20-%20HTV7/Screenshots/MEMORIA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📝 Neofetch

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/06%20-%20HTV7/Screenshots/NEOFETCH.png?raw=true" alt="Size Limit CLI" width="738">
</p>

# ✅ Guia de Instalação

O guia de instalação abaixo é para criação de uma imagem limpa com os parâmetros necessários para que o Armbian seja instalado corretamente na TV Box - [HTV7].

Caso deseje obter uma instalação pronta e otimizada para está TV Box, faça o download da [Imagem Educabox] do respectivo equipamento.

|Imagens | Download|
---------|:--:
Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://imola.armbian.com/dl/aml-s9xx-box/archive/Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz)
Educabox | [educabox_armbian_htv7.img.gz](https://drive.google.com/uc?export=download&id=13Tv27Ph6NzFVbhkLe8QYam0327eHwrPQ)
DTB | [meson-sm1-sei610-ethfix.dtb](https://drive.google.com/uc?export=download&id=1C-LhDLrU13QZ3Ei-bLLPQ85l6inWfb_W) - Créditos [[Almotra]](https://forum.armbian.com/topic/12988-armbian-for-amlogic-s905x3/?do=findComment&comment=108204)

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

Obs: Para esta Box não é necessário editar o arquivo `u-boot` do Armbian. Portanto, eles não são necessários. Basta algumas modificações simples para inicializar o Armbian.

Funciona para os seguintes processadores:
-   S905x (GXL)
-   S912 (GXM)
-   S905x2 (G12A)
-   S922X (G12B)
-   S905X3 (SM1)

Basta copiar os arquivos anexados para a partição de `boot` da imagem Armbian após gravar a imagem em um disco USB:

1.  Abra a partição legível do Pendrive no Windows Explorer ou Finder (Ex: ``BOOT, armbian_boot``)
2. Delete ou faça um Backup dos arquivos [aml_autoscript] e [s905_autoscript] existentes na raiz do Pendrive.
3. Copie os arquivos [[aml_autoscript]](https://drive.google.com/uc?export=download&id=11_2ED60PkU16qWI3BMhDq8P7ddh0XC52) e [[s905_autoscript]](https://drive.google.com/uc?export=download&id=10LiKlvmS6M29tFIWwuJT1Vy0eWQJEl0o) para raiz do Pendrive.
4.  Copie o arquivo [.dtb](https://drive.google.com/uc?export=download&id=1C-LhDLrU13QZ3Ei-bLLPQ85l6inWfb_W) ``meson-sm1-sei610-ethfix.dtb`` para ``/dtb/amlogic/``
5. Crie um novo arquivo chamado ``armbianEnv.txt`` na raiz do Pendrive         
6.  Edite o arquivo em um editor de texto e cole o código abaixo - Créditos [[Devmfc]](https://forum.armbian.com/topic/30245-cant-boot-with-2305-or-later-builds-on-s905x2-g12a-or-s905x3-sm1/?do=findComment&comment=171830):
        
```
extraargs=earlycon rootflags=data=writeback rw no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
bootlogo=false
verbosity=7
usbstoragequirks=0x2537:0x1066:u,0x2537:0x1068:u
console=both

# DTB file for this tvbox
fdtfile=amlogic/meson-sm1-sei610-ethfix.dtb

# set this to the UUID of the root partition (value can be found 
# in /extlinux/extlinux.conf after APPEND root= or with blkid)
rootdev=UUID=92139c84-3871-41d7-a3f2-e8a943cbfa87

# Enable ONLY for gxbb (S905) / gxl (S905X/L/W) to create fake u-boot header
#soc_fixup=gxl-

APPEND root=LABEL=ROOT_ rootflags=data=writeback rw console=ttyAML0,115200n8 
console=tty0 no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
```
7. Altere ``rootdev=`` para o UUID do seu Pendrive. Para isso acesse o arquivo no Pendrive ```/extlinux/extlinux.conf``` e copie o UUID correto.
8. Somente se sua caixa possuir um SOC GXBB (S905) ou GXL (S905X/W/L), remova o comentário da linha `soc_fixup=gxl-`
9. Remova o Pendrive com segurança
10. Insira o Pendrive na TV Box

## ▶️ Inicializando no Armbian pela primeira vez via Pendrive

 1. Conecte o Pendrive na `porta USB1 ou USB2`
 2. Conecte o adaptador de energia na TV Box 
 3. Com um clips acione o botão `reset` até a tela apagar e reiniciar o equipamento.
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
 4. Diferente de outras TVs Boxes processadores Amlogic **não tem compatibilidade** com a instalação padrão do Armbian `armbian-install`, **por isso não tente utilizar** o comando padrão do Armbian para instalação em TVs Boxes com processadores Amlogic
 
 **Obs: Antes de reiniciar novamente o Armbian faça as alterações abaixo, para que a próxima inicialização ocorra pelo armazenamento eMMC.**

1. Abra o gerenciador de arquivos e acesse a nova partição `BOOT_EMMC` no armazenamento eMMC.
2. Delete ou faça backup do arquivo `emmc_autoscript`
3. Copie do Pendrive de instalação o arquivo `s905_autoscript` na raiz da partição `BOOT_EMMC` e renomeie o arquivo para `emmc_autoscript`.
4. Ainda dentro da partição `BOOT_EMMC` abra o arquivo ``armbianEnv.txt``
5. Altere ``rootdev=`` para o UUID da sua partição eMMC. Para isso abra o terminal de comando `Terminator` e digite:

```
$sudo blkid

/dev/mmcblk2p2: LABEL="ROOT_EMMC" UUID="44e4b9db-bb4a-49b6-b275-dee012310c92" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="a62ce241-02"
/dev/mmcblk2p1: SEC_TYPE="msdos" LABEL_FATBOOT="BOOT_EMMC" LABEL="BOOT_EMMC" UUID="105D-4029" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="a62ce241-01"
/dev/zram1: LABEL="log2ram" UUID="8fab92bb-a90a-4217-945b-2c5f31e79b66" BLOCK_SIZE="4096" TYPE="ext4"
/dev/zram0: UUID="da778ae9-a60e-4fb8-943c-aa4fd5cf5efb" TYPE="swap"
```
6. Copie o UUID da partição `LABEL="ROOT_EMMC"` e edite o `rootdev=` em ``\BOOT_EMMC\armbianEnv.txt``
7. Remova o Pendrive com segurança
8. Reinicie a TV BOX
---
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/armbian.png?raw=true" alt="Size Limit CLI" width="738">
</p>
