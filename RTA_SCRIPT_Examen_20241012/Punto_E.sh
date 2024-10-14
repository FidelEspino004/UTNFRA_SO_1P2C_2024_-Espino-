#1) Dentro de RTA_ARCHIVOS_Examen_20241012 creamos el archivo Filtro_Basico.txt
	touch Filtro_Basico.txt
#2) Extraemos la informacion de nuestra RAM total y la colocamos en Filtro_Basico.txt
	grep MemTotal /proc/meminfo > Filtro_Basico.txt
#3) Extraemos la inforamcion del fabricante de chassis y la colocamos dentro de Filtro_Basico.txt
	sudo dmidecode -t chassis | grep "Manufacturer:" >> Filtro_Basico.txt
