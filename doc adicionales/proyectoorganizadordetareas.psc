Algoritmo OganizadordeTareas
	definir IDTablero, IDLista,IDTarea, posicion,FechaInicio, FechaFin, OpTarea  como entero;
	definir NombreTablero,NombreTarea,Descripcion, Cambio,AgregarFecha,Desop,respuesta,porcentaje como texto;
	definir NombreLista,NombreEtiqueta,Comentario,NombreListadeActividades  como texto
	definir dia, mes, anio,dia1,mes1,anio1 ,IDComentario,IDActividad,OpAc,IDEtiqueta ,op como enteros
	definir IDListaActividades, PorcentajedeAvance Como Entero
	definir cantidaddeActividadesCompletadas,CantidadedActividades Como Entero
	definir NombreActividad,EstadoActividad, NuevoNombreActividad como texto
	porcentaje <- "%"
	OPTarea<-0;
	OpAc<-0;
	FechaInicio<-0;
	FechaFin<-0;
	IDTablero<-0;
	op<-0;
	Repetir
		IDTablero<-IDTablero+1;
		escribir" para salir de la creacion de tablero debe de colocar ","|salir|"
		escribir " ingrese el nombre del tablero"
		leer NombreTablero;
		si NombreTablero <> "salir" Entonces
			escribir"**********************************************************************"
			escribir "tablero";
			escribir "id lista:->",IDTablero ,"|", "nombre tablero:->",NombreTablero
			escribir"**********************************************************************"
			Escribir"agregar lista de tareas"
			IDLista<-0;
			escribir"para salir de la creacion de la lista de tareas escriba ","|salir|";
			Repetir
				IDLista<-IDLista+1;
				escribir"ingrese el nombre de la lista de tareas"
				leer NombreLista
				si NombreLista <> "salir" Entonces
					escribir"**********************************************************************"
					escribir "Lista de tareas"
					escribir "id tablero:->",IDTablero,"|","id lista:->", IDlista,"|","nombre lista:->", NombreLista
					
					escribir"**********************************************************************"
					IDTarea <-0
					posicion<-0
					Repetir
						IDTarea<-IDTarea+1
						posicion<-posicion+1
						escribir "para salir de la creacion de tareas debe de colocar ","|salir|"
						escribir "ingrese el nombre de la tarea"
						leer NombreTarea
						si NombreTarea <> "salir" entonces
							escribir "desea agregar fecha a su tarea escriba ","|si|", "para agregar "
							escribir "escriba","|no|", "para pasar"
							leer AgregarFecha 
							dia<-0
							mes<-0
							anio<-0
							dia1<-0
							mes1<-0
							anio1<-0
							si AgregarFecha= "si" o AgregarFecha = "SI" o AgregarFecha= "Si" o AgregarFecha = "sI" entonces 
								escribir "ingrese una fecha de inicio de la tarea"
								escribir "ingrese el dia de inicio de la tarea"
								leer dia
								escribir" ingrese el mes de inicio de la tarea"
								leer mes
								escribir " ingrese el año de inicio de la tarea "
								leer anio
								Escribir " ingrese una fecha fin de la tarea"
								escribir "ingrese el dia de fin de la tarea"
								leer dia1
								escribir" ingrese el mes de fin de la tarea"
								leer mes1
								escribir " ingrese el año de fin de la tarea "
								leer anio1
							sino 
								Escribir "salio"
							fin si
							escribir" desea agregar descripcion a su tarea"
							escribir "escriba, ", "|si|"," ,si lo desea"
							escribir " si no desea agregar escriba ","|no|"
							leer Desop
							si Desop ="si" o Desop ="Si" o Desop ="SI" o Desop ="sI" entonces 
								escribir " ingrese su Descripcion"
								leer Descripcion
							sino 
								escribir "salio"
							FinSi
							escribir"**********************************************************************"
							escribir"tarea"
							escribir dia,"/" mes,"/" anio
							escribir "id tablero:->",IDTablero,"|","id lista:->",IDLista,"|","id tarea:->", IDTarea, "|","posicion:->", posicion,"|","nombre de tarea:->", NombreTarea
							escribir "descripciona:->", Descripcion
							escribir dia1,"/" mes1 "/" anio
							escribir"**********************************************************************"
							FechaInicio<- dia+mes+anio
							FechaFin<-dia1+mes1+anio1
							si FechaInicio < FechaFin entonces 
								escribir"**********************************************************************"
								escribir" SU TAREA ESTA EN:"
								escribir"En tiempo"
							sino 
								si FechaInicio = FechaFin entonces 
									escribir " Por vencer"
								sino 
									si FechaInicio > FechaFin Entonces
										Escribir "vencida"
									FinSi
								FinSi
							FinSi
							escribir"**********************************************************************"
							escribir " |desea mover tarea|, |copiar tarea|, |eliminar una tarea|"
							escribir "1 mover tarea"
							escribir "2 copiar tarea"
							escribir "3 eliminar tarea"
							escribir "4 pasar opcion"
							escribir "ingrese la opcion"
							leer OpTarea
							escribir"**********************************************************************"
							segun OpTarea Hacer
								1: 
									escribir "ingreso a la opcion de move una tarea"
								2: 
									escribir "ingreseo a la opcion de copiar una tarea"
								3:
									escribir "ingreso a la opcion de eliminar una tarea"
								De Otro Modo:
									escribir "salio"
							FinSegun
							escribir"**********************************************************************"
							Escribir" agregar una lista de actividades"
							escribir "de lo contrario escriba 3 para salir" 
							escribir "elija una de las opciones siguientes"
							escribir "1. nueva lista de actividades"
							escribir "2. copiar una lista de actividades"
							escribir "3. para pasar op"
							escribir "ingrese su opcion"
							leer OpAc
							escribir"**********************************************************************"
							Segun OpAc Hacer	
								1:
									escribir "ingresado a la creacion de lista de actividades"
									Escribir "ingrese el nombre de la Lista de Actividades"
									leer NombreListadeActividades
									si NombreListadeActividades <> "salir" entonces
										cantidaddeActividadesCompletadas<-0;
										CantidadedActividades<-0;
										IDListaActividades<-0;
										PorcentajedeAvance<-0;
										IDListaActividades<-IDListaActividades+1;
										si CantidadedActividades= 0 Entonces
											CantidadedActividades<- 1
										SiNo
											CantidadedActividades<-CantidadedActividades+IDActividad
										FinSi
										CantidadedActividades<-CantidadedActividades;
										escribir "Lista de activiadad completada"
										escribir" si","----","no"
										leer respuesta
										si respuesta = "si" o respuesta = "SI" o respuesta = "Si" o respuesta = "sI" Entonces
											cantidaddeActividadesCompletadas<- cantidaddeActividadesCompletadas+1
										sino 
											cantidaddeActividadesCompletadas<- 1;
										FinSi
										si cantidaddeActividadesCompletadas >=1 entonces
											PorcentajedeAvance <-(cantidaddeActividadesCompletadas/CantidadedActividades)*100
										finsi
										escribir"**********************************************************************"
										escribir"Lista de actividades"
										escribir "id tabler:->",IDTablero,"|","id lista:->", IDLista,"|","id tarea:->", IDTarea,"|", "id lista de actividades:->",IDListaActividades,"|","porcentaje de avanza:->", PorcentajedeAvance, porcentaje;
										escribir"**********************************************************************"
										IDActividad<-0;
										Repetir
											escribir "agregar una actividad"
											escribir"para salir de las actividades debe de colocar |salir|"
											escribir"ingrese el nombre de la actividad"
											leer NombreActividad
											si NombreActividad <> "salir" Entonces
												IDActividad<-IDActividad+1
												escribir " ingrese el estado de la actividad"
												escribir" completado"
												escribir" sin completar"
												Leer EstadoActividad
												escribir"**********************************************************************"
												escribir"Actividades"
												escribir "id lista:->",IDLista,"|","id actividad:->",IDActividad,"|","nombre actividad:->", NombreActividad;
												escribir"**********************************************************************"
												escribir "desea cambiar nombre de la actividad"
												escribir " |si| para cambiar nombre"
												escribir "|no| para no cambiar nombre"
												leer cambio
												si Cambio = "si" Entonces
													escribir "ingrese nuevo nombre de la actividad"
													leer NuevoNombreActividad
													NombreActividad<-NuevoNombreActividad
												sino 
													escribir "salio"
												FinSi
											sino 
												escribir "salio"
											FinSi	
											
										Mientras Que NombreActividad <> "salir"
									sino
										escribir "salio"
									fin si	
								2:
									Escribir"ingresado a la opcion de copiar una tarea"
									
								De Otro Modo:
									escribir "salio"
							Fin Segun
							repetir 
								escribir"**********************************************************************"
								escribir" 1. Etiqueta"
								escribir" 2. comentarios"
								escribir"3. salir"
								escribir " elija una de las opciones siguientes "
								leer op
								escribir"**********************************************************************"
								Segun op Hacer
									1:
										IDEtiqueta<-0;	
										escribir " a ingresado a la apcion de etiquetas debe de colocar ","|salir|"," para salir de la opcion"
										Repetir
											Escribir" ingrese el nombre de la etiqueta"
											leer NombreEtiqueta
											si NombreEtiqueta <> "salir" Entonces
												IDEtiqueta <- IDEtiqueta+1
												escribir"**********************************************************************"
												escribir"Etiqueta"
												escribir IDTablero,"|" IDEtiqueta,"|" NombreEtiqueta
												escribir"**********************************************************************"
											sino 
												Escribir "salio"
											FinSi
										Mientras Que NombreEtiqueta <>  "salir"
									2:
										IDComentario<-0;
										Repetir
											escribir "ingreso a la apcion de comentarios debe de colocar ","|salir|"," para salir de la opcion"
											escribir "obtener comentario"
											leer Comentario
											si Comentario <> "salir" Entonces
												IDComentario<- IDComentario+1;
												escribir"**********************************************************************"
												escribir "Comentario"
												escribir "id tablero",IDTablero,"|","id comentario", IDComentario,"|"," comentario ingresado", Comentario
												escribir"**********************************************************************"
											SiNo
												escribir "salio"
											fin si
										Mientras Que Comentario <> "salir"
									3:
										escribir"**********************************************************************"
										escribir "EL NOMBRE DE SU TABLERO ES:",IDTablero,NombreTablero
										escribir"**********************************************************************"
										escribir "EL NOMBRE DE SU TAREAS ES:",IDTablero, IDLista,NombreTarea
										escribir "LA FECHA DE INICIO ES:",dia,"/" mes,"/" ,anio
										escribir "EL NOMBRE DE SU TABLERO ES:",IDTablero,IDLista,IDTarea,posicion, NombreTarea
										escribir "LA DESCRIPCION DE LA TARES ES:",Descripcion
										escribir "LA FECHA DE FIN ES:", dia1,"/" ,mes1 "/" ,anio
										escribir "**********************************************************************"
										escribir"EL NOMBRE DE LA LISTA DE ACTIVIDADES ES:",NombreListadeActividades
										ESCRIBIR "EL PORCENTAJE DE ACTIVIDAD ES:",PorcentajedeAvance
										escribir "SU LISTA DE ACTIVIDAD ES:",IDTablero,IDLista,IDTarea , IDListaActividades, PorcentajedeAvance, porcentaje;
										escribir "**********************************************************************"
										ESCRIBIR "EL ESTADO DE LA ACTIVIDAD ES:", EstadoActividad
										ESCRIBIR "EL NOMBRE DE LA ACTIVIDAD ES:",IDTarea,IDLista,IDActividad,NombreActividad;
										escribir"**********************************************************************"
										ESCRIBIR "EL NOMBRE DE LA ETIQUETA ES:",IDTablero,IDEtiqueta, NombreEtiqueta
										escribir "**********************************************************************"
										ESCRIBIR "EL COMENTARIO INGRESADO ES:",IDTablero, IDComentario,Comentario
										escribir"**********************************************************************"	
									De Otro Modo:
										Escribir "salio"
								Fin Segun
							hasta que op = 3
						SiNo
							Escribir "salir"
						Finsi
					Mientras Que NombreTarea <> "salir"
				SiNo
					escribir "salio"
				FinSi
			Mientras Que NombreLista<>"salir"
		sino 
			escribir "salio"
		FinSi
	Mientras Que NombreTablero<>"salir"
FinAlgoritmo
