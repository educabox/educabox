# Novo SGA v1.5 AiO

Versão All-in-One da versão 1.5 do [Sistema de gerenciamento de fila de atendimento](https://novosga.org/)

## Requisitos

- [Docker Engine](https://docs.docker.com/engine/install/) (script de instalação disponível)
- [Docker Compose](https://docs.docker.com/compose/install/) (normalmente incluso na instalação do Docker Engine)

## Para subir o sistema

### Clone este projeto (use a URL deste repositório):

```
git clone [https://url](https://github.com/educabox/educabox) educabox
```

### Entre na pasta clonada

```
cd educabox/softwares/NovoSGA/
```

### Configurar variáveis de ambiente

As variáveis podem ser configuradas no sistema (export) ou através do arquivo `.env` (recomendado), para isso use o arquivo de exemplo:

```
cp .env.example .env
```

(Opcional) Edite as variáveis usando um editor de texto, por exemplo:

```
nano .env
```

### Inicie os serviços

```
# Para iniciar em primeiro plano (CTRL+C para parar)
docker compose up

# Para iniciar como um serviço (daemon)
docker compose up -d
```

### Primeiro acesso

Navegue para o endereço IP da máquina ou, se estiver acessando da mesma, use localhost: `http://localhost`.

Em outro computador/box, acesse o painel pela URL `http://ip_da_box/painel`

Durante a primeira execução, o banco de dados será inicializado. Isso normalmente demora alguns minutos, acompanhe os logs para saber quando tudo estiver pronto.

O sistema já estará pré-instalado, usuário `admin` e senha `admin123`.

Consulte a [documentação](https://novosga.org/docs/#/v1.0/) do sistema para saber como utilizá-lo.

### Para parar

Navegue até a pasta do projeto novamente e então:

```
docker compose down
```
