# SRI
| Tema | Intoducción |
| -- | -- |
| Tema 0. Servidor Python | Crear un servidor web con Python |
|  | Scripts |
|  |  |
------

# Tema 0. Servidor Python

Hemos creado un servidor web python intoduciendo el siguiente comando en windows:

python -m http.server 8000

![image](https://user-images.githubusercontent.com/114562005/193528554-143e3873-c0a3-4606-987a-16d4e2c2fc69.png)


-------

# Tema 0. Scripts

### Script 1
- Crea un script que añada un puerto de escucha en el fichero de configuración de Apache. 
El puerto se recibirá como parámetro en la llamada y se comprobará que no esté ya presente en el fichero de configuración.

```sh
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
```


### Script 2
- Crea un script que añada un nombre de dominio y una ip al fichero host. Debemos comprobar que no existe dicho dominio

```sh
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
```

### Script 3
