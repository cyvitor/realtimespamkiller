#!/bin/bash
##### CONFIGURE
KEY="sua_chave_aqui"
LOG="/var/log/RTSK_cli.log"
DOMINIO="seu_dominio.com.br"
##### CONFIGURE

ZMPROV="/opt/zimbra/bin/zmprov"
WEBSERVICE="https://realtimespamkiller.vh5.tech/ws.php"

# Função que aciona Web Service
function getUpdates() {
  local end=$1
  local key=$2
  local action="getUpdates"
  
  # Enviar solicitação POST
  local resposta=$(curl -X POST -d "key=$key&action=$action" "$end")
  
  echo "$resposta"
}

# Função para registrar ação no arquivo de log
registrar_log() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') $1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') $1" >> "$LOG"
}

RESPOSTA=$(getUpdates $WEBSERVICE $KEY)
#echo $RESPOSTA # debug

# Verificar o código na resposta
code=$(echo $RESPOSTA | jq -r '.code')
if [[ $code -ne 0 ]]; then
    # Chamar a função registrar_log com o código como parâmetro
    registrar_log "$code"
else
    # Verificar se a chave 'msg' existe em 'data'
    if [[ $(echo $RESPOSTA | jq -r '.data.msg') ]]; then
        msg=$(echo $RESPOSTA | jq -r '.data.msg')
        registrar_log "$msg"
    else
        # Extrair os valores de 'domain_name' e 'domain_express' e registrar no log
        for row in $(echo "${RESPOSTA}" | jq -r '.data[] | @base64'); do
            _jq() {
                echo ${row} | base64 --decode | jq -r ${1}
            }
            domain_name=$(_jq '.domain_name')
            domain_express=$(_jq '.domain_express')
            registrar_log "Adiciona na blacklist: $domain_name $domain_express"
			$ZMPROV md "$DOMINIO" +amavisblacklistsender "$linha"
        done
    fi
fi