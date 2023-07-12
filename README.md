Real Time Spam Killer
O Real Time Spam Killer é um serviço que disponibiliza uma lista de domínios que enviam spam, e este repositório contém dois scripts para utilização no Proxmox Mail Gateway e no Zimbra.

Scripts disponíveis
RTSK_cli_mox.sh
Este script é destinado ao uso no Proxmox Mail Gateway. Aqui está o início do script:

bash
Copy
#!/bin/bash
##### CONFIGURAÇÃO
KEY="sua_chave_aqui"
LOG="/var/log/RTSK_cli.log"
##### CONFIGURAÇÃO
Para utilizar corretamente o script, siga as etapas abaixo:

Acesse o site realtimespamkiller.vh5.tech e realize o cadastro.
Após o cadastro, gere a sua chave e substitua a variável KEY na linha 3 do script RTSK_cli_mox.sh pela sua chave gerada.
Faça as configurações adicionais, se necessário, de acordo com suas preferências no restante do script.
RTSK_cli_zim.sh
Este script é destinado ao uso no Zimbra. Aqui está o início do script:

bash
Copy
#!/bin/bash
##### CONFIGURAÇÃO
KEY="sua_chave_aqui"
LOG="/var/log/RTSK_cli.log"
DOMINIO="seu_dominio.com.br"
##### CONFIGURAÇÃO
Para utilizar corretamente o script, siga as etapas abaixo:

Acesse o site realtimespamkiller.vh5.tech e realize o cadastro.
Após o cadastro, gere a sua chave e substitua a variável KEY na linha 3 do script RTSK_cli_zim.sh pela sua chave gerada.
Informe o domínio configurado no Zimbra substituindo a variável DOMINIO na linha 4 do script.
Certifique-se de ter realizado o cadastro e gerado a chave no site do Real Time Spam Killer para obter os melhores resultados ao utilizar os scripts.

Contribuição
Contribuições são bem-vindas! Se você deseja melhorar o Real Time Spam Killer, siga estas etapas:

Faça um fork deste repositório.
Crie um branch para sua nova funcionalidade ou correção de bug: git checkout -b nova-funcionalidade.
Faça suas alterações e commit: git commit -m "Adicionar nova funcionalidade".
Envie para o branch remoto: git push origin nova-funcionalidade.
Abra um pull request para que possamos revisar suas alterações.
Certifique-se de seguir nosso guia de contribuição para obter mais informações sobre o processo de contribuição.

Licença
O Real Time Spam Killer está licenciado sob a MIT License.

Contato
Se você tiver alguma dúvida, sugestão ou problema relacionado ao Real Time Spam Killer, sinta-se à vontade para entrar em contato conosco. Você pode nos encontrar em:

E-mail: seu-email@exemplo.com
Issues: https://github.com/seu-usuario/real-time-spam-killer/issues ↗
Agradecemos seu interesse e contribuição para tornar a filtragem de spam mais eficaz!
