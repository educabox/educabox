
# 📦 TV BOX RPC PLUS
</p>
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/15%20-%20RPCPLUS/Screenshots/RPCPLUS%20HARDWARE.png?raw=true" alt="Size Limit CLI" width="1500">
 </p>

# ⚙️ **Hardware**

<img src="https://github.com/educabox/educabox/blob/main/imagens/00%20-%20PROCESSADORES/RK3229.png?raw=true" align="right" alt="" width="120" height="120">

|Sumário | Detalhes|
---------|:--:
Codename | RPC PLUS
Fabricante | RPC
Modelo | PLUS
Placa Mãe | R3229Q_V8.1 2020.06.15
Placa DTB | rk30sdk
CPU | Rockchip 3229
Família | Cortex-A7
Velocidade | 408 - 1200 MHz
GPU | Mali-400 MP
Wifi | SV6051P 
Memória | 1GB
Armazenamento | 8GB
Resolução | 720x1280

# ![My Skills](https://skillicons.dev/icons?i=linux&theme=light) Sistema Operacional

|Sumário | Detalhes|
---------|:--:
Codename | Bookworm
S.O | Armbian 23.8.1
Linux | Ubuntu
Kernel | 6.1.50
Imagem Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://imola.armbian.com/dl/aml-s9xx-box/archive/Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz)
Imagem Educabox | [educabox_armbian_rk322x.img.gz](https://drive.google.com/uc?export=download&id=1yrbGJaaH6ONd6Td5SeE_crzek8Ebmx6F)
DTB | [rk322x-box.dtb](https://drive.google.com/uc?export=download&id=1oT52o_J2D1r7K-HXiNuS8qw1NQK_nc5h)

# 📌 Serviços Ativos/Inativos 
<img src="https://github.com/educabox/educabox/blob/main/imagens/logo-educabox.png?raw=true" align="right" alt="" width="120" height="120">

 - ✅ CPU
 - ✅ GPU/HDMI   
 - ✅ USB 2.0
 - ❌ WIFI (SV6051P)
 - ✅ ETHERNET
 - ✅ BLUETOOTH
 - ✅ AUDIO

# 📄 Geral

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/15%20-%20RPCPLUS/Screenshots/GERAL.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🔧 SOC

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/14%20-%20RPC8K/Screenshots/SOC.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📲 Sistema

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/15%20-%20RPCPLUS/Screenshots/SISTEMA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 🖥️ Tela

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/15%20-%20RPCPLUS/Screenshots/TELA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 💾 Memória

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/15%20-%20RPCPLUS/Screenshots/MEMORIA.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

# 📝 Neofetch

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/15%20-%20RPCPLUS/Screenshots/NEOFETCH.png?raw=true" alt="Size Limit CLI" width="738">
</p>

# ✅ Guia de Instalação

O guia de instalação abaixo é para criação de uma imagem limpa com os parâmetros necessários para que o Armbian seja instalado corretamente na TV Box - [RPC PLUS].

Caso deseje obter uma instalação pronta e otimizada para está TV Box, faça o download da [Imagem Educabox] do respectivo equipamento.

|Imagens | Download|
---------|:--:
Oficial | [Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz](https://imola.armbian.com/dl/aml-s9xx-box/archive/Armbian_23.8.1_Aml-s9xx-box_bookworm_current_6.1.50_xfce_desktop.img.xz)
Educabox | [educabox_armbian_rk322x.img.gz](https://drive.google.com/uc?export=download&id=1yrbGJaaH6ONd6Td5SeE_crzek8Ebmx6F)
DTB | [rk322x-box.dtb](https://drive.google.com/uc?export=download&id=1oT52o_J2D1r7K-HXiNuS8qw1NQK_nc5h)

[Como Instalar nossa Imagem Educabox?](#)

## 0️⃣ Pré-requisitos instalação Multitool via SD/CARD

Obs: Caso queira gravar uma imagem na unidade de armazenamento interna da TV Box sem iniciar o Armbian/Live em um SD/CARD siga os passos abaixo, caso contrário avance para 1️⃣ Pré-requisitos instalação live SD/CARD

1. Dispositivo SD/CARD  - ```Mínimo 4GB```
2. Software [balenaEtcher](https://etcher.balena.io/) , [Rufus](https://rufus.ie/pt_BR/) ou [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)
3. Imagem do Utilitário [Multitool](https://users.armbian.com/jock/rk322x/multitool/multitool.img.xz)
4. Execute balenaEtcher (*Preferência)
5. Grave a imagem `multitool.img.xz` no cartão SD/CARD
6. Espere finalizar a gravação e remova o SD/CARD
7. Em seguida insira novamente o SD/CARD 
8. Acesse a pasta `/images` e copie a imagem compactada do Armbian
9. Feito isso remova o SD/CARD e insira na TV Box
10. Inicie a TV Box com o cartão SD/CARD  
11. Caso sua TV Box faça inicialização automática do SD/CARD o utilitário Multitool será inicializado. Se for necessário inicie a TV Box com o botão de `update` pressionado ou com um clips/palito no botão oculto na entrada `AV`

**Gravar imagem via utilitário Multitool na unidade de armazenamento eMMC:**

1. Uma tela de boas vindas será exibida, com um teclado conectado a TV Box utilize os comandos direcionais (⮃) e botão (`Enter`, `Esc`). Digite `Enter` para avançar para próxima tela e escolha a opção `Erase flash` para formatar a unidade de armazenamento interna

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/1.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

2. Selecione seu armazenamento eMMC
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/2.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

3. Uma tela de sucesso será exibida caso o procedimento seja bem sucedido. Digite `Enter` para retornar a tela anterior
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/3.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

4. Em seguida selecione a opção `Burn image to flash` para gravar uma imagem no armazenamento interno
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/4.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

5. Escolha novamente a unidade de armazenamento que foi formatada recentemente
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/5.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

6. Selecione a imagem Armbian que foi copiada para o SD/CARD
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/6.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

7. Um tela da operação e progresso será exibida até que o processo de gravação seja finalizado
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/7.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

8. Finalizado o processo de gravação, finalize o utilitário com a opção `Shutdown`
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/WW%20-%20MULTITOOL/8.jpg?raw=true" alt="Size Limit CLI" width="550">
</p>

9. Remova o SD/CARD da TV Box e inicie novamente a Box.
10. Pule para  X
 
## 1️⃣ Pré-requisitos instalação live SD/CARD

 1. Dispositivo SD/CARD  - ```Mínimo 4GB```
 2. Software [balenaEtcher](https://etcher.balena.io/) , [Rufus](https://rufus.ie/pt_BR/) ou [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)
 3. Imagem Oficial S.O Armbian
 
## 2️⃣ Gravação Imagem via balenaEtcher
 
1.  Execute balenaEtcher (*Preferência)
2.  Grave a imagem Armbian no cartão SD/CARD
3.  Espere finalizar a gravação e insira-o novamente
4.  Ignore/Feche as caixas de diálogo do Windows/MacOS para formatar o SD/CARD inserido

[Como  gravar uma Imagem no balenaEtcher?](#)
 
## 3️⃣ Configurar SD/CARD para Armbian

**Obs: Esta etapa não é necessária para os Dispositivos Rockchip 3228, 3228a e 3229**, no entanto caso seu dispositivo não seja compatível com o .dtb padrão [rk322x-box.dtb](https://drive.google.com/uc?export=download&id=1oT52o_J2D1r7K-HXiNuS8qw1NQK_nc5h), faça a modificação para o .dtb da sua TV BOX. Os arquivos .dtb podem ser encontrados na pasta `/dtb/` na raiz do SD/Card.
 
1.  Abra a partição legível do SD/CARD no Windows Explorer ou Finder (Ex: ```BOOT, armbian_boot```)
2.  Edite o arquivo `armbianEnv.txt` em um editor de texto:
    
    1.  Comente as linhas com inicio `fdtfile=` adicionando #
    2.  Remova o comentário das linhas com inicio `fdtfile=` removendo #
    3.  Atualize/Adicione a linha FDT para apontar para um arquivo .dtb funcional para o seu dispositivo e salve o arquivo
    4. RPC PLUS -> `fdtfile=rk322x-box.dtb` (*Remova #)
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
   
4.  Remova o SD/CARD com segurança
5.  Insira o SD/CARD na TV Box

## 4️⃣ Inicializando o Armbian pela primeira vez via SD/CARD

 1. Conecte o SD/CARD na TV Box
 2. Conecte o adaptador de energia na TV Box 
 3. O sistema vai inicializar o Armbian a partir do SD/CARD
 4. Você deverá ver o terminal Armbian executando scripts de inicialização
 5. Quando solicitado, faça login com nome de `usuário: senha` `root: 1234`
 6. Armbian irá inicializar no ambiente de desktop
 7. Siga para - Instalação Armbian SD/CARD para EMMC

## 5️⃣ Instalação Armbian SD/CARD para EMMC

1. Depois que o ambiente desktop for inicializado abra o terminal de comando `Terminator` 
2. No terminal digite: `sudo armbian-config` 
3. O comando vai executar o **_Utilitário de Configuração Armbian_**
4. Selecione a opção `System`
 
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/1.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

5. Selecione a opção `Install`
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/2.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

6. Selecione a opção `Boot from eMMC - system on eMMC`, para fazer a instalação no dispositivo de armazenamento interno 
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/3.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 7. Selecione a opção `Yes` para formatar a unidade de armazenamento interno eMMC.
 <p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/4.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 8. Selecione a opção para o sistema de arquivos `ext4` (*padrão)
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/5.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 9. O processo de formatação e cópia dos arquivos será iniciado.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/6.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 10. Em seguida a instalação será finalizada, selecione a opção `Power off` para desligar a TV Box
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/YY%20-%20INSTALACAO%20ARMBIAN/7.png?raw=true" alt="Size Limit CLI" width="738">
</p>    

 11. Ligue novamente a TV Box sem o SD/Card conectado para que inicialização do Armbian ocorra diretamente da TV Box.
   ---
   <p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/armbian.png?raw=true" alt="Size Limit CLI" width="738">
</p>
