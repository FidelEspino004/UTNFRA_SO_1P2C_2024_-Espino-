#1) Creo el directorio principal y los archivos de correo y cliente.
	mkdir -p ~/Estructura_Asimetrica/correo 
	mkdir ~/Estructura_Asimetrica/clientes
#2) Creo las carpetas cartas de 1 al 100 dentro de correo y clientes.
	for i in {1..100}; do mkdir ~/Estructura_Asimetrica/correo/cartas_; done
	for i in {1..100}; do mkdir ~/Estructura_Asimetrica/clientes/cartas_; done
#3) Creo las carpetas cartero de 1 al 10 dentro de correo.
	for i in {1..10}; do mkdir ~/Estructura_Asimetrica/correo/carteros_; done


#
