
# 💻 Instalação Imagem EducaBox

<img src="https://github.com/educabox/educabox/blob/main/imagens/logo_armbian.png?raw=true" align="right" width="120" height="178">

### 📝 Guia de Instalação 
 1. 🛜 [Downloads Imagens](#downloads)
 2. ▶️ [Aplicativos Pré-Instalados](#aplicativos)
 3. 🔍 [Pré-Requisitos](#requisitos)
 4. 💾 [Gravação Imagem](#gravacao)
 5. 📕 [Configurar SDCard ou Pendrive [RockChip RK322X]](#configurar-rk322x)
 6. 📗 [Configurar SDCard ou Pendrive [Amlogic S905X | S905W]](#configurar-s905xw)
 7. 📘 [Configurar SDCard ou Pendrive [Amlogic S905X2 | S905X3]](#configurar-s905x23)
 8. 📲 [Inicializando o Armbian pela primeira vez via Pendrive ou SDCard](#init-pendrive-sdcard)
 9. ⚙️ [Instalação Armbian SDCard para eMMC [RockChip RK322X]](#install-emmc-rk322x)
 10. ⚙️ [Instalação Armbian Pendrive para eMMC [S905X, S905W, S905X2, S905X3]](#install-emmc-s905)

#  ✅ <a id="downloads" />Download Educabox [Armbian]


O guia de instalação abaixo é para instalação de uma imagem live otimizada Armbian [Pendrive, SDCard] para todas as TVs Boxes mencionadas em nosso repositório, faça o download da [Imagem Educabox] do respectivo equipamento.

| TV BOX      | Processador     |    GPU   |  Mem    |   HD  |       Wifi       | Áudio |  Instalação                                                                                |
|-------------|-----------------|:-------: |:-------:|:-----:|------------------|:-----:|:------------------------------------------------------------------------------------------:|
| AUDIOSAT 4K | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ❌ SV6256P       |❌     | [Link](https://drive.google.com/uc?export=download&id=1yC5RHQ18KWe0IthDOr0hjjOQwAuOwbXM)   |
| BTV11       | Amlogic S905X3  | Mali-G31 | 1GB     | 16GB  | ✅ AP6212        |❌     | [Link](https://drive.google.com/uc?export=download&id=1P6PlI_igcaHj0yJiVMpjVUaqUzfHUOHn)   |
| BTVBX       | Amlogic S905X   | Mali-450 | 2GB     | 16GB  | ✅ AP6212        |❌     | [Link](https://drive.google.com/uc?export=download&id=1OylWmzEJR7dbFAdDsai_5nFSM2TbXtON)   |
| BTVE10      | Amlogic S905X2  | Mali-G31 | 2GB     | 8GB   | ✅ RTL8189FTV    |✅     | [Link](https://drive.google.com/uc?export=download&id=1P6PlI_igcaHj0yJiVMpjVUaqUzfHUOHn)   |
| DC BOX 8K   | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1VccDfPlLJgg-36uE3iX6VASHksebghIX)   |
| EXTREMO     | Amlogic S905W   | Mali-450 | 2GB     | 8GB   | ❌ SV6051P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1OylWmzEJR7dbFAdDsai_5nFSM2TbXtON)   |
| HTV6+       | Amlogic S905W   | Mali-450 | 2GB     | 16GB  | ✅ RTL8723BS     |❌     | [Link](https://drive.google.com/uc?export=download&id=1OylWmzEJR7dbFAdDsai_5nFSM2TbXtON)   |
| HTV7        | Amlogic S905X3  | Mali-G31 | 2GB     | 16GB  | ✅ RTL8822CS     |❌     | [Link](https://drive.google.com/uc?export=download&id=1P6PlI_igcaHj0yJiVMpjVUaqUzfHUOHn)   |
| I5          | RockChip 3229   | Mali-400 | 2GB     | 8GB   | ✅ RTL8723BS     |✅     | [Link](https://drive.google.com/uc?export=download&id=1P1tZx27ZXoTC-0VeJA8CnlOhvgHqKkBl)   |
| ID18        | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ✅ XR819         |✅     | [Link](https://drive.google.com/uc?export=download&id=1wvsE4q5AVrB59Sg9mAmPG2Z5Kc8WCc62)   |
| IMOVE       | Amlogic S905W   | Mali-450 | 1GB     | 8GB   | ❌ SV6051P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1OylWmzEJR7dbFAdDsai_5nFSM2TbXtON)   |
| IMOVE PRO   | Amlogic S905W   | Mali-450 | 1GB     | 8GB   | ❌ SV6051P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1OylWmzEJR7dbFAdDsai_5nFSM2TbXtON)   |
| IN X PLUS   | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1VccDfPlLJgg-36uE3iX6VASHksebghIX)   |
| MX9 4K 5G   | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ❌ SV6156P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1P1tZx27ZXoTC-0VeJA8CnlOhvgHqKkBl)   |
| MXQ PRO 4K  | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1VccDfPlLJgg-36uE3iX6VASHksebghIX)   |
| MXQ PRO 4K  | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ❌ ESP8089       |✅     | [Link](https://drive.google.com/uc?export=download&id=1P1tZx27ZXoTC-0VeJA8CnlOhvgHqKkBl)   |
| MXQ PLUS 4K | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ❌ SV6256P       |❌     | [Link](https://drive.google.com/uc?export=download&id=1yC5RHQ18KWe0IthDOr0hjjOQwAuOwbXM)   |
| MY BOX TV   | Amlogic S905X   | Mali-450 | 2GB     | 16GB  | ❌ AP6181        |❌     | [Link](https://drive.google.com/uc?export=download&id=1OylWmzEJR7dbFAdDsai_5nFSM2TbXtON)   |
| PLAY TV     | Amlogic S905X3  | Mali-G31 | 2GB     | 16GB  | ✅ RTL8189FTV    |❌     | [Link](https://drive.google.com/uc?export=download&id=1P6PlI_igcaHj0yJiVMpjVUaqUzfHUOHn)   |
| R69         | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ✅ XR819         |✅     | [Link](https://drive.google.com/uc?export=download&id=1wvsE4q5AVrB59Sg9mAmPG2Z5Kc8WCc62)   |
| R90 PLUS    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1V5SxqtJUHjaYTUNQTo4uHbCtEnxeeTBL)   |
| RPC 8K      | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1V5SxqtJUHjaYTUNQTo4uHbCtEnxeeTBL)   |
| RPC MINI    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1V5SxqtJUHjaYTUNQTo4uHbCtEnxeeTBL)   |
| RPC PLUS    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1VccDfPlLJgg-36uE3iX6VASHksebghIX)   |
| SEM NOME    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1V5SxqtJUHjaYTUNQTo4uHbCtEnxeeTBL)   |
| SUNLIGHT    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://drive.google.com/uc?export=download&id=1VccDfPlLJgg-36uE3iX6VASHksebghIX)   |
| SUPER TV    | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ RTL8189FTV    |✅     | [Link](https://drive.google.com/uc?export=download&id=1P1tZx27ZXoTC-0VeJA8CnlOhvgHqKkBl)   |
| TIGRE 2     | Amlogic S905X   | Mali-450 | 2GB     | 16GB  | ✅ RTL8723BS     |❌     | [Link](https://drive.google.com/uc?export=download&id=1OylWmzEJR7dbFAdDsai_5nFSM2TbXtON)   |
| UNITV S1    | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ RTW8723DS     |✅     | [Link](https://drive.google.com/uc?export=download&id=1P1tZx27ZXoTC-0VeJA8CnlOhvgHqKkBl)   |

## ▶️ <a id="aplicativos" />Aplicativos Pré-Instalados

| LibreOffice | Firefox | VLC | Explorer | Terminator | Bloco de Notas | Visualizador de Images | Visualizador PDF |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/libreoffice.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/firefox.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/vlc.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/explorador.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/terminator.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/bloconotas.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/images.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/pdf.png?raw=true&image_size=auto"/>

## 1️⃣ <a id="requisitos" />Pré-requisitos

<img src="https://github.com/educabox/educabox/blob/main/imagens/pendrive.png?raw=true" align="right" width="80" height="80">

1. Dispositivo USB (Pendrive) - ```Mínimo 8GB```
2. Software [balenaEtcher](https://etcher.balena.io/) , [Rufus](https://rufus.ie/pt_BR/) ou [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)
3. Imagem Oficial S.O Armbian
 
## 2️⃣ <a id="gravacao"/>Gravação Imagem
 
1.  Execute balenaEtcher (*Preferência).
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/1.png?raw=true" width="720"></p>

2.  Selecione a opção ``Flash from file`` e procure a imagem do seu respectivo aparelho no explorador de arquivos (Windows Explorer, Finder).
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/3.png?raw=true" width="720"></p>

3.  Em seguida clique na opção ``Select target`` e selecione o Pendrive/SDCard para gravar a imagem. Para TVs Boxes com capacidade de armazenamento (16GB ou maior) é recomendável um dispositivo com no mínimo 32GB, pois depois da descompactação as imagens podem variar entre 12GB a 18GB.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/4.png?raw=true" width="720"></p>

4.  Inicie o processo de gravação clicando na opção ``Flash``.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/5.png?raw=true" width="720"></p>

5.  Processo será iniciado, aguarde enquanto a imagem é descompactada na unidade removível.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/6.png?raw=true" width="720"></p>

6.  Ao final uma mensagem de gravação completa será exibida, caso não tenha ocorrido erros com a gravação.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/7.png?raw=true" width="720"></p>

7. Remova com segurança o Pendrive e insira-o novamente.
8.  Ignore/Feche as caixas de diálogo do Windows/MacOS para formatar o Pendrive inserido.

## 3️⃣ <a id="configurar-rk322x"/>Configurar SDCard ou Pendrive [RockChip RK322X]

Obs: A maioria das TV Boxes com processadores RockChip permitem o uso do utilitário [Multitool](https://users.armbian.com/jock/rk322x/multitool/multitool.img.xz) na inicialização do Boot, logo é possível utilizar o passo a passo descrito na seção [Instalação Educabox Android](https://github.com/educabox/educabox/blob/main/instalacao/instalacao-android.md) para processadores RockChip, porém ao invés de injetar a imagem Android insira uma imagem [Educabox Armbian](https://github.com/educabox/educabox/blob/main/instalacao/instalacao-educabox-live.md#-download-educabox-armbian).

1. Para esses processadores nenhuma configuração adicional é necessária [Rockchip 3228, 3228A e 3229], no entanto caso seu dispositivo não seja compatível com o .dtb padrão [rk322x-box.dtb](https://drive.google.com/uc?export=download&id=1oT52o_J2D1r7K-HXiNuS8qw1NQK_nc5h), faça a modificação para o .dtb da sua TV Box. Os arquivos .dtb podem ser encontrados na pasta `/dtb/` na raiz do SDCard ou Pendrive.
 
2.  Abra a partição legível do SDCard ou Pendrive no Windows Explorer ou Finder (Ex: ```BOOT_EMMC, armbian_boot```).
3.  Edite o arquivo `armbianEnv.txt` em um editor de texto:    
    1.  Comente as linhas com inicio `fdtfile=` adicionando #
    2.  Remova o comentário das linhas com inicio `fdtfile=` removendo #
    3.  Atualize/Adicione a linha FDT para apontar para um arquivo .dtb funcional para o seu dispositivo e salve o arquivo.
    4. RK3228, RK3229 -> `fdtfile=rk322x-box.dtb` (*Remova #).
```
verbosity=1
extraargs=coherent_pool=2M
bootlogo=true
overlay_prefix=rk322x
fdtfile=rk322x-box.dtb
rootdev=UUID=693cf783-43b1-4c4c-ba12-938bdeb8818f
rootfstype=ext4
overlays=cpu-hs emmc led-conf-default wlan-alt-wiring
usbstoragequirks=0x2537:0x1066:u,0x2537:0x1068:u
```
   
4. Altere ``rootdev=`` para o UUID do seu SDCard ou Pendrive. Para isso abra o terminal de comando no Linux `Ex: Terminator` e digite:

```
$sudo blkid

/dev/sda2: LABEL="ROOT_EMMC" UUID="44e4b9db-bb4a-49b6-b275-dee012310c92" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="a62ce241-02"
/dev/sda1: SEC_TYPE="msdos" LABEL_FATBOOT="BOOT_EMMC" LABEL="BOOT_EMMC" UUID="105D-4029" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="a62ce241-01"
/dev/zram1: LABEL="log2ram" UUID="8fab92bb-a90a-4217-945b-2c5f31e79b66" BLOCK_SIZE="4096" TYPE="ext4"
/dev/zram0: UUID="da778ae9-a60e-4fb8-943c-aa4fd5cf5efb" TYPE="swap"
```
**Obs: o comando ``blkid`` pode apresentar várias partições. Em geral armazenamentos eMMC e SDCards possuem a nomenclatura ``[mmcblk1, mmclk2]`` e Pendrives e HD's Externos são listados com ``[sda, sdb, ..., sdx]``. Sempre que for atualizar o UUID do seu dispositivo em um arquivo ``extlinux.conf`` ou ``armbianEnv.txt`` verifique qual o dispositivo de armazenamento quer atualizar eMMC ou Pendrive/SDCard.**

5. Copie o UUID da partição `LABEL="ROOT_EMMC"` e edite o `rootdev=` em ``\BOOT_EMMC\armbianEnv.txt``.
6. Remova o SDCard ou Pendrive com segurança.
7. Insira o SDCard ou Pendrive na TV Box.
8. Siga para - Inicializando no Armbian pela primeira vez via Pendrive ou SDCard.

## 4️⃣ <a id="configurar-s905xw"/>Configurar SDCard ou Pendrive [Amlogic S905X | S905W]

1. Para esses processadores nenhuma configuração adicional é necessária.
2. Apenas antes de inserir o Pendrive na TV Box, abra a partição legível do SDCard ou Pendrive no Windows Explorer ou Finder (Ex: ```BOOT_EMMC, armbian_boot```).
3. Verifique se arquivo ``u-boot.ext`` encontra-se na raiz do Pendrive, caso não esteja renomeie o arquivo ``u-boot`` correto para sua TV Box:
   
    ~~u-boot-s905 (para s905)~~  
    ```u-boot-s905x-s912 (para s905x, S905w e s912)``` (Altere esse arquivo) p/ ```u-boot.ext``` 
    ~~u-boot-s905x2-s922 (para s905x2, s905x3 e s922)~~
4. Veja também se o arquivo ``/extlinux/extlinux.conf`` está com as informações corretas sobre o .dtb.
5.  Caso precise, edite o arquivo ``/extlinux/extlinux.conf`` em um editor de texto:
    
	   1.  Comente as linhas com inicio FDT adicionando #
	   2.  Remova o comentário das linhas aml s9xx FDT removendo #
	   3.  Atualize/Adicione a linha FDT para apontar para um arquivo .dtb funcional para o seu dispositivo e salve o arquivo.
	   4. S905X -> ```/dtb/amlogic/meson-gxl-s905x-p212.dtb``` (*Remova #)
	   5. S905W -> ```/dtb/amlogic/meson-gxl-s905w-p281.dtb``` (*Remova #)
```
LABEL Armbian
LINUX /zImage
INITRD /uInitrd

# aml s9xxx
#FDT /dtb/amlogic/meson-gxbb-p200.dtb
#FDT /dtb/amlogic/meson-gxl-s905x-p212.dtb
#FDT /dtb/amlogic/meson-gxl-s905w-p281.dtb 
#FDT /dtb/amlogic/meson-gxm-q200.dtb
#FDT /dtb/amlogic/meson-g12a-x96-max.dtb
#FDT /dtb/amlogic/meson-g12b-odroid-n2.dtb

APPEND root=LABEL=ROOT_EMMC rootflags=data=writeback rw console=ttyAML0,115200n8 
console=tty0 no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
```
6.  Remova o Pendrive com segurança.
7.  Insira o Pendrive na TV Box.
8. Siga para - Inicializando no Armbian pela primeira vez via Pendrive ou SDCard.

## 5️⃣ <a id="configurar-s905x23"/>Configurar SDCard ou Pendrive [Amlogic S905X2 | S905X3]

1. Antes de inserir o Pendrive na TV Box, abra a partição legível do SDCard ou Pendrive no Windows Explorer ou Finder (Ex: ```BOOT_EMMC, armbian_boot```).
2. Abra o arquivo ``armbianEnv.txt`` na raiz do Pendrive.         
3. Edite o arquivo em um editor de texto, verifique se o seu dispositivo é S905X2 ou s905X3 e descomente ``fdtfile`` correto:        
```
extraargs=earlycon rootflags=data=writeback rw no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
bootlogo=false
verbosity=7
usbstoragequirks=0x2537:0x1066:u,0x2537:0x1068:u
console=both

# DTB file for this tvbox
# S905X2
#fdtfile=amlogic/meson-g12a-sei510.dtb
# S905X3
#fdtfile=amlogic/meson-sm1-sei610.dtb

# set this to the UUID of the root partition (value can be found 
# in /extlinux/extlinux.conf after APPEND root= or with blkid)
rootdev=UUID=92139c84-3871-41d7-a3f2-e8a943cbfa87

# Enable ONLY for gxbb (S905) / gxl (S905X/L/W) to create fake u-boot header
#soc_fixup=gxl-

APPEND root=LABEL=ROOT_EMMC rootflags=data=writeback rw console=ttyAML0,115200n8 
console=tty0 no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
```

4. Altere ``rootdev=`` para o UUID do seu Pendrive. Para isso abra o terminal de comando no Linux `Ex: Terminator` e digite:

```
$sudo blkid

/dev/sda2: LABEL="ROOT_EMMC" UUID="44e4b9db-bb4a-49b6-b275-dee012310c92" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="a62ce241-02"
/dev/sda1: SEC_TYPE="msdos" LABEL_FATBOOT="BOOT_EMMC" LABEL="BOOT_EMMC" UUID="105D-4029" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="a62ce241-01"
/dev/zram1: LABEL="log2ram" UUID="8fab92bb-a90a-4217-945b-2c5f31e79b66" BLOCK_SIZE="4096" TYPE="ext4"
/dev/zram0: UUID="da778ae9-a60e-4fb8-943c-aa4fd5cf5efb" TYPE="swap"
```
**Obs: o comando ``blkid`` pode apresentar várias partições. Em geral armazenamentos eMMC e SDCards possuem a nomenclatura ``[mmcblk1, mmclk2]`` e Pendrives e HD's Externos são listados com ``[sda, sdb, ..., sdx]``. Sempre que for atualizar o UUID do seu dispositivo em um arquivo ``extlinux.conf`` ou ``armbianEnv.txt`` verifique qual o dispositivo de armazenamento quer atualizar eMMC ou Pendrive/SDCard.**

5. Copie o UUID da partição `LABEL="ROOT_EMMC"` e edite o `rootdev=` em ``\BOOT_EMMC\armbianEnv.txt``
6. Remova o Pendrive com segurança.
7. Insira o Pendrive na TV Box.
8. Siga para - Inicializando no Armbian pela primeira vez via Pendrive ou SDCard.

## ▶️ <a id="init-pendrive-sdcard"/>Inicializando o Armbian pela primeira vez via Pendrive ou SDCard

1. Conecte o Pendrive na `porta USB1 ou USB2` ou SDCard.
2.  Para TVs Boxes com botão oculto na entrada `AV`:
	 - Pressione com um clips/palito o botão oculto na entrada  `AV` e ligue a TV Box na energia.
3.   Para TVs Boxes com botão `reset` e `update`:
		- Ligue a TV Box na energia
		- Com um clips acione o botão `reset` e depois por alguns segundos o botão `update` até a tela apagar e reiniciar o equipamento.
4. Para TVs Boxes apenas com botão `reset`:
	- Com um clips acione o botão `reset` e ligue a TV Box na energia até a tela apagar e reiniciar o equipamento.
5.  O sistema será reinicializado e deverá então começar a inicializar o Armbian a partir do Pendrive.
6.  Você deverá ver o terminal Armbian executando scripts de inicialização.
7.  Quando solicitado, faça login:  `usuário: educabox`  `senha: educabox`
8.  Armbian irá inicializar no ambiente de desktop.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/2.png?raw=true" width="720">
</p>
10.  Siga para - Instalação Armbian Pendrive para eMMC.

## 🔁 <a id="install-emmc-rk322x"/>Instalação Armbian SDCard para eMMC [RockChip RK322X]

1. Depois que o ambiente desktop for inicializado abra o terminal de comando `Terminator`. 
2. No terminal digite: `sudo armbian-config`. 
3. O comando vai executar o **_Utilitário de Configuração Armbian_**.
4. Selecione a opção `System`.
 
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/1.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

5. Selecione a opção `Install`.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/2.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

6. Selecione a opção `Boot from eMMC - system on eMMC`, para fazer a instalação no dispositivo de armazenamento interno.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/3.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 7. Selecione a opção `Yes` para formatar a unidade de armazenamento interno eMMC.
 <p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/4.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 8. Selecione a opção para o sistema de arquivos `ext4` (*padrão).
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/5.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 9. O processo de formatação e cópia dos arquivos será iniciado.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/6.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 10. Em seguida a instalação será finalizada, selecione a opção `Power off` para desligar a TV Box.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/7.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 11. Ligue novamente a TV Box sem o SDCard conectado para que inicialização do Armbian ocorra diretamente da TV Box.


## 🔁 <a id="install-emmc-s905"/>Instalação Armbian Pendrive para eMMC [S905X, S905W, S905X2, S905X3]

 1. Depois que o ambiente desktop for inicializado abra o terminal de comando `Terminator`. 
 2. No terminal digite: `/boot/install-aml.sh`. 
 <p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/8.png?raw=true" alt="Size Limit CLI" width="738">
</p> 
 
 3. O script fará uma cópia do u-boot original da TV Box e depois a instalação do Armbian. 
<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/9.png?raw=true" alt="Size Limit CLI" width="738">
</p>

**Obs: Algumas mensagens de erro de bibliotecas e escrita/remoção no arquivo fstab podem ocorrer!**

4. Ao final do processo um mensagem será exiba com a cópia completa do SO para a unidade eMMC. 
 <p align="center">
 <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/10.png?raw=true" alt="Size Limit CLI" width="738">
</p> 

5. Diferente de outras TVs Boxes processadores Amlogic **não tem compatibilidade** com a instalação padrão do Armbian `armbian-install`, **por isso não tente utilizar** o comando padrão do Armbian para instalação em TVs Boxes com processadores Amlogic.
 
 ### 👇🏼 Para TVs Boxes [S905X2, S905X3]
 **Obs: Antes de reiniciar novamente o Armbian faça as alterações abaixo, para que a próxima inicialização ocorra pelo armazenamento eMMC.**

8. Abra o gerenciador de arquivos e acesse a nova partição `BOOT_EMMC` no armazenamento eMMC.
9. Delete ou faça backup do arquivo `emmc_autoscript`.
10. Copie do Pendrive de instalação o arquivo `\usb\s905_autoscript` da partição `BOOT_EMMC` e cole na partição eMMC `BOOT_EMMC`, renomeie o arquivo para `emmc_autoscript`.
11. Ainda dentro da partição `BOOT_EMMC`  no armazenamento eMMC, abra o arquivo ``armbianEnv.txt``.
12. Altere ``rootdev=`` para o UUID da sua partição eMMC. Para isso abra o terminal de comando `Terminator` e digite:

```
$sudo blkid

/dev/mmcblk2p2: LABEL="ROOT_EMMC" UUID="44e4b9db-bb4a-49b6-b275-dee012310c92" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="a62ce241-02"
/dev/mmcblk2p1: SEC_TYPE="msdos" LABEL_FATBOOT="BOOT_EMMC" LABEL="BOOT_EMMC" UUID="105D-4029" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="a62ce241-01"
/dev/zram1: LABEL="log2ram" UUID="8fab92bb-a90a-4217-945b-2c5f31e79b66" BLOCK_SIZE="4096" TYPE="ext4"
/dev/zram0: UUID="da778ae9-a60e-4fb8-943c-aa4fd5cf5efb" TYPE="swap"
```
**Obs: o comando ``blkid`` pode apresentar várias partições. Em geral armazenamentos eMMC e SDCards possuem a nomenclatura ``[mmcblk1, mmclk2]`` e Pendrives e HD's Externos são listados com ``[sda, sdb, ..., sdx]``. Sempre que for atualizar o UUID do seu dispositivo em um arquivo ``extlinux.conf`` ou ``armbianEnv.txt`` verifique qual o dispositivo de armazenamento quer atualizar eMMC ou Pendrive/SDCard.**

6. Copie o UUID da partição `LABEL="ROOT_EMMC"` e edite o `rootdev=` em ``\BOOT_EMMC\armbianEnv.txt``.
7. Remova o Pendrive com segurança.
8. Reinicie a TV Box.

## Dúvidas e Erros

1. Encontrou algum erro em nossa documentação ou imagens, abra uma solicitação de problema/erro:
	- [Solicitação](https://github.com/educabox/educabox/issues)
	- E-mail: educabox@ifms.edu.br	
