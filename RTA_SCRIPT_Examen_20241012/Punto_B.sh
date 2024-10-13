#Revisamos los discos (/dev/sdc).
#1) Particionamos el disco.
    sudo fdisk /dev/sdc
#a. Elejimos la opcion para particionar (n).
#b. Lo hacemos primario (p).
#c. El numero de la particion sera el predeterminado (Seleccionamos Enter o 1).
#d. En first sector el valor sera predeterminado (Enter o 2048).
#e. En last sector elegimos la cantidad de espacio que tendra la participacion (+1G).
#. Finalizamos el proceso con W para salir.

#2) Lo siguiente es formatearlo. (sdc1 es la particion creada).
    sudo mkfs.ext4 /dev/sdc1

#3) Por ultimo se montan los discos en los diferentes archivos creados.
    sudo mount /dev/sdc1 /EXAMENES-UTN/alumno1/parcial_1
#El proceso se repite hasta particionar, formatear y montar los 10 discos en los diferentes directorios (alumno1/parcial_2~3, alumno2/parcial_1,alumno2/parcial_1 etc...)

#4) Para montar de forma persistente;  
