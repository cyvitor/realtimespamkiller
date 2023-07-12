# Real Time Spam Killer

O Real Time Spam Killer é um serviço que disponibiliza uma lista de domínios que enviam spam, e este repositório contém dois scripts para utilização no Proxmox Mail Gateway e no Zimbra.

## Scripts disponíveis

### RTSK_cli_mox.sh

Este script é destinado ao uso no Proxmox Mail Gateway. Aqui está o início do script:

```bash
#!/bin/bash
##### CONFIGURAÇÃO
KEY="sua_chave_aqui"
LOG="/var/log/RTSK_cli.log"
##### CONFIGURAÇÃO
