- Crea un guión que nos permita crear una página web con título, una cabecera y un mensaje.

#!/bin/bash

directorio = "$HOME/Escritorio/HTML/"

echo "Introduce el nombre del archivo HTML: "
read nombre

echo "Introduce el título"
read titulo

echo "Introduce el mensaje"
read mensaje

ruta = "$directorio$nombre.html"

if [ -f "$ruta" ]; then
	echo "El archivo ya existe"


elif [ ! -d $directorio ]; then
	mkdir $directorio

	touch "$ruta"

	echo "<!DOCTYPE html>" >> "$ruta"
	echo "<html lang="en">" >> "$ruta"
	echo "<head>" >> "$ruta"
	echo -e "\t<meta charset="UTF-8">" >> "$ruta"
	echo -e "\t<meta http-equiv="X-UA-Compatible" content="IE=edge">" >> "$ruta"
	echo -e "\t<meta name="viewport" content="width=device-width, initial-scale=1.0">" >> "$ruta"
	echo -e "\t<title>$titulo</title>" >> "$ruta"
	echo "</head>" >> "$ruta"
	echo "<body>" >> "$ruta"
	echo -e "\t<p>$mensaje</p>" >> "$ruta"
	echo "</body>" >> "$ruta"
	echo "</html>" >> "$ruta"
	
	echo "El archivo se ha creado"	
fi