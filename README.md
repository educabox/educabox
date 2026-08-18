
# 📦 EducaBox


![GitHub followers](https://img.shields.io/github/followers/educabox?style=social) ![GitHub User's stars](https://img.shields.io/github/stars/educabox?style=social) ![Visitor](https://visitor-badge.laobi.icu/badge?page_id=educabox.repoName) <img src="https://komarev.com/ghpvc/?username=educabox" alt="educabox" /> <img src="https://img.shields.io/badge/Linux-FCC624?style=social&logo=linux&logoColor=black" alt="educabox" />

![EducaBox Banner](https://github.com/educabox/educabox/blob/main/imagens/background.png?raw=true)

> **O projeto EducaBox visa transformar dispositivos TV Box em computadores educacionais.**
> Ao converter TVs Boxes em computadores educacionais, estamos democratizando o acesso ao conhecimento, especialmente em regiões onde a infraestrutura tecnológica pode ser limitada. Estudantes, professores e técnicos têm a oportunidade de explorar recursos educacionais e acessar conteúdos interativos com baixo custo computacional.

---

## 📸 Demonstração Visual
![Armbian](https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/PRINTSCREEN/5.png?raw=true)

| EducaBox Armbian | Aplicativos | Navegador | 
| :---: | :---: |:---: |
| ![Armbian](https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/PRINTSCREEN/6.png?raw=true) | ![Android](https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/PRINTSCREEN/7.png?raw=true) |![Android](https://github.com/educabox/educabox/blob/main/imagens/EDUCABOX/PRINTSCREEN/8.png?raw=true)|
---

## 🎯 Ajustes e Melhorias

- [x] Customização de ROMs Android em placas RockChip (RK322X).
- [x] Customização de SOs Armbian em placas Amlogic e Allwinner.
- [x] Viabilização de SOs (LibreElec, CoreElec, Lakka, Kodi) para GameLab e Totens.
- [X] Criação de uma ROM própria pelo projeto EducaBox.
- [ ] Desenvolvimento de processos e repositório completo para a comunidade.

---

## 📗 Sumário

1. 📝 [Instalação Imagem EducaBox](#instalação-educabox)
2. 🚀 [Instalação Imagem Oficial Armbian](#instalação-armbian)
3. 💻 [Pré-Requisitos](#pré-requisitos)
4. ⚙️ [Utilitários](#utilitários)
5. 🔁 [Recuperação TWRP](#twrp)
6. 🤝 [Parceiros e Equipe](#créditos)
7. ✉️ [Contato](#contato)

> 💡 **Dica:** [Veja nosso FAQ de Dúvidas e Dicas](https://github.com/educabox/educabox/blob/main/instalacao/faq.md)

---

## 📝 Instalação Imagem EducaBox

Escolha o sistema operacional desejado para acessar o guia de instalação passo a passo:

* [**Instalação Armbian**](https://github.com/educabox/educabox/blob/main/instalacao/instalacao-educabox-live.md)
* [**Instalação Android**](https://github.com/educabox/educabox/blob/main/instalacao/instalacao-android.md)

---

## 🚀 Instalação Imagem Oficial Armbian

Lista de TVs Boxes homologadas. O link descreve passo a passo como instalar a imagem oficial. 

| TV BOX | Processador | GPU | RAM | Armaz. | Wifi | Áudio | Guia |
|---|---|:---:|:---:|:---:|---|:---:|:---:|
| **AUDIOSAT 4K** | Allwinner H3 | Mali-400 | 1GB | 8GB | ❌ SV6256P | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/audiosatpro4k.md) |
| **BTV11** | Amlogic S905X3 | Mali-G31 | 2GB | 16GB | ✅ AP6212 | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/btv11.md) |
| **BTVBX** | Amlogic S905X | Mali-450 | 2GB | 16GB | ✅ AP6212 | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/btvbx.md) |
| **BTVE10** | Amlogic S905X2 | Mali-G31 | 2GB | 8GB | ✅ RTL8189FTV | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/btve10.md) |
| **DC BOX 8K** | RockChip 3229 | Mali-400 | 1GB | 8GB | ✅ SV6256P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/dcbox8k.md) |
| **EXTREMO** | Amlogic S905W | Mali-450 | 2GB | 8GB | ❌ SV6051P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/extremo.md) |
| **HTV6+** | Amlogic S905W | Mali-450 | 2GB | 16GB | ✅ RTL8723BS | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/htv6plus.md) |
| **HTV7** | Amlogic S905X3 | Mali-G31 | 2GB | 16GB | ✅ RTL8822CS | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/htv7.md) |
| **I5** | RockChip 3229 | Mali-400 | 2GB | 8GB | ✅ RTL8723BS | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/i5.md) |
| **ID18** | Allwinner H3 | Mali-400 | 1GB | 8GB | ✅ XR819 | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/id18.md) |
| **IMOVE** | Amlogic S905W | Mali-450 | 1GB | 8GB | ❌ SV6051P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/imove.md) |
| **IMOVE PRO** | Amlogic S905W | Mali-450 | 1GB | 8GB | ❌ SV6051P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/imovepro.md) |
| **IN X PLUS** | RockChip 3229 | Mali-400 | 1GB | 8GB | ✅ SV6256P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/inxplus.md) |
| **MX9 4K 5G** | RockChip 3228A | Mali-400 | 1GB | 8GB | ❌ SV6156P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/mx94k5g.md) |
| **MXQ PRO 4K** (Cinza) | RockChip 3228A | Mali-400 | 1GB | 8GB | ✅ SV6256P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/mxqpro4k5g-cinza.md)|
| **MXQ PRO 4K** | RockChip 3228A | Mali-400 | 1GB | 8GB | ❌ ESP8089 | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/mxqpro4k5g.md) |
| **MXQ PLUS 4K** | Allwinner H3 | Mali-400 | 1GB | 8GB | ❌ SV6256P | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/mxqplus4k.md) |
| **MY BOX TV** | Amlogic S905X | Mali-450 | 2GB | 16GB | ❌ AP6181 | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/mytvbox.md) |
| **PLAY TV** | Amlogic S905X3 | Mali-G31 | 2GB | 16GB | ✅ RTL8189FTV | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/playtv.md) |
| **R69** | Allwinner H3 | Mali-400 | 1GB | 8GB | ✅ XR819 | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/r69.md) |
| **R90 PLUS** | RockChip 3228A | Mali-400 | 1GB | 8GB | ✅ SV6051P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/r90plus.md) |
| **RPC 8K** | RockChip 3228A | Mali-400 | 1GB | 8GB | ✅ SV6051P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/rpc8k.md) |
| **RPC MINI** | RockChip 3228A | Mali-400 | 1GB | 8GB | ✅ SV6051P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/rpcmini.md) |
| **RPC PLUS** | RockChip 3228A | Mali-400 | 1GB | 8GB | ✅ SV6256P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/rpcplus.md) |
| **SEM NOME** | RockChip 3228A | Mali-400 | 1GB | 8GB | ✅ SV6051P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/semnome.md) |
| **SUNLIGHT** | RockChip 3228A | Mali-400 | 1GB | 8GB | ✅ SV6256P | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/sunlight.md) |
| **SUPER TV** | RockChip 3229 | Mali-400 | 1GB | 8GB | ✅ RTL8189FTV | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/supertv.md) |
| **TIGRE 2** | Amlogic S905X | Mali-450 | 2GB | 16GB | ✅ RTL8723BS | ❌ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/tigre2.md) |
| **UNITV S1** | RockChip 3229 | Mali-400 | 1GB | 8GB | ✅ RTW8723DS | ✅ | [Acessar](https://github.com/educabox/educabox/blob/main/boxes/unitvs1.md) |

---

## 💻 Pré-Requisitos

1. Verifique a compatibilidade da sua TV Box:
   - **Amlogic:** S805, S905X, S905X2, S905X3, S905W
   - **Allwinner:** H3, H6
   - **RockChip:** RK3228A, RK3228B, RK3229
2. Faça um backup da sua ROM atual para evitar *soft bricks*.

---

## ⚙️ Utilitários

Ferramentas necessárias separadas por arquitetura de processador.

### Amlogic
| Função | Ferramenta | Versão | Link |
|---|---|:---:|:---:|
| Instalação OTG | USB Burning Tool | 3.20 | [Download](https://chinagadgetsreviews.com/download-amlogic-usb-burning-tool-latest-version-3-2-0.html) |
| Instalação SDCard | Amlogic Burn Card Maker | 2.0.2 | [Download](https://chinagadgetsreviews.com/download-amlogic-burn_card_maker-v2-0-2.html) |
| Instalação/Recovery | Amlogic Customization Tool | 7.1.0 | [Download](https://chinagadgetsreviews.com/download-amlogic-customization-tool-v7-1-0.html) |
| Licenças | USB Burning Tool | - | [Download](https://drive.google.com/uc?export=download&id=1SMNeypg2U2R1ZhDCGAEF1viGKsteFspF) |

### Allwinner
| Função | Ferramenta | Versão | Link |
|---|---|:---:|:---:|
| Instalação OTG | Phoenix Suit | 1.10 | [Download](https://www.phoenixsuite.org/) |
| Instalação SDCard | Phoenix Card | 4.2.4 | [Download](https://chinagadgetsreviews.com/download-latest-version-of-phoenixcard-v4-2-4.html) |
| Drives | LiveSuit e Drives | 1.1.0 | [Download](https://androidmtk.com/download-livesuit-all-versions) |

### RockChip
| Função | Ferramenta | Versão | Link |
|---|---|:---:|:---:|
| Instalação OTG | Android Tool Release | 2.84 | [Download](https://chinagadgetsreviews.com/download-latest-androidtool-release-v2-84.html) |
| Instalação OTG | Batch Tool | 1.8 | [Download](https://chinagadgetsreviews.com/hot-download-rockchip-batch-tool-v1-8.html) |
| Instalação SDCard | Create Upgrade Disk | 1.7 | [Download](https://chinagadgetsreviews.com/download-latest-rockchip-create-upgrade-disk-tool-v1-7.html) |
| Instalação SDCard | Multitool | - | [Download](https://users.armbian.com/jock/rk322x/multitool/multitool.img.xz) |
| Drives | Driver Assistant | 5.1.1 | [Download](https://chinagadgetsreviews.com/download-rockchip-driver-assistant-v5-1-1.html) |

---

## 🔁 Recuperação TWRP

| Processador | Modelo | TWRP | Android | Imagem | Zip |
|---|---|:---:|:---:|:---:|:---:|
| **Amlogic** | S905X3 | 3.7.0 | 9.0 (Pie) | [.img](https://drive.google.com/file/d/1sxk-mr_QLQErB-OCmLhOgm71f8rSFr7Z) | [.zip](https://drive.google.com/file/d/1r2Q7nTJ_U96qj5eGFhf6gBTRJTfJEyt9) |
| **Amlogic** | S905W | 3.0.2 | - | [.img](https://drive.google.com/uc?export=download&id=1p5vziF86DJspxG2nlJq51k_LoEF03pUz) | [.zip](https://drive.google.com/file/d/1KKFMqGhu0OFElQhOFK8ovwnwqQX_gUMZ) |
| **Allwinner** | H3 MXQ-4K | - | - | [.img](https://drive.google.com/file/d/1oRIa-e7O0zuLEBhTFHQ9F9wN2YC0Jd5V) | - |
| **RockChip** | RK3399 | 3.2.3 | - | [.img](https://drive.google.com/file/d/1rZuSeMsHrFnCqi394zCgKOPfb18Z-rDT) | - |

*(Nota: Tabela resumida. Verifique o repositório principal para versões adicionais legadas).*

---

## 🤝 Parceiros e Equipe

Agradecimentos especiais às organizações e desenvolvedores que tornam este projeto possível:

### Órgãos Apoiadores
<table>
  <tr>
    <td align="center"><a href="https://www.gov.br/mcom/"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-computadores-inclusao.png?raw=true" width="100px" alt="MCOM"/><br>MCOM</a></td>
    <td align="center"><a href="http://crcdourados.com.br"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-crc.png?raw=true" width="100px" alt="CRC Dourados"/><br>CRC Dourados</a></td>
    <td align="center"><a href="https://www.gov.br/receitafederal/"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-rf.png?raw=true" width="100px" alt="Receita Federal"/><br>Receita Federal</a></td>
    <td align="center"><a href="https://www.ifms.edu.br/"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/logo-ifms.png?raw=true" width="160px" alt="IFMS"/><br>IFMS</a></td>
  </tr>
</table>

### Core Team
<table>
  <tr>
    <td align="center"><a href="http://lattes.cnpq.br/6266978921240941"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/lucas.png?raw=true" width="80px" style="border-radius:50%" alt="Lucas"/><br>Lucas Rodrigues</a></td>
    <td align="center"><a href="http://lattes.cnpq.br/7192649680369183"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/savio.png?raw=true" width="80px" style="border-radius:50%" alt="Savio"/><br>Savio Cantero</a></td>
    <td align="center"><a href="http://lattes.cnpq.br/0808904471212303"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/evandro.png?raw=true" width="80px" style="border-radius:50%" alt="Evandro"/><br>Evandro Falleiros</a></td>
    <td align="center"><a href="http://lattes.cnpq.br/3005793775761769"><img src="https://github.com/educabox/educabox/blob/main/imagens/XX%20-%20COLABORADORES/jonison.png?raw=true" width="80px" style="border-radius:50%" alt="Jonison"/><br>Jónison Santos</a></td>
  </tr>
</table>

---

## ✉️ Contato

Quer fazer parte desse projeto ou reportar um problema? 
* 🖥️ **Site:** [www.ifms.edu.br](https://www.ifms.edu.br)
* ✉️ **E-mail:** educabox@ifms.edu.br
