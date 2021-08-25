#!/bin/bash



if [ "$1" == "" ]

then
	echo -e "\n ACEITA OS FORMATOS: DOC + DOCX + PDF + ZIP + RAR + PPT + PPTX \OUTROS"
	echo -e "\n Modo de uso:./metadados.sh hostname.com pdf"

else

	lynx --dump "www.google.com.br/search?&q=site:$1+ext:$2" | grep ".pdf" | cut -d "=" -f2 | egrep -v "site|google" | sed 's/...$//' 1>links

fi
