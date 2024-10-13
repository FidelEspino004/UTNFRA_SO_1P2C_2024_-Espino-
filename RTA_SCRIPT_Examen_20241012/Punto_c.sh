#1) Crear los grupos de Alumno y Profesores.
  	sudo groupadd p1c2_2024_gAlumno
  	sudo groupadd p1c2_2024_gProfesores

#2) Creamos los usuarios.
  	sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
  	sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
	sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
	sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1P

  # Con -G p1c2_2024_gAlumno y -G p1c2_2024_gProfesores le indicamos que dentro del respectivo grupo se cree el usuario.
  # Con -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" indicamos que la contraseña sera la misma que la de vagrant.

#3) Ajustamos los permisos. 
	sudo chown p1c2_2024_A1:p1c2_2024_A1 /EXAMENES-UTN/alumno1
	sudo chown p1c2_2024_A2:p1c2_2024_A2 /EXAMENES-UTN/alumno2
	sudo chown p1c2_2024_A3:p1c2_2024_A3 /EXAMENES-UTN/alumno3
	sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /EXAMENES-UTN/profesores
	# Dueño == rwx, Grupo == r-x, Otros == ---
	sudo chmod 750 /EXAMENES-UTN/alumno1
	# Dueño == rwx, Grupo == rw-, Otros == ---
	sudo chmod 760 /EXAMENES-UTN/alumno2
	# Dueño == rwx, Grupo == ---, Otros == ---
	sudo chmod 700 /EXAMENES-UTN/alumno3
	# Dueño == rwx, Grupo == rwx, Otros == r-x
	sudo chmod 775 /EXAMENES-UTN/profesores

#4) Crear archivos validar.txt
	sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno1/validar.txt"
	sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno2/validar.txt"
	sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno3/validar.txt"
	sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt"
