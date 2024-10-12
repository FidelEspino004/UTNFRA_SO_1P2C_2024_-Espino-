#Este comando crea un directorio principal(EXAMENES-UTN) en el que se anidaran otros 4 subdirectorios (alumno1, alumno2, alumno3 y profesores) dentro de los primeros 3 subdirectorios se crearan otros 3 subdirectorios por igual que seran; parcial_1, parcial_2 y parcial_3.
mkdir -p EXAMENES-UTN/{{alumno1,alumno2,alumno3}/parcial_{1..3},profesores}
