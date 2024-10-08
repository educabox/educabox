

# 📚 Montar um Terminal Burro (Thin Client Service)

<img src="https://github.com/educabox/educabox/blob/main/imagens/logo_armbian.png?raw=true" align="right" width="120" height="178">

### 📝 Dicas e Dúvidas
 1. 🗂️ [Unidades de Armazenamento](#armazenamento)
 2. 💾 [Dispositivos para Gravação](#removiveis)
 3. #️⃣ [Comandos Úteis Armbian](#comandos)
 4. 🛜 [Configuração Wifi via Terminal](#wifi)
 5. ⌨️ [Configuração Teclado PT-BR](#teclado)
 6. 🖥️ [Problemas com Inconsistência Sistema de Arquivos](#superblock) 


## 1️⃣ <a id="requisitos" />Pré-requisitos

<img src="https://github.com/educabox/educabox/blob/main/imagens/pendrive.png?raw=true" align="right" width="80" height="80">

1. Dispositivo SDCard ou USB (Pendrive) - ```Mínimo 8GB```
2. Software [balenaEtcher](https://etcher.balena.io/) , [Rufus](https://rufus.ie/pt_BR/) ou [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)
3. Imagem Oficial S.O Armbian **[Versão Mínima sem Interface Gráfica]**
 
## 2️⃣ <a id="gravacao-amlogic-allwiner"/>Gravação Imagem Processadores Amlogic e Allwinner
 
1.  Execute balenaEtcher (*Preferência).
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/1.png?raw=true" width="720"></p>

2.  Selecione a opção ``Flash from file`` e procure a imagem do seu respectivo aparelho no explorador de arquivos (Windows Explorer, Finder).
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/SS%20-%20BALENAETCHER/3.png?raw=true" width="720"></p>

3.  Em seguida clique na opção ``Select target`` e selecione o Pendrive/SDCard para gravar a imagem. 
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

## 3️⃣ <a id="gravacao-rockchip"/>Gravação Imagem Processadores Rockchip

Obs: A maioria das TV Boxes com processadores RockChip permitem o uso do utilitário [Multitool](https://users.armbian.com/jock/rk322x/multitool/multitool.img.xz) na inicialização do Boot, logo é possível utilizar o passo a passo descrito na seção [Instalação Educabox Android](https://github.com/educabox/educabox/blob/main/instalacao/instalacao-android.md) para processadores RockChip, porém ao invés de injetar a imagem Android insira a imagem [Armbian](https://imola.armbian.com/archive/) .

## 4️⃣ <a id="gravacao-rockchip"/>Pré-Configurações Adicionais

1. O processo de pré-configuração dos processadores descritos neste projeto, seguem os mesmos scripts divulgados para cada modelo (Amlogic, Allwinner e Rockchip).

2. Verifique seu modelo e veja as configurações adicionais presentes em cada tutorial: [Link](https://github.com/educabox/educabox/tree/main#-tutorial-instala%C3%A7%C3%A3o-imagem-oficial-armbiam)

## ▶️ <a id="init-pendrive-sdcard"/>Inicializando o Armbian pela primeira vez via Pendrive ou SDCard

1. Conecte o Pendrive na `porta USB1 ou USB2` ou SDCard.
2.  Para TVs Boxes com botão oculto na entrada `AV`:
	 - Pressione com um clips/palito o botão oculto na entrada  `AV` e ligue a TV Box na energia.
3.   Para TVs Boxes com botão `reset` e `update`:
		- Ligue a TV Box na energia
		- Com um clips acione o botão `reset` e depois por alguns segundos o botão `update` até a tela apagar e reiniciar o equipamento.
4. Para TVs Boxes apenas com botão `reset`:
	- Com um clips acione o botão `reset` e ligue a TV Box na energia até a tela apagar e reiniciar o equipamento.
5.  O sistema será reinicializado e deverá então começar a inicializar o Armbian a partir do Pendrive/SDCard.
6.  Você deverá ver o terminal Armbian executando scripts de inicialização.
7.  Quando solicitado, faça login:  `usuário: root`  `senha: 1234`
8.  Armbian irá inicializar no ambiente shell.
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/ZZ%20-%20LXDE/09.png?raw=true" width="720">
</p>

9.  Inicialmente será solicitado um novo usuário, entre com as credencias e senhas de preferência.
10. Caso seja solicitado idioma, layout de teclado, fuso horário e conexão com a rede faça as devidas modificações. 
11. Siga para - Instalação Armbian Pendrive/SDcard para eMMC.

## 🔁 <a id="install-emmc"/>Instalação Armbian Pendrive/SDCard para eMMC

1. O processo de instalação dos processadores descritos neste projeto, seguem os mesmos scripts divulgados para cada modelo (Amlogic, Allwinner e Rockchip).

2. Verifique seu modelo e veja como instalar o Armbiam em cada tutorial: [Link](https://github.com/educabox/educabox/tree/main#-tutorial-instala%C3%A7%C3%A3o-imagem-oficial-armbiam)

**Obs: Os tutoriais acima consideram a versão Desktop, desconsidere a interface gráfica e faça todas as execuções de comando diretamente no prompt.**

#  🛜 <a id="wifi" />Configuração Wifi via Terminal

Use o Network Manager CLI para configurar sua rede Wifi:

1. Via terminal liste suas interfaces de rede:
```
educabox$ nmcli device status
DEVICE  TYPE      STATE         CONNECTION         
enp1s0  ethernet  connected     Wired connection 1 
wlp2s0  wifi      disconnected  --                 
lo      loopback  unmanaged     --
```
2. Veja se suas interfaces de rádio/wifi estão ativas:
```
educabox$ nmcli radio
WIFI-HW  WIFI     WWAN-HW  WWAN    
enabled  enabled  enabled  enabled
```
Se a saída mostrar que o Wi-Fi está **desabilitado** , você pode habilitá-lo com o seguinte comando:

```
educabox$ nmcli radio wifi on
```

3. Liste as redes disponíveis em sua área (BSSID):
```
educabox$ nmcli dev wifi list
SSID           MODE   CHAN  RATE       SIGNAL  BARS  SECURITY 
ESCOLA         Infra  11    54 Mbit/s  100     ▂▄▆█  WPA2     
AP_ADM         Infra  132   54 Mbit/s  100     ▂▄▆█  WPA2     
AP_ALUNOS      Infra  52    54 Mbit/s  49      ▂▄__  WPA2     
CASA           Infra  149   54 Mbit/s  45      ▂▄__  WPA2     
OFFICE         Infra  11    54 Mbit/s  42      ▂▄__  WPA2     
NET_VIVA       Infra  1     54 Mbit/s  27      ▂___  WPA2
```
4. Faça a conexão da rede WiFi (AP) **(Obs: é necessário ter acesso root ou sudo)**

Onde: ```<SSID|BSSID>``` é o nome da rede (ex: ESCOLA)
```
educabox$ nmcli device wifi connect <SSID|BSSID>
```
Caso a rede possua senha de autenticação:
```
educabox$ $ nmcli device wifi connect <SSID|BSSID> password <password>
```
Se houver mais de uma interface de rede Wifi, especifique qual é a interface que deseja usar (ex: wlan1):
```
educabox$ $ nmcli device wifi connect <SSID|BSSID> password <password> ifname wlan1
```

## 🔁 <a id="install-emmc"/>Pacotes para inicialização do Terminal

Para inicialização de um terminal burro iremos utilizar os seguintes pacotes:

1. **Xorg**: O X.Org Server é o servidor gráfico para o sistema X Window, que fornece a base para a interface gráfica no Linux e em outros sistemas Unix-like. Ele gerencia a exibição de gráficos e a interação com dispositivos de entrada como o teclado e o mouse.

2. **LXDE**:  LXDE (Lightweight X11 Desktop Environment) é um ambiente de desktop leve e rápido para sistemas Unix-like. É projetado para ser eficiente em termos de recursos, tornando-o uma escolha popular para máquinas mais antigas ou com recursos limitados.

3. **Lightdm**: LightDM é um gerenciador de exibição (display manager) leve e flexível. Ele fornece uma tela de login gráfica onde você pode inserir suas credenciais para iniciar uma sessão de desktop. É conhecido por sua simplicidade e baixa utilização de recursos.

4. **Policykit**: PolicyKit (ou polkit) é um framework para definir e gerenciar permissões de usuários e processos no sistema Linux. Ele é usado para controlar o acesso a operações privilegiadas e autorizar ou negar ações com base em políticas de segurança.

5. **Alsa-Utils**: Alsamixer é um conjunto de utilitários para o sistema de som ALSA (Advanced Linux Sound Architecture). Ele fornece ferramentas para configurar e gerenciar o som no Linux, como ajustar volumes e controlar dispositivos de áudio.

6. **Pulseaudio**: PulseAudio é um servidor de som para sistemas Unix-like que permite o gerenciamento de áudio em uma rede e a mistura de múltiplas fontes de áudio. Ele fornece um ambiente mais avançado e flexível em comparação com o ALSA, oferecendo recursos como a capacidade de redirecionar áudio entre diferentes dispositivos.

7. **RDesktop**: Rdesktop é um cliente para o protocolo Remote Desktop Protocol (RDP) da Microsoft. Ele permite que você se conecte e acesse desktops Windows remotamente a partir de sistemas Unix-like, proporcionando uma interface gráfica para interagir com máquinas Windows.

## 🔁 <a id="install-emmc"/>Instalação dos Pacotes 

1. Com a TV Box conectada a internet, atualize a lista de pacotes do apt-get:

```
sudo apt-get update
```

2. Em seguida faça a instalação dos pacotes abaixo:
```
sudo apt-get install -y xorg lxde lightdm policykit-1 alsa-utils pulseaudio rdesktop
```

3. Habilite a inicialização do LXDE:
```
sudo sed -i.bak -e 's/^NotShowIn=GNOME; KDE; $/NotShowIn=LXDE; GNOME; KDE;/' /etc/xdg/autostart/lxpolkit.desktop
```

4. Configure o teclado para o idioma PT-BR:
```
sudo echo "setxkbmap -model abnt2 - layout br" »> ~/.bashrc
```
5. Depois da instalação e configurações dos pacotes, reinicie a TV Box para a próxima inicialização com interface gráfica.

## 🔁 <a id="install-emmc"/>Inicialização do Ambiente LXDE e configuração do RDesktop

1. Ao reiniciar a TV Box com os pacotes instalados o ambiente LXDE será inicializado, entre com ``usário: educabox`` ``senha: educabox`` (versões Educabox) ou ``usário: root`` ``senha: 1234`` (para instalações novas Armbian).

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/ZZ%20-%20LXDE/10.png?raw=true" width="720">
</p>

2. Agora vamos configurar um arquivo para iniciar o RDesktop assim que a sessão LXDE for iniciada, crie um arquivo de texto na pasta do usuário (ex:/home/<usuário>/remoto.sh):

   - Adicione o IP do Servidor/Máquina do Windows
   - Usuário e Senha do Servidor/Máquina do Windows

```
#-------------------------------------------------------------------
# Script de Inicialização para Conexão Remota
#-------------------------------------------------------------------

# Faça a conexão remota com seu Servidor Windows/Linux/OSX
# -f Habilitar resolução fullscreen
# -r Habilitar audio no lado cliente (TV Box)
# -u Usuário
# -p Senha
# Insira o endereço IP, Usuário e Senha para acesso:
rdesktop -f -r sound: local <IP SERVIDOR> -U <USUARIO> -p «SENHA>
# Ao finalizar a conexão remota, habilitar o desligamento da TV Box
systemctl poweroff

#-------------------------------------------------------------------
# Encerrar Sessão
#-------------------------------------------------------------------
```

3. Altere a permissão do arquivo para executável:

```
$chmod +x /home/<usuário>/remoto.sh
```

4. Para que o arquivo ```remoto.sh``` seja executado na inicialização do LXDE faça a edição do arquivo ```autostart```, abra com um editor de texto o seguinte arquivo:

```/home/<usuário>/.config/lxsession/LXDE/autostart```

5. Adicione as seguintes linhas:

```
@lxpanel --profile LXDE
@pcmanfm --desktop --profile LXDE
@xscreensaver -no-splash
@setxkbmap -model abnt2 -layout br
@lxterminal -e bash /home/<usuário>/remoto.sh
```

6. As linhas adicionadas são para alteração do layout de teclado e execução do arquivo ```remoto.sh```.

7. Reinicie a TV Box e faça a inicialização com login e senha da instalação local com ``usário: educabox`` ``senha: educabox`` (versões Educabox) ou ``usário: root`` ``senha: 1234`` (para instalações novas Armbian).
8. Caso o Servidor/Máquina (Windows) esteja ativo na mesma rede (Cabo/Wi-fi) da TV Box o RDesktop fará a conexão remota e uma janela (fullscreen) será exibida no ambiente LXDE.

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/ZZ%20-%20LXDE/11.png?raw=true" width="720">
</p>

9. Ao finalizar as atividades no Servidor/Máquina remota, clique em ```logoff``` ou ```encerrar sessão``` e automaticamente a TV Box será desligada, caso ainda deseje utilizar o ambiente LXDE localmente remova a última linha do arquivo ```remoto.sh```:

```
systemctl poweroff
```
   
   
## Dúvidas e Erros

1. Encontrou algum erro em nossa documentação ou imagens, abra uma solicitação de problema/erro:
	- [Solicitação](https://github.com/educabox/educabox/issues)
	- E-mail: educabox@ifms.edu.br	
