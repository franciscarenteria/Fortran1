
!Nombre del programa
PROGRAM temperatura

  
  IMPLICIT NONE
  !Declaración de variables

  REAL:: temp_f !Temperatura en grados Fahrenheit
  REAL:: temp_c !Temperatura en grados centígrados

  WRITE (*,*)"Este programa sirve para convertir grados Fahrenheit a grados centígrados"
  WRITE (*,*)"Ingrese la temperatura en grados Fahrenheit"
  READ(*,*) temp_f

  !Conversión a centígrados
  temp_c=(5./9.)*(temp_f-32.)

  !Muestra el valor de gradoc C en pantalla
  WRITE(*,*) temp_f, "grados Fahrenheit=", temp_c, "grados centígrados"

  IF (temp_c<-273)then
     WRITE(*,*)"La temperatura ingresada es menor que el cero absoluto"
  END IF

  

  !Terminar programa
END PROGRAM temperatura


  
