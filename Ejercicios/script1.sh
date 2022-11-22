- Crea un script que añada un puerto de escucha en el fichero de configuración de Apache. 
El puerto se recibirá como parámetro en la llamada y se comprobará que no esté ya presente en el fichero de configuración.
´´´bash
#!/bin/bash

echo "¿Qué puerto quieres poner?"
read puerto

cd /etc/apache2

if [ grep -Fxq "Listen $puerto" ports.conf ]; then 

	echo "El puerto ya existe."
	
	else
		echo "Listen $puerto" >> /etc/apache2/ports.conf
		echo "El puerto se ha cambiado correctamente."
		
fi
´´´
