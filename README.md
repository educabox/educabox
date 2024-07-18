
![GitHub followers](https://img.shields.io/github/followers/educabox?style=social) ![GitHub User's stars](https://img.shields.io/github/stars/educabox?style=social) ![Visitor](https://visitor-badge.laobi.icu/badge?page_id=educabox.repoName) <img src="https://komarev.com/ghpvc/?username=educabox" alt="educabox" /> <img src="https://img.shields.io/badge/Linux-FCC624?style=social&logo=linux&logoColor=black" alt="educabox" />
<!--
<h1 align="center">
  <br>
  <img src="https://github.com/educabox/educabox/blob/main/imagens/logo-educabox.png?raw=true&image_size=auto" width="200"></a>
  <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-ifms-branco.png?raw=true" width="200"></a>
  <br>
  EducaBox
  <br>
</h1>
 -->
<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/background.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

<h4 align="center">O projeto "EducaBox" visa transformar dispositivos TV Box em computadores educacionais. <a href="#" target="_blank">EducaBox</a>.</h4>

> Ao converter TVs Boxes em computadores educacionais, estamos democratizando o acesso ao conhecimento, especialmente em regiões onde a infraestrutura tecnológica pode ser limitada. Agora, estudantes, professores e técnicos têm a oportunidade de explorar recursos educacionais, acessar conteúdos interativos e participar de experiências de aprendizado envolventes, tudo a partir de TVs Boxes com baixo custo computacional.

<p align="center">
  <img src="https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/1.png?raw=true" alt="Size Limit CLI" width="1280">
</p>

| EducaBox Armbian | EducaBox Android |
| ----------- | ----------- |
|<img src="https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/5.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/7.png?raw=true&image_size=auto"/>|


### Ajustes e melhorias

O projeto ainda está em desenvolvimento e as próximas atualizações serão voltadas nas seguintes tarefas:

- [x] Customização de ROM's Android em placas RockChip (RK322X).
- [x] Customização de S.O's Armbian em placas Amlogic e Allwinner.
- [x] Viabilização de S.O's (LibreElec, CoreElec, Lakka, Kodi) para uso em projetos GameLab, Totens e Painéis Digitais.
- [ ] Criação de uma ROM própria pelo projeto EducaBox
- [ ] Desenvolvimento de processos e repositório completo para comunidade.

## 📗 Sumário

 1. 📝 [Tutorial Instalação Imagem EducaBox [Armbian/Android]](#tutorial)
 2. 🚀 [Tutorial Instalação Imagem Oficial Armbiam](#download)
 3. 🔍 [Pré-Requisito](#pre-requisito)
 4. ⚙️ [Utilitários](#utilitario)
 5. 🔁 [Recuperação TWRP](#recuperacao)
 6. 🤝 [Parceiros](#parceiros)
 7. 👨🏽‍💻 [Equipe de Desenvolvimento](#equipe)
 8. ✉️ [Contato](#contato)

[Veja nosso FAQ de Dúvidas e Dicas?](https://github.com/educabox/educabox/blob/main/instalacao/faq.md)

<a href="https://github.com/educabox/educabox/blob/main/instalacao/faq.md"><img src="https://github.com/educabox/educabox/blob/main/imagens/faq.png?raw=true&image_size=auto"/>

## 📝 <a id="tutorial"/>Tutorial Instalação Imagem EducaBox

<p align="center">
<a href="https://github.com/educabox/educabox/blob/main/instalacao/instalacao-educabox-live.md"><img src="https://github.com/educabox/educabox/blob/main/imagens/botao_armbian.png?raw=true&image_size=auto"/> <a href="https://github.com/educabox/educabox/blob/main/instalacao/instalacao-android.md"><img src="https://github.com/educabox/educabox/blob/main/imagens/botao_android.png?raw=true&image_size=auto"/>
</p>

## 🚀 <a id="download"/>Tutorial Instalação Imagem Oficial Armbiam

>Este é o repositório com todas as TVs Boxes que já foram descaracterizadas por nossa equipe. O link de instalação descreve passo-a-passo como instalar uma imagem Armbian Oficial em cada dispositivo! Caso deseje faça a instalação customizada do nosso projeto EducaBox já com todas as ferramentas e scripts para instalação.



| TV BOX      | Processador     |    GPU   |  Mem    |   HD  |       Wifi       | Áudio |  Instalação                                                                     |
|-------------|-----------------|:--------:|:-------:|:-----:|------------------|:-----:|:-------------------------------------------------------------------------------:|
| AUDIOSAT 4K | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ❌ SV6256P       |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/audiosatpro4k.md)   |
| BTV11       | Amlogic S905X3  | Mali-G31 | 2GB     | 16GB  | ✅ AP6212        |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/btv11.md)           |
| BTVBX       | Amlogic S905X   | Mali-450 | 2GB     | 16GB  | ✅ AP6212        |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/btvbx.md)           |
| BTVE10      | Amlogic S905X2  | Mali-G31 | 2GB     | 8GB   | ✅ RTL8189FTV    |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/btve10.md)          | 
| DC BOX 8K   | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/dcbox8k.md)         |
| EXTREMO     | Amlogic S905W   | Mali-450 | 2GB     | 8GB   | ❌ SV6051P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/extremo.md)         |
| HTV6+       | Amlogic S905W   | Mali-450 | 2GB     | 16GB  | ✅ RTL8723BS     |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/htv6plus.md)        | 
| HTV7        | Amlogic S905X3  | Mali-G31 | 2GB     | 16GB  | ✅ RTL8822CS     |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/htv7.md)            |
| I5          | RockChip 3229   | Mali-400 | 2GB     | 8GB   | ✅ RTL8723BS     |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/i5.md)              |
| ID18        | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ✅ XR819         |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/id18.md)            |
| IMOVE       | Amlogic S905W   | Mali-450 | 1GB     | 8GB   | ❌ SV6051P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/imove.md)           |
| IMOVE PRO   | Amlogic S905W   | Mali-450 | 1GB     | 8GB   | ❌ SV6051P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/imovepro.md)        |
| IN X PLUS   | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/inxplus.md)         |
| MX9 4K 5G   | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ❌ SV6156P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/mx94k5g.md)         |
| MXQ PRO 4K  | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/mxqpro4k5g-cinza.md)|
| MXQ PRO 4K  | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ❌ ESP8089       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/mxqpro4k5g.md)      |
| MXQ PLUS 4K | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ❌ SV6256P       |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/mxqplus4k.md)       |
| MY BOX TV   | Amlogic S905X   | Mali-450 | 2GB     | 16GB  | ❌ AP6181        |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/mytvbox.md)         |
| PLAY TV     | Amlogic S905X3  | Mali-G31 | 2GB     | 16GB  | ✅ RTL8189FTV    |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/playtv.md)          |
| R69         | Allwinner H3    | Mali-400 | 1GB     | 8GB   | ✅ XR819         |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/r69.md)             |
| R90 PLUS    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/r90plus.md)         |
| RPC 8K      | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/rpc8k.md)           |
| RPC MINI    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/rpcmini.md)         |
| RPC PLUS    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/rpcplus.md)         |
| SEM NOME    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6051P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/semnome.md)         |
| SUNLIGHT    | RockChip 3228A  | Mali-400 | 1GB     | 8GB   | ✅ SV6256P       |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/sunlight.md)        |
| SUPER TV    | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ RTL8189FTV    |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/supertv.md)         |
| TIGRE 2     | Amlogic S905X   | Mali-450 | 2GB     | 16GB  | ✅ RTL8723BS     |❌     | [Link](https://github.com/educabox/educabox/blob/main/boxes/tigre2.md)          |
| UNITV S1    | RockChip 3229   | Mali-400 | 1GB     | 8GB   | ✅ RTW8723DS     |✅     | [Link](https://github.com/educabox/educabox/blob/main/boxes/unitvs1.md)         |

## 💻 <a id="pre-requisito"/>Pré-requisitos

Antes de começar, verifique se o seu dispositivo atende aos seguintes requisitos:

 1. Verifique a compatibilidade da sua TV Box com os processadores e dispositivos disponíveis em nosso repositório.
 
|Processador  | Modelo | Fabricante
|--|:--:|--|
| Amlogic | S805, S905X, S905X2, S905X3, S905W | [Link](https://www.amlogic.com/)
| Allwinner| H3, H6 | [Link](https://www.allwinnertech.com/)
| RockChip| RK3228A, RK3228B, RK3229 | [Link](https://www.rock-chips.com/)
  
 2. Faça um backup da sua ROM atual em caso de possíveis erros ou aparelhos brickados.

## ⚙️ <a id="utilitario"/>Utilitários 

### Amlogic
|Processador  | Função | Utilitário| Versão | Link
|--|:--:|:--:|:--:|:--:|
| Amlogic | Instalação OTG | USB Burning Tool | `2.20` |[Link](https://chinagadgetsreviews.com/download-amlogic-usb-burning-tool-v2-2-0.html)
| Amlogic | Instalação OTG | USB Burning Tool | `3.20` |[Link](https://chinagadgetsreviews.com/download-amlogic-usb-burning-tool-latest-version-3-2-0.html)
| Amlogic | Licenças | USB Burning Tool | `-` |[Link](https://drive.google.com/uc?export=download&id=1SMNeypg2U2R1ZhDCGAEF1viGKsteFspF)
| Amlogic | Instalação SDCard | Amlogic Burn Card Maker | `2.0.2` |[Link](https://chinagadgetsreviews.com/download-amlogic-burn_card_maker-v2-0-2.html)
| Amlogic | Instalação e Recovery | Amlogic Customization Tool | `6.0.0` |[Link](https://chinagadgetsreviews.com/download-amlogic-customization-tool-v6-0-0.html)
| Amlogic | Instalação e Recovery |Amlogic Customization Tool | `7.1.0` |[Link](https://chinagadgetsreviews.com/download-amlogic-customization-tool-v7-1-0.html)

### Allwinner
|Processador | Função | Utilitário| Versão | Link
|--|:--:|:--:|:--:|:--:|
| Allwinner| Instalação OTG |Phoenix Suit | `1.04 - 1.10` |[Link](https://www.phoenixsuite.org/)
| Allwinner| Instalação OTG | PhoenixUSB Pro | `4.0.0` |[Link](https://chinagadgetsreviews.com/download-allwinner-phoenixusb-pro-v4-0-0-tool.html)
| Allwinner| Instalação SDCard | Phoenix Card | `3.1.0` |[Link](https://chinagadgetsreviews.com/download-latest-version-phoenixcard-v3-1-0.html)
| Allwinner| Instalação SDCard | Phoenix Card | `4.2.4` |[Link](https://chinagadgetsreviews.com/download-latest-version-of-phoenixcard-v4-2-4.html)
| Allwinner| Instalação e Drives| LiveSuit e Drives | `1.1.0` |[Link](https://androidmtk.com/download-livesuit-all-versions)

### RockChip
|Processador | Função | Utilitário| Versão | Link
|--|:--:|:--:|:--:|:--:|
| RockChip| Instalação OTG | Android Tool Release| `2.38` |[Link](https://chinagadgetsreviews.com/download-androidtool-release-v2-38.html)
| RockChip| Instalação OTG | Android Tool Release| `2.51` |[Link](https://chinagadgetsreviews.com/download-androidtool-release-v2-51.html)
| RockChip| Instalação OTG | Android Tool Release| `2.61` |[Link](https://chinagadgetsreviews.com/download-androidtool-release-v2-61.html)
| RockChip| Instalação OTG | Android Tool Release| `2.69` |[Link](https://chinagadgetsreviews.com/download-androidtool-release-v2-69.html)
| RockChip| Instalação OTG | Android Tool Release| `2.84` |[Link](https://chinagadgetsreviews.com/download-latest-androidtool-release-v2-84.html)
| RockChip| Instalação OTG | Rockchip Firmware Factory Tool | `5.3` |[Link](https://chinagadgetsreviews.com/download-lateste-rockchip-firmware-factorytool-v5-3.html)
| RockChip| Instalação OTG | Rockchip Factory Tool | `1.72.9` |[Link](https://chinagadgetsreviews.com/download-rockchip-factorytool-v1-72-9.html)
| RockChip| Instalação OTG | Rockchip Production Tool | `1.23` |[Link](https://chinagadgetsreviews.com/download-rockchip-productiontool-v1-23.html)
| RockChip| Instalação OTG | Rockchip Batch Tool | `1.8` |[Link](https://chinagadgetsreviews.com/hot-download-rockchip-batch-tool-v1-8.html)
| RockChip| Instalação SDCard| Rockchip Create Upgrade Disk Tool | `1.7` |[Link](https://chinagadgetsreviews.com/download-latest-rockchip-create-upgrade-disk-tool-v1-7.html)
| RockChip| Instalação SDCard| Rockchip Create Upgrade Disk Tool | `1.59` |[Link](https://chinagadgetsreviews.com/download-rockchip-create-upgrade-disk-tool-v1-59.html)
| RockChip| Instalação SDCard| Multitool | `--` |[Link](https://users.armbian.com/jock/rk322x/multitool/multitool.img.xz)
| RockChip| Drives | Rockchip Driver Assistant | `4.5.0` |[Link](https://chinagadgetsreviews.com/download-rockchip-driver-assistant-v4-5.html)
| RockChip| Drives | Rockchip Driver Assistant | `4.8.0` |[Link](https://chinagadgetsreviews.com/download-rockchip-driver-assistant-v4-8.html)
| RockChip| Drives | Rockchip Driver Assistant | `5.1.1` |[Link](https://chinagadgetsreviews.com/download-rockchip-driver-assistant-v5-1-1.html)

## 🔁 <a id="recuperacao"/>Recuperação TWRP

|Processador  | Modelo | Versão TWRP| Android | Link
|--|:--:|:--:|:--:|:--:|
| Amlogic | S805 |`3.0.2`|`-` |[.img](https://drive.google.com/file/d/1el0pu1lLKQitXYsIITF7fYTzbtRd5z81/view?usp=drive_link)
| Amlogic | S905X |`3.0.2`|`-` |[.img](https://drive.google.com/file/d/1mlfXSwFB7IwS_ufO0PmtnZS8eWoALwij/view?usp=drive_link) - [.zip](https://drive.google.com/file/d/1ikgmEQ-IEJJwWFf1nptcqSkmUzKazDoT/view?usp=drive_link)
| Amlogic | S905X2 |`3.7.0`|`9.0 (Pie)` |[.img](https://drive.google.com/file/d/1sxk-mr_QLQErB-OCmLhOgm71f8rSFr7Z/view?usp=drive_link) - [.zip](https://drive.google.com/file/d/1r2Q7nTJ_U96qj5eGFhf6gBTRJTfJEyt9/view?usp=drive_link)
| Amlogic | S905X3 |`3.7.0`|`9.0 (Pie)` |[.img](https://drive.google.com/file/d/1sxk-mr_QLQErB-OCmLhOgm71f8rSFr7Z/view?usp=drive_link) - [.zip](https://drive.google.com/file/d/1r2Q7nTJ_U96qj5eGFhf6gBTRJTfJEyt9/view?usp=drive_link)
| Amlogic | S905W |`3.0.2`|`-` |[.img](https://drive.google.com/uc?export=download&id=1p5vziF86DJspxG2nlJq51k_LoEF03pUz) - [.zip](https://drive.google.com/file/d/1KKFMqGhu0OFElQhOFK8ovwnwqQX_gUMZ/view?usp=drive_link)
| Amlogic | S912 |`-`|`-`|[.img](https://drive.google.com/file/d/1OPunnOo7Fl7zX3CjjnqjAwRDF5lM2Nu6/view?usp=drive_link)
| Amlogic | S922X w400 |`3.7.0`|`9.0 (Pie)` |[.img](https://drive.google.com/file/d/1BloDo99bkHIiwZsYGuKdXS8c5Tghn3qz/view?usp=drive_link) - [.zip](https://drive.google.com/file/d/1PG6dtmh95DcUMEqEx7GleFOOxTxRxmGD/view?usp=drive_link)
| Amlogic | K200 |`2.8.5.1`|`-` |[.img](https://drive.google.com/file/d/1OPunnOo7Fl7zX3CjjnqjAwRDF5lM2Nu6/view?usp=drive_link)
| Amlogic | u212 - X96 Max | `3.7.0`|`-` |[.img](https://drive.google.com/file/d/1RxzcR4rUxsy5LqDf7ZSMdZVrJAocHMoJ/view?usp=drive_link)
| Allwinner | H3 MXQ-4K | `-`|`-` |[.img](https://drive.google.com/file/d/1oRIa-e7O0zuLEBhTFHQ9F9wN2YC0Jd5V/view?usp=drive_link)
| RockChip| RK3399 | `3.2.3`|`-` |[.img](https://drive.google.com/file/d/1rZuSeMsHrFnCqi394zCgKOPfb18Z-rDT/view?usp=drive_link)

## 🤝 <a id="parceiros"/>Parceiros

Agradecemos os seguintes órgãos e pessoas que contribuíram para este projeto:

<table>
  <tr>
    <td align="center">
      <a href="https://www.gov.br/mcom/pt-br/acesso-a-informacao/acoes-e-programas/programas-projetos-acoes-obras-e-atividades/computadores-para-inclusao-1">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-computadores-inclusao.png?raw=true" width="125px;" alt="CRC"/><br>
        <sub>
          <b></b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="http://crcdourados.com.br">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-crc.png?raw=true" width="125px;" alt="CRC DOURADOS"/><br>
        <sub>
          <b></b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://www.gov.br/receitafederal/">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-rf.png?raw=true" width="125px;" alt="Receita Federal"/><br>
        <sub>
          <b></b>
        </sub>
      </a>
    </td>
    <td align="center"><br>
      <a href="https://www.ifms.edu.br/">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-ifms.png?raw=true" width="250px;" alt="IFMS"/><br>
        <sub>
        <br>
          <b></b>
        </sub>
      </a>
    </td>
  </tr>
</table>

### 👨🏽‍💻👩🏼‍💻 <a id="equipe"/>Equipe de Desenvolvimento

<table>
  <tr>
    <td align="center">
      <a href="http://lattes.cnpq.br/6266978921240941">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/lucas.png?raw=true" width="110px;" alt="Lucas"/><br>
        <span>Lucas Rodrigues</span>
        <sub>
          <b></b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="http://lattes.cnpq.br/7192649680369183">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/savio.png?raw=true" width="110px;" alt="Savio"/><br>
        <span>Savio Cantero</span>
        <sub>
          <b></b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="http://lattes.cnpq.br/0808904471212303">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/evandro.png?raw=true" width="110px;" alt="Evandro"/><br>
        <span>Evandro Falleiros</span>
        <sub>
          <b></b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="http://lattes.cnpq.br/3005793775761769">
        <img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/jonison.png?raw=true" width="110px;" alt="Jonison"/><br>
        <span>Jónison Santos</span>
        <sub>
        <br>
          <b></b>
        </sub>
      </a>
    </td>
  </tr>
</table>

## ✉️ <a id="contato"/>Contato

Quer fazer parte desse projeto? Entre em contato conosco:

🖥️ www.ifms.edu.br
✉️ educabox@ifms.edu.br

<p align="center">
  <a href="#">
    <img src="https://skillicons.dev/icons?i=github,linux" />
  </a>
</p>
