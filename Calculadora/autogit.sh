	#!/bin/bash

#autogit 1.0
DIA='date +"%d/%m/%Y'
HORA='date +"%H:%M"'
TXT='MENSAJE GENERADO AUTOMATICAMENTE'

# Modo de uso: copia o mueve este script a /usr/bin o /usr/local/bin y desde el directorio donde se 
encuentre la copia de un repo git, ejecútalo de esta manera:

# Ahora comprobamos si se le paso algun parametro
if [ $# == 0 ]; then
	echo "autogit: ¡Error! No se le a pasado ningún parámetro"
	exit -1
else
	# Recorremos los parametros para comprobar si son ficheros o directorios
	for file in $*; do
		if [ ! -e $file ]; then
			echo "UpToGit: El archivo o directorio $file no existe"
			exit -1
		fi
	done
	
	# Si llegamos hasta aquí, indicamos a Git los archivos a subir
	git add $*
	
	# Esto nos pedira el mensaje del commit
	git commit -m "$DIA+$HORA+$TXT"

	# Y terminamos subiendo los archivos
	git push origin master

fi
	
