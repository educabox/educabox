# 💻 Instalação Imagem EducaBox
  
<img src="https://github.com/educabox/educabox/blob/main/imagens/logo_android.png?raw=true"  align="right" width="120" height="178">

### 📝 Guia de Instalação

1. 🛜 [Downloads Imagens](#downloads)
2. 📲 [Aplicativos Pré-Instalados](#aplicativos)
3. 🔍 [Pré-Requisitos](#requisitos)
4. 💾 [Gravação Imagem](#gravacao)

# ✅ <a id="downloads"/>Download Educabox [Android]

O guia de instalação abaixo é para instalação de uma imagem otimizada Android [Pendrive, SDCard] para todas as TVs Boxes mencionadas em nosso repositório, faça o download da [Imagem Educabox] do respectivo equipamento.

| TV Box | Processador | Mem | HD | Wifi | Áudio/HDMI | Download |
|-----------|----------------|:---:|:----:|--------------|:----------:|:------------------------------------------------------------------------:|
| IN X PLUS | RockChip 3229 | 1GB | 8GB | ✅ SV6256P | ✅ | [Link](https://drive.google.com/uc?export=download&id=1xw9wbWIX8LgOfjQ97nEi3nBO2dCpphDg) |
| MXQ PRO 4K | RockChip 3228A | 1GB | 8GB  | ✅ ESP8089    | ✅        | [Link](https://drive.google.com/uc?export=download&id=1KhYS4f6dqAg6p-vpjhIzttDiUjMf_vB8)    |
| RPC 8K | RockChip 3229 | 1GB | 8GB | ✅ SV6051P | ✅ | [Link](#) |
| RPC MINI | RockChip 3229 | 1GB | 8GB | ✅ SV6051P | ✅ | [Link](#) |
| RPC PLUS | RockChip 3229 | 1GB | 8GB | ✅ SV6256P | ✅ | [Link](https://drive.google.com/uc?export=download&id=1xw9wbWIX8LgOfjQ97nEi3nBO2dCpphDg) |

## 1️⃣ <a id="aplicativos"/>Aplicativos Pré-Instalados

| Chrome | Opera | VLC | Explorer | WPS | Power Menu | Calculadora | ATV Launcher |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/chrome.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/opera.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/vlc.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/mixexplorer.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/wps.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/powermenu.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/calculadora.png?raw=true&image_size=auto"/>|<img src="https://github.com/educabox/educabox/blob/main/imagens/VV%20-%20ICONES/atv.png?raw=true&image_size=auto"/>

## 0️⃣ <a id="gravacao"/>Pré-requisitos instalação Multitool via SDCard

1. Dispositivo SDCard - ```Mínimo 4GB```
2. Software [balenaEtcher](https://etcher.balena.io/) , [Rufus](https://rufus.ie/pt_BR/) ou [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/)
3. Imagem do Utilitário [Multitool](https://users.armbian.com/jock/rk322x/multitool/multitool.img.xz)
4. Execute balenaEtcher (*Preferência)
5. Grave a imagem `multitool.img.xz` no cartão SDCard
6. Espere finalizar a gravação e remova o SDCard
7. Em seguida insira novamente o SDCard
8. Acesse a pasta `/backup` e copie a imagem compactada do Android [Educabox]
9. Feito isso remova o SDCard e insira na TV Box
10. Inicie a TV Box com o cartão SDCard
11. Caso sua TV Box faça inicialização automática do SDCard o utilitário Multitool será inicializado. Se for necessário inicie a TV Box com o botão de `update` pressionado ou com um clips/palito no botão oculto na entrada `AV`

**Gravar imagem via utilitário Multitool na unidade de armazenamento eMMC:**

1. Uma tela de boas vindas será exibida, com um teclado conectado a TV Box utilize os comandos direcionais (⮃) e botão (`Enter`, `Esc`). Digite `Enter` para avançar para próxima tela e escolha a opção `Erase flash` para formatar a unidade de armazenamento interna

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/1.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

2. Selecione seu armazenamento eMMC

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/2.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

3. Uma tela de sucesso será exibida caso o procedimento seja bem sucedido. Digite `Enter` para retornar a tela anterior

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/4.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

4. Em seguida selecione a opção `Restore flash` para restaurar uma imagem no armazenamento interno

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/5.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

5. Escolha novamente a unidade de armazenamento que foi formatada recentemente

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/6.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

6. Selecione a imagem Android que foi copiada para o SDCard

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/7.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

7. Um tela da operação e progresso será exibida até que o processo de gravação seja finalizado

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/9.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

8. Finalizado o processo de gravação, finalize o utilitário com a opção `Shutdown`

<p align="center">
<img src="https://github.com/educabox/educabox/blob/main/imagens/TT%20-%20INSTALACAO%20ANDROID/10.jpeg?raw=true" alt="Size Limit CLI" width="550">
</p>

9. Remova o SDCard da TV Box e inicie novamente a Box.
  
## Dúvidas e Erros

1. Encontrou algum erro em nossa documentação ou imagens, abra uma solicitação de problema/erro:
- [Solicitação](https://github.com/educabox/educabox/issues)
- E-mail: educabox@ifms.edu.br
