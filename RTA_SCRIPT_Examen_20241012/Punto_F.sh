#1) Dentro de R/RTA_ARCHIVOS_Examen_20241012 creamos el archivo Filtro_Avanzado.txt
	touch Filtro_Avanzado.txt

#2) Establecemos las variables para obtener nuestro IP Publica, El nombre del usuario, el hash del usuario y la URL del repositorio remoto.
	# IP.
	Ip_Publica=$(curl -s ifconfig.me)
	# usuario
	User=$(whoami)
	# hash
	Hash_user=$(sudo grep vagrant /etc/shadow)
	# URL
	Git_repo=$(git remote get-url origin)

#3) Añadimos la informacion en el archivo Filtro_Avanzado.txt
	echo "Mi IP Publica es: $IP_Publica" > Filtro_Avanzado.txt
	echo "Mi Usuario es: $User" > Filtro_Avanzado.txt
	echo "El Hash de mi usuario es: $HASH_user" > Filtro_Avanzado.txt
	echo "La URL de mi repositorio es: $Git_repo" > Filtro_Avanzado.txt
