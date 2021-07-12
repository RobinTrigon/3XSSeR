#!/bin/bash
for domain in $(cat $1)
do
echo "$domain" | qsreplace "$2" | xargs -P30 -n1 curl -s -k -L | grep "uffufuafuafua<>/" &>/dev/null && echo -e " \033[0;31mVULNERABLE \033[0;96mURL \033[0;35m$domain \033[0;93mPayload---> \033[0;96m[$2]" || echo -e "\033[0;98msafe \033[0;93mURL \033[0;97m$domain"

done 
