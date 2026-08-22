# 📦 TV BOX EXTREMO 
</p>
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/07%20-%20EXTREMO/Screenshots/EXTREMO%20HARDWARE.png?raw=true" alt="Size Limit CLI" width="1500">
 </p>

# ⚙️ **Hardware**

<img src="https://github.com/educabox/educabox/blob/main/imagens/00%20-%20PROCESSADORES/S905W.png?raw=true" align="right" alt="" width="120" height="120">

|Sumário | Detalhes|
---------|:--:
📦 Codename | EXTREMO
🤖 Fabricante | AZ America
🎛️ Modelo | EXTREMO
⚙️ Placa Mãe | A95XA1W_V5.2 2018.03.12
📝 Placa DTB | glx_p281_2g
🖲️ CPU | Amlogic S905W
⚡️ Família | Cortex-A53
🧭 Velocidade | 100 - 1200 MHz
📟 GPU | Mali-450 MP
🛜 Wifi | SV6051P 
🗃️ Memória | 2GB
💾 Armazenamento | 8GB
🌁 Resolução | 1080x1920

# ![My Skills](https://skillicons.dev/icons?i=linux&theme=light) Sistema Operacional

<img src="https://github.com/educabox/educabox/blob/main/imagens/logo_armbian.png?raw=true"  align="right" alt="" width="120" height="178">

