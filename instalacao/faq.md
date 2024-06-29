# 📚 FAQ - Dicas e Dúvidas

<img src="https://github.com/educabox/educabox/blob/main/imagens/logo_armbian.png?raw=true" align="right" width="120" height="178">

### 📝 Dicas e Dúvidas
 1. 🗂️ [Unidades de Armazenamento](#armazenamento)
 2. 💾 [Dispositivos para Gravação](#removiveis)
 3. #️⃣ [Comandos Úteis Armbian](#comandos)
 4. 🛜 [Configuração Wifi via Terminal](#wifi)
 5. ⌨️ [Configuração Teclado PT-BR](#teclado)
 6. 🖥️ [Problemas com Inconsistência Sistema de Arquivos](#superblock) 

#  🗂️ <a id="armazenamento" />Unidades de Armazenamento

As unidades de armazenamento NAND, eMMC e eMCP são tecnologias usadas para armazenamento de dados em dispositivos eletrônicos, mas possuem características distintas em termos de estrutura, aplicação e desempenho. Vamos analisar cada uma delas em detalhe:

### 🔵 NAND
- **Descrição:** NAND é um tipo de memória flash. A memória flash NAND é usada como bloco básico de construção para várias outras tecnologias de armazenamento.
- **Características:** 
  - **Arquitetura de Bloco:** Armazena dados em blocos, que são unidades maiores de armazenamento em comparação com células individuais.
  - **Durabilidade:** Tem uma vida útil limitada devido ao desgaste durante os ciclos de leitura e escrita.
  - **Aplicação:** Usada em SSDs, pendrives, cartões de memória, entre outros.
- **Desempenho:** Varia dependendo da qualidade e do tipo (SLC, MLC, TLC, QLC).

### 🟢 eMMC (Embedded MultiMediaCard)
- **Descrição:** eMMC é uma solução de armazenamento baseada em memória flash NAND e um controlador de memória integrado em um único pacote.
- **Características:**
  - **Integração:** Combina a memória NAND e o controlador de memória em um único chip.
  - **Facilidade de Uso:** Facilita a integração em dispositivos móveis e embarcados, pois fornece uma interface padrão e simplifica o design do sistema.
  - **Capacidade:** Geralmente varia de 4GB a 128GB.
  - **Velocidade:** A taxa de transferência é relativamente boa, mas não tão rápida quanto SSDs NVMe.
- **Aplicação:** Comum em smartphones, tablets, câmeras e outros dispositivos eletrônicos portáteis.

### 🔴 eMCP (Embedded Multi-Chip Package)
- **Descrição:** eMCP é uma solução que combina memória flash NAND e memória RAM (geralmente DRAM ou LPDDR) em um único pacote.
- **Características:**
  - **Integração Avançada:** Além de integrar memória NAND e controlador, também inclui memória RAM, oferecendo uma solução mais completa para armazenamento e memória.
  - **Espaço:** Economiza espaço físico na placa-mãe, sendo ideal para dispositivos compactos.
  - **Desempenho:** Oferece benefícios de desempenho ao combinar RAM e armazenamento em um único pacote, reduzindo a latência.
- **Aplicação:** Usado em smartphones e dispositivos móveis que precisam de uma combinação eficiente de armazenamento e memória.

### 🔀 Comparação Resumida
- **NAND:** Componente básico de memória flash, usado em diversas formas de armazenamento.
- **eMMC:** Solução integrada de memória NAND com controlador, usada principalmente para armazenamento em dispositivos móveis.
- **eMCP:** Combina memória NAND e RAM em um único pacote, otimizando espaço e melhorando o desempenho em dispositivos móveis.

Cada uma dessas tecnologias tem seu próprio nicho de aplicação, sendo escolhida com base nas necessidades de desempenho, espaço e custo do dispositivo final.

#  💾 <a id="removiveis" />Dispositivos para Gravação

Para obter melhor velocidade e desempenho com um SD card, especialmente para usos exigentes como gravação de vídeo em alta definição, execução de sistemas operacionais (como o Armbian), ou outras aplicações intensivas, considere os seguintes fatores ao escolher um SD card:

### 1. 🏁 **Classe de Velocidade**
- **Classe de Velocidade Padrão (Class 2, 4, 6, 10):** Indica a velocidade mínima de gravação sustentada em MB/s. Por exemplo, Classe 10 garante ao menos 10 MB/s.
- **UHS (Ultra High Speed) Classe de Velocidade (U1, U3):** U1 garante pelo menos 10 MB/s e U3 garante pelo menos 30 MB/s. Ideal para gravação de SOs.
- **V (Video Speed Class - V6, V10, V30, V60, V90):** Projetada para gravação de vídeo em várias resoluções. V30, por exemplo, garante pelo menos 30 MB/s e é recomendada para gravação de vídeo 4K.

### 2. 🔺 **Classe de Desempenho de Aplicativos (A1, A2)**
- **A1:** Garante pelo menos 1500 IOPS (operações de entrada/saída por segundo) de leitura e 500 IOPS de gravação, com uma velocidade sustentada de 10 MB/s.
- **A2:** Garante pelo menos 4000 IOPS de leitura e 2000 IOPS de gravação, com uma velocidade sustentada de 10 MB/s. A2 oferece melhor desempenho para execução de aplicativos e sistemas operacionais.

### 3. 📂 **Capacidade**
- **Escolha conforme a necessidade:** Capacidade varia de alguns gigabytes até 1 TB ou mais. Para aplicações intensivas, SOs ou gravação de vídeo em alta definição, considere cartões de maior capacidade para garantir espaço suficiente e manter o desempenho.

#  #️⃣ <a id="comandos" />Comandos Úteis Armbian

Segue uma lista de comandos úteis para configuração e visualização de informações no Armbian:

```
Armbian
---------------------------------------
Apt-get Update/Install
--------------
sudo apt update                        Atualizar Lista de Pacotes
sudo apt upgrade                       Atualizar Sistema ou Programas
sudo apt autoremove                    Remove Programas Absoletos
sudo apt install programaNome          Instalação de algum programa
sudo apt remove programaNome           Remoção de programa 
sudo aptitude install                  Aptitude para Instalação de Programas
sudo apt update && sudo apt upgrade    Atualiza Lista e Programas ao mesmo tempo
sudo dpkg -i pacoteNome.deb            Instalação Offline de pacote .deb

Usuário Root
---------
sudo passwd                            Alterar senha root
su                                     Superusuário/Inserir usuário root

Debug/Monitoramento
-------------
dmesg                                  Mostra mensagens de depuração
uname -a                               Mostra informações básicas do sistema
env                                    Mostra as informações do ambiente
htop                                   Monitor de hardware/programas

Variação de Terminais
---------------
ctrl + ALT + F4     (F1 - F6)          Abra o novo terminal 4
ctrl + ALT + F1                        Volte para o terminal 1
ctrl + ALT + F7                        Volte para a área de trabalho                            

Reiniciar/Desligar
---------------
sudo reboot                            Reiniciar
sudo shutdown now                      Desligar

Ferramentas de CPU
---------
cpufreq-set -g performance             Definir governador para desempenho
cpufreq-set -u 2Ghz                    Defina a frequência máxima para todos os núcleos
cpufreq-set -c 0-1 -u 1.8Ghz           Defina a frequência máxima para núcleos específicos
lscpu | grep MHz                       Mostrar frequência da CPU    
taskset -c 3 programName               Use um núcleo específico para um aplicativo   

Alterar configurações da CPU
-------
sudo nano /etc/default/cpufrequtils

Arquivos/Diretórios
-----------------
nano /home/fileToRemove.txt                   Crie um arquivo txt com Nano
touch filename                                Crie um arquivo vazio, não importa o tipo
cat /home/fileToRemove.txt                    Mostra o conteúdo de um arquivo
cp /home/fileToRemove.txt /home/copy.txt      Copiar um arquivo
find /home/ -iname "*.txt"                    Pesquise arquivos que terminam com .txt
comm /home/fileToRemove.txt /home/copy.txt    Comparar arquivos
rm /home/fileToRemove.txt                     Remover arquivos
mv /home/copy.txt ~/Documents/                Mover arquivos
mkdir /home/directoryToGoTo/                  Criar um diretório
cd /home/directoryToGoTo/                     Ir para o diretório
ls                                            Listar diretórios
ls -l                                         Fornece informações sobre arquivos/diretórios
ls -l filename.txt                            Fornece informações do arquivo
pwd                                           Mostrar diretório de trabalho atual
cd ..                                         Vá para o diretório acima
rmdir /home/directoryToGoTo/                  Remover diretório                            
wget http://www.website.com/file.txt          Fazer download do arquivo

Compactação de Arquivos - Zip/Tar/GunZip
--------------
zip myzip file1 file2 file3                   Criar um arquivo zip
unzip myzip.zip                               Descompactação de um arquivo zip
tar xvf filename.tar			      Criar um arquivo tar	
gunzip filename_tar.gz                        Descompactação um arquivo tar

Montar unidades/dispositivos USB
------------
lsusb                                         Listar dispositivos USB
lsblb                                         Listar unidades anexadas
mount /mount/mountedDisk /dev/sda2            Montar unidade
sudo chmod -R 777 /mount/mountedDisk          Conceda permissões de leitura/gravação
df -a                                         Listar todos os sistemas de arquivos

Wifi
----
sudo nano /etc/network/interfaces             Editar Interfaces

and write:
 auto wlan0
 iface wlan0 inet dhcp 
                wpa-ssid {ssid}
                wpa-psk  {password}
				
				OR
				
nmcli device wifi rescan                   Procure por wifi disponível networks
nmcli device wifi list                     Mostrar redes wifi disponíveis
nmcli device wifi connect 	           Conectar wifi
| SSID-Name password wireless-password	   

ip a                                       Mostrar IP
ifconfig                                   Exibir a configuração atual de Rede                     
iwconfig				   Definir os parâmetros da interface

Alterar layout do teclado
----------------------
sudo dpkg-reconfigure keyboard-configuration   Definir layout do teclado

Others
------
reset                          Limpar terminal
shift + page up                Role para cima
shift + page down              Rolar para baixo
tab                            Autocompletar
ctrl + c                       Fechar programas
date                           Mostrar data/hora
cal                            Mostrar calendário

Armbian
-------
sudo armbianmonitor -m         Monitorar o Sistema Armbian                                     
sudo armbian-config	       Configurar o Sistema Armbian



Credits [Made by NicoD](https://forum.armbian.com/profile/8801-nicod/)
```

#  🛜 <a id="wifi" />Configuração Wifi via Terminal

Caso sua instalação não possua interface gráfica ou seja necessário fazer a conexão via prompt, use o Network Manager CLI para configurar sua rede Wifi:

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
5. Para redes ocultas é necessário realizar alguns ajustes - [Créditos](https://ubuntu.com/core/docs/networkmanager/configure-wifi-connections):

Uma rede oculta é uma rede sem fio normal que simplesmente não transmite seu SSID, a menos que seja solicitado. Isso significa que seu nome não pode ser pesquisado e deve ser conhecido por alguma outra fonte.

Emita o seguinte comando para criar uma conexão associada a uma rede oculta:

```
educabox$ nmcli c add type wifi con-name <name> ifname wlan0 ssid <ssid>
educabox$ nmcli c modify <name> wifi-sec.key-mgmt wpa-psk wifi-sec.psk <password>
```

Onde ```<name>``` é um nome sugestivo para rede oculta e ```<ssid>``` o nome da rede.

Agora você pode estabelecer uma conexão digitando:

```
educabox$ nmcli c up <name>
``` 


#  ⌨️ <a id="teclado" />Configuração Teclado PT-BR

Caso sua instalação não esteja configurada com o idioma PT-BR, execute o seguinte comando no terminal ``Terminator``:

1. Teclado Brasileiro
```
educabox$ sudo echo "setxkbmap -model abnt2 -layout br" >> ~/.bashrc
```
2. Teclado Americano
```
educabox$ sudo echo "setxkbmap -model abnt2 -layout us" >> ~/.bashrc
```

#  🖥️ <a id="superblock" />Problemas com Inconsistência Sistema de Arquivos

As vezes em uma instalação via DD o espaço usado na imagem compactada pode variar alguns megabytes em relação a unidade de armazenamento da TV Box que está em processo de instalação. Caso após uma instalação, na etapa de reinicialização do SO o mesmo apresente um erro no sistema de arquivos ou espaço em disco conforme exemplo abaixo:

```
/dev/mmcblk0 :UNEXPECTED INCONSISTENCY; RUN fsck MANUALLY.
(...)
ERROR :Bailing out.Run 'fsck /dev/mmcblk0' manually
**********FILESYSTEM CHECK FAILED**********
```

Execute o fsck para que o sistema de arquivos seja corrigido: 

```
# fsck /dev/mmcblk0
```
Em seguida selecione a tecla (Y) ou (S) para as mensagens solicitando correções. Por fim, uma mensagem dizendo que o sistema de arquivos foi modificado será apresentada.

```
/dev/mmcblk0 : ***** FILE SYSTEM WAS MODIFIED ***
/dev/mmcblk0 : ****WARNING: Filesystem still has errors ****
```

**Obs: substitua a variação da sua unidade de armazenamento para o valor correto (ex: mmcblk0, mmcblk1 ou mmcblk2)**

## Dúvidas e Erros

1. Encontrou algum erro em nossa documentação ou imagens, abra uma solicitação de problema/erro:
	- [Solicitação](https://github.com/educabox/educabox/issues)
	- E-mail: educabox@ifms.edu.br	
