- Crea un script que añada un nombre de dominio y una ip al fichero host. Debemos comprobar que no existe dicho dominio

#!/bin/bash

echo "Escribe el nombre del dominio que quieres añadir: "
read dominio

echo "Ahora escribe la dirección ip:"
read ip

if grep -Fxq "$ip $dominio" "/etc/hosts" ; then
	echo "El dominio ya existe"
	
else

	echo "$ip	$dominio" >> /etc/hosts
	echo "El dominio se ha añadido correctamente"
	
fi 