! Nombre del programa
PROGRAM Temperatura

  ! Todo tiene que ser declarado, nada previo existe
  IMPLICIT NONE

  !Declaracin de las variables que se utilizaran
  REAL :: temp_f, temp_c0, temp_c, temp_cf, temp_k, d_temp
  INTEGER :: i, Ntps
  CHARACTER(len=80)::FORMAT

  OPEN(unit=11, file= "tabla.txt", status="UNKNOWN")


  ! Interaccion con el usuario, le pide la temperatura a convertir
  WRITE(*,*) 'Temperatura inicial y final en Celsius y el numero de puntos: '
  READ(*,*) temp_c0, temp_cf, Ntps

  ! Inicializar antes de entrar al LOOP

  temp_c = temp_c0
  d_temp = (temp_cf - temp_c0) /float (Ntps)

  ! Encabezado de tabla
  WRITE(11,*) ' F C K'
  FORMAT= "(I3, 3F8.2)"

  ! DO LOOP
  do i = 1, Ntps

     ! Convierte la temperatura en F a grados C
     temp_f = (9.0/5.0)*temp_c + 32.0
     temp_k = temp_c + 273.15

     ! Pedimos que imprima el valor de la temperatura 3F8.2)"en grados
     WRITE(11,FORMAT) i,  temp_f, temp_c, temp_k

     ! Actualizar el valor de temp_c para el siguiente calculo
     temp_c = temp_c + d_temp

  end do

  CLOSE(unit=11)  
     ! Termina el programa
 END PROGRAM Temperatura