| 📱 S.O. | 🔢 Kernel | 📶 Versão | 🖥️ Interface | ⬇️ Download |
|---------|:------:|:------:|:---------:|:--------:|
| Educabox | 6.1.50 | 23.8.1 | XFCE | [.img](https://drive.google.com/uc?export=download&id=1wKIrC-eo3MBKHRaaKdOrGqzVMo95-Nrs)|
| Educabox | 6.18.35 | 26.8.0 | XFCE | [.img](https://drive.google.com/uc?export=download&id=19OqWtYmzMLA0df238TVcSRPjkraTR9ct)|
| Educabox | 6.18.38 | 26.8.0 | XFCE | [.img](https://drive.google.com/uc?export=download&id=1TdwWDQtmJLtLpqEkdjZWG51VgbeDo_Gf)|
| Armbian | 6.1.50 | 23.8.1 | XFCE | [.img](https://k-space.ee.armbian.com/archive/aml-s9xx-box/archive/Armbian_23.8.1_Aml-s9xx-box_jammy_current_6.1.50_xfce_desktop.img.xz)|
| Armbian | Atual | Atual | XFCE | [.img](https://armbian.com/pt/boards/aml-s9xx-box)|

**DTB** = [meson-gxl-s905w-p281.dtb](https://drive.google.com/uc?export=download&id=18R1bRe5b6EazsM5IxBbuisj8wCf77Cem)

# 📌 Serviços Ativos/Inativos 
<img src="https://github.com/educabox/educabox/blob/main/imagens/logo-educabox.png?raw=true" align="right" alt="" width="120" height="120">

 - ✅ CPU
 - ✅ GPU/HDMI   
 - ✅ USB 2.0
 - ❌ ~~WIFI (SV6051P)~~
 - ✅ ETHERNET
 - ✅ BLUETOOTH
 - ✅ AUDIO

# 📝 Neofetch

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/01%20-%20IMOVE/Screenshots/NEOFETCH.png?raw=true" alt="Size Limit CLI" width="738">
</p>

# ✅ Guia de instalação da imagem oficial do Armbian

O guia de instalação abaixo é para a criação de uma imagem limpa da [**[Imagem Oficial do Armbian]**](https://archive.armbian.com/), com os parâmetros necessários para que o Armbian seja instalado corretamente na TV Box - [**EXTREMO**].

**Outras versões** = [Repositório Oficial Armbian](https://archive.armbian.com/)

🔴 Caso deseje obter uma instalação pronta e otimizada para esta TV Box, faça o download da [[**Imagem Educabox**]](https://github.com/educabox/educabox/blob/main/instalacao/instalacao-educabox-live.md) correspondente a este equipamento.

[Como instalar nossa imagem Educabox?](https://github.com/educabox/educabox/blob/main/instalacao/instalacao-educabox-live.md)

<a href="https://github.com/educabox/educabox/blob/main/instalacao/instalacao-educabox-live.md"><img src="https://github.com/educabox/educabox/blob/main/imagens/tutorial_educabox.png?raw=true&image_size=auto"/>

## 1️⃣ Pré-requisitos

1. Dispositivo USB (pendrive) - ```Mínimo de 8 GB```
2. Software [balenaEtcher](https://etcher.balena.io/), [Rufus](https://rufus.ie/pt_BR/) ou [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)
3. Imagem oficial do Armbian

## 2️⃣ Gravação da imagem

1. Execute o balenaEtcher (preferencialmente)
2. Grave a imagem do Armbian no pendrive USB
3. Remova com segurança o pendrive e insira-o novamente
4. Ignore/feche as caixas de diálogo do Windows/macOS que solicitarem a formatação do pendrive inserido

[Como gravar uma imagem no balenaEtcher?](https://github.com/educabox/educabox/blob/main/instalacao/gravacao-balenaecther.md)

<a href="https://github.com/educabox/educabox/blob/main/instalacao/gravacao-balenaecther.md"><img src="https://github.com/educabox/educabox/blob/main/imagens/tutorial_balena.png?raw=true&image_size=auto"/>
 
## 3️⃣ Configurar o SD Card ou pendrive para o Armbian

Obs.: Para esta TV Box, não é necessário editar o arquivo `u-boot` do Armbian. Portanto, esse arquivo não precisa ser modificado. Bastam algumas modificações simples para inicializar o Armbian.

Funciona para os seguintes processadores:
- S905x (GXL)
- S905W (GXL)
- S912 (GXM)
- S905x2 (G12A)
- S922X (G12B)
- S905X3 (SM1)
- S905X4 (SC2)
- S905W2 (S4)

Basta copiar os arquivos disponibilizados para a partição de `boot` da imagem do Armbian após gravar a imagem em um disco USB:

1. Abra a partição legível do pendrive no Windows Explorer ou Finder (ex.: ``BOOT, armbian_boot``)
2. Exclua ou faça backup dos arquivos [aml_autoscript] e [s905_autoscript] existentes na raiz do pendrive.
3. Baixe a última versão do BootScripts disponibilizada pelo - [[Devmfc - Link]](https://github.com/devmfc/amlogic-bootscripts-Armbian/releases).
4. Extraia e copie os arquivos **[aml_autoscript, armbianEnv.txt, gxl-fixup.scr, s905_autoscript]** para a raiz do pendrive.
5. Abra o arquivo ``armbianEnv.txt`` na raiz do pendrive
6. Edite o arquivo em um editor de texto e substitua o arquivo [.dtb] para versão da sua TV BOX:

```text
extraargs=earlycon rootflags=data=writeback rw no_console_suspend consoleblank=0 fsck.fix=yes fsck.repair=yes net.ifnames=0
bootlogo=false
verbosity=7
usbstoragequirks=0x2537:0x1066:u,0x2537:0x1068:u
console=both

# Arquivo DTB para esta TV Box
fdtfile=amlogic/meson-gxl-s905w-p281.dtb

# Defina isto como o UUID da partição raiz
# (o valor pode ser encontrado em /extlinux/extlinux.conf depois de APPEND root=
# ou usando blkid)
#rootdev=UUID=00000000-0000-0000-0000-000000000000
# ou use o rótulo padrão da partição:
#rootdev=LABEL=armbi_root

# Ative SOMENTE para gxbb (S905) / gxl (S905X/L/W)
# para criar um cabeçalho U-Boot falso
soc_fixup=gxl-
```

6. Altere ``rootdev=`` para o UUID do seu pendrive. Para isso, acesse o arquivo no pendrive ```/extlinux/extlinux.conf``` e copie o UUID correto.
7. Somente se sua caixa possuir um SOC GXBB (S905) ou GXL (S905X/W/L), descomente a linha `soc_fixup=gxl-`. **Para esta TV Box, essa linha deve ser descomentada.**
8. Remova o pendrive com segurança
9. Insira o pendrive na TV Box

## ▶️ Inicializando no Armbian pela primeira vez via Pendrive

 1. Conecte o Pendrive na `porta USB1 ou USB2`
 2. Pressione com um clipe/palito o botão oculto na entrada `AV`. 
 3. Conecte o adaptador de energia na TV Box até a tela apagar e reiniciar o equipamento
 4. O sistema será reinicializado e deverá então começar a inicializar o Armbian a partir do Pendrive
 5. Você deverá ver o terminal Armbian executando scripts de inicialização
 6. Quando solicitado, faça login com nome de `usuário: root` `senha: 1234`
 7. Armbian irá inicializar no ambiente de desktop
 8. Siga para - Instalação Armbian Pendrive para eMMC

## #️⃣ Inicializando o Armbian pela primeira vez usando um script

1. Se o dispositivo nunca inicializou a partir do armazenamento externo antes do carregamento do sistema operacional Android padrão, prossiga conforme as etapas abaixo.
2. No Android, navegue até o menu de aplicativos > Executar atualização e backup
3. Selecione Local > Navegue até o pendrive > aml_autoscript.zip
4. Selecione Atualizar
5. O sistema será reinicializado duas vezes e deverá então começar a inicializar o Armbian a partir do pendrive
6. Você deverá ver o terminal do Armbian executando scripts de inicialização
7. Quando solicitado, faça login usando o usuário `root` e a senha `1234`
8. O Armbian será inicializado no ambiente de desktop
9. Siga para - Instalação do Armbian do pendrive para o eMMC

## #️⃣ Instalação do Armbian do pendrive para o eMMC

1. Depois que o ambiente desktop for inicializado, abra o terminal `Terminator`
2. No terminal, digite: `root\install-aml.sh`
3. O script fará uma cópia do u-boot original da TV Box e depois instalará o Armbian
4. Diferentemente de outras TV Boxes, os processadores Amlogic **não são compatíveis** com a instalação padrão do Armbian `armbian-install`, **por isso, não tente utilizar** o comando padrão do Armbian para instalação em TV Boxes com processadores Amlogic.

**Obs.: Antes de reiniciar novamente o Armbian, faça as alterações abaixo para que a próxima inicialização ocorra pelo armazenamento eMMC.**

1. Abra o gerenciador de arquivos e acesse a nova partição `BOOT_EMMC` no armazenamento eMMC.
2. Exclua ou faça backup do arquivo `emmc_autoscript`
3. Copie do pendrive de instalação o arquivo `s905_autoscript` para a raiz da partição `BOOT_EMMC` e renomeie o arquivo para `emmc_autoscript`.
4. Ainda dentro da partição `BOOT_EMMC`, abra o arquivo ``armbianEnv.txt``
5. Altere ``rootdev=`` para o UUID da sua partição eMMC. Para isso, abra o terminal `Terminator` e digite:

```text
$sudo blkid

/dev/mmcblk2p2: LABEL="ROOT_EMMC" UUID="44e4b9db-bb4a-49b6-b275-dee012310c92" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="a62ce241-02"
/dev/mmcblk2p1: SEC_TYPE="msdos" LABEL_FATBOOT="BOOT_EMMC" LABEL="BOOT_EMMC" UUID="105D-4029" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="a62ce241-01"
/dev/zram1: LABEL="log2ram" UUID="8fab92bb-a90a-4217-945b-2c5f31e79b66" BLOCK_SIZE="4096" TYPE="ext4"
/dev/zram0: UUID="da778ae9-a60e-4fb8-943c-aa4fd5cf5efb" TYPE="swap"
```

**Obs.:** O comando ``blkid`` pode apresentar várias partições. Em geral, os armazenamentos eMMC e SD Cards possuem a nomenclatura ``[mmcblk1, mmclk2]``, enquanto pendrives e HDs externos são listados com ``[sda, sdb, ..., sdx]``. Sempre que for atualizar o UUID do seu dispositivo em um arquivo ``extlinux.conf`` ou ``armbianEnv.txt``, verifique qual dispositivo de armazenamento você deseja atualizar: eMMC ou pendrive/SD Card.

6. Copie o UUID da partição `LABEL="ROOT_EMMC"` e edite o `rootdev=` em ``\BOOT_EMMC\armbianEnv.txt``
7. Remova o pendrive com segurança
8. Reinicie a TV Box
---
<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/logo_armbian_branco.png?raw=true" alt="Size Limit CLI" width="240">
</p>
