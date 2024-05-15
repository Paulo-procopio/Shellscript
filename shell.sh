#!/bin/bash

# Sua lista  de comandos disponíveis, em fase de teste ...

comandos=("ls" "systemctl status apache2" "systemctl start apache2" "systemctl stop apache2" "cd /var/log" "pwd" "date" "whoami" "uptime")

# Mostra um menu para o usuário selecionar um comando
echo "Escolha um comando para executar:"
select comando in "${comandos[@]}"; do
    # Verifica se a seleção é válida
    if [ -n "$comando" ]; then
        echo "Executando o comando: $comando"
        # Executa o comando selecionado
        eval "$comando"
        break
    else
        echo "Opção inválida. Por favor, selecione um número de 1 a ${#comandos[@]}."
    fi
done
