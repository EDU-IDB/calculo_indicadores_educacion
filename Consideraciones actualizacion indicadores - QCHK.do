/*====================================================================
project:       Consideraciones de los datos luedo de Quality check - CIMA
Author:        Angela Lopez 
Dependencies:  SCL/EDU - IDB 
----------------------------------------------------------------------
Creation Date:    27 Ago 2018 - 11:47:53
Modification Date:   
Do-file version:    01
References:          
Output:             Excel file
====================================================================*/

/*====================================================================
                        Consideraciones por país 2019
====================================================================*/


* Bahamas 

		replace Valor=. if Pais == "BHS" & (Nivel == "Prescolar" | Nivel == "4-5_Años") 
		replace Valor=. if Pais == "GUY" & (Indicador == "tasa_terminacion_c" | Indicador == "tasa_terminacion")
		

* Barbados 

		replace Valor=. if Pais == "BRB" 
	
* Belice 

		replace Valor=. if Pais == "BLZ" & (Nivel == "Prescolar" | Nivel == "4-5_Años" ) 
	
		

* Bolivia: 
		replace Valor=. if Pais == "BOL" & Indicador == "tasa_terminacion" & (Ano =="2012" | Ano =="2013")
		replace Valor=. if Pais == "BOL" & (Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5")
		replace Valor=. if Pais == "BOL" & (Ano=="2012")
		
		replace Valor=. if Pais == "BOL" & Ano <= "2009" & (Nivel == "4-5_Años" )  // se eliminan por que sólo entran las personas desde los 5 anios no 4
		replace Valor=. if Pais == "BOL" & Ano <= "2009" & Nivel == "Prescolar"

* Brasil: La nueva encuesta solo toma población mayor de 5 anios lo que rompe la serie para población de 4-5 anios y prescolar

		replace Valor=. if Pais == "BRA" & Ano >= "2016" & (Nivel == "4-5_Años" )  // se eliminan por que sólo entran las personas desde los 5 anios no 4
		replace Valor=. if Pais == "BRA" & Ano >= "2016" & Nivel == "Prescolar"
		
* Chile: Se debe revisar la viariable anios de educación para este anio de la CASEN  (2009)
		replace Valor=. if Pais == "CHL" & Ano =="2009" 

* Costa Rica: existen muy pocas observaciones a nivel muestra para la desagregación por quintiles en 
		replace Valor=. if Pais == "CRI" & (Nivel == "4-5_Años")&(Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5")

* Ecuador
		replace Valor=. if Pais == "ECU" & (Nivel == "Prescolar" | Nivel == "4-5_Años")

* Guyana
		replace Valor=. if Pais == "GUY" & Indicador == "tasa_sobre_edad" 
	

* Guatemala: modulo comienza a preguntar de los 7 anios en adelante por eso se eliminan esos niveles.
		replace Valor=. if Pais == "GTM" & (Nivel == "Prescolar" | Nivel == "4-5_Años")

* Honduras: En 2006 el módulo de educación se recolectaba [ara personas mayores a 4 anios no es comparable la info de este anio. 
 
		replace Valor=. if Pais == "HND" & Ano == "2006" & (Nivel == "Prescolar" | Nivel == "4-5_Años")
		 

* Nicaragua: tuvo un cambio en la encuesta en 2010, la información de periodos posteriores no es comparable se decidió no utilizarla
		replace Valor=. if Pais == "NIC" & (Ano < "2010") & (Nivel == "Prescolar" | Nivel == "4-5_Años")

* Panamá: se eliminan los datos para prescolas y 4-5 anios del 2010 hacia abajo pues la encuesta preguntaba el módulo solo a personas de 5 en adelante, luego de 2011 4 anios en adelante. La encuesta no identifica
* personas que asisten a educación prescolar 

		replace Valor=. if Pais == "PAN" & Ano <= "2010" & (Nivel == "4-5_Años" )
		replace Valor=. if Pais == "PAN" & Nivel == "Prescolar"

* Paraguay 

		replace Valor=. if Pais == "PRY"  & (Nivel == "4-5_Años" )
		replace Valor=. if Pais == "PRY"  & Nivel == "Prescolar"

* República Dominicana: tiene muy poca muestra para desagregar por quintiles socioeconómicos
		replace Valor=. if Pais == "DOM" & Ano >="2006" &(Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5") &(Nivel == "4-5 Años")
		replace Valor=. if Pais == "DOM" & Ano =="2010" & Indicador == "tasa_terminacion" & (Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5") 

* Jamaica 


		replace Valor=. if Nivel == "7-11_Años" & (Clase == "quintil_2" | Clase == "Rural" ) & Pais == "JAM"
		replace Valor=. if Nivel == "12-14_Años" & Pais == "JAM"
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior"  & (Clase == "quintil_4" |Clase == "quintil_5" | Clase == "Urbano" ) & Pais == "JAM"
		replace Valor=. if Nivel == "13_Años_o_más" & Clase == "quintil_5" & Pais == "JAM"
		replace Valor=. if Indicador == "tasa_terminacion" & Nivel == "Secundaria"  & (Clase == "quintil_1" |Clase == "quintil_2" | Clase == "Rural" ) & Pais == "JAM"
		replace Valor=. if Pais == "JAM" & (Nivel == "Prescolar" | Nivel == "Primaria" | Nivel == "4-5_Años" | Nivel == "6-11_Años") 

  
 
* Uruguay:
		replace Valor=. if Pais == "URY" & Ano =="2007" 
		
* Venezuela 
		replace Valor=. if Pais == "VEN" & Ano >="2016" 
		
/*======================================================================================
                        Consideraciones por país 2018, de acuerdo a revisión des ves
========================================================================================*/

* Alta Desviación Estandar de la serie histórica (mayor a 10 puntos):
/*
		if Pais == "ARG" {
			replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior" & Clase == "quintil_5"
			replace Valor=. if Indicador == "tasa_terminacion" & Nivel == "Primaria" & Clase == "Hombre"
			replace Valor=. if Indicador == "tasa_terminacion" & Nivel == "Primaria" & Clase == "quintil_1"
		}
		
		if Pais == "BHS" {
			replace Valor=. if Indicador == "tasa_terminacion" & Nivel == "Secundaria" 
		}
		
		if Pais == "BOL" {
			replace Valor=. if Nivel == "4-5_Años"
			replace Valor=. if Nivel == "Prescolar"
			replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Primaria" & Clase == "Rural"
		}

		if Pais == "BRA" {
			replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Primaria" & (Clase == "Rural" | Clase == "quintil_2")
			replace Valor=. if (Indicador == "tasa_bruta_asis"| Indicador == "tasa_neta_asis") & Nivel == "Secundaria" & (Clase == "Rural" | Clase == "quintil_1")
			replace Valor=. if Indicador == "tasa_terminacion" & Nivel == "Primaria"
		}
		
		if Pais == "CHL" {
			replace Valor=. if Indicador == "tasa_asis_edad"  & Nivel == "4-5_Años" & Clase == "Rural"
			replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior" & (Clase == "Mujer"| Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5")
			replace Valor=. if Indicador == "tasa_neta_asis"  & Nivel == "Prescolar" & Clase == "Rural"
			replace Valor=. if Indicador == "tasa_no_asis_edad"  & Nivel == "4-5_Años" & Clase == "Rural"
		}
			
		if Pais == "COL" {
			replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior"  & Clase == "quintil_5"
			replace Valor=. if Indicador == "tasa_neta_asis"  & Nivel == "Prescolar" & Clase == "quintil_4"
		}
		
		if Pais == "CRI" {
			replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior"   & Clase == "quintil_5"
			replace Valor=. if Indicador == "tasa_neta_asis"  & Nivel == "Secundaria" 
		}
		
		if Pais == "ECU" {
			replace Valor=. if (Indicador == "tasa_bruta_asis"| Indicador == "tasa_neta_asis") & Nivel == "Secundaria" & Clase == "Rural" 
		}
		
		if Pais == "GTM" {
			replace Valor=. if Indicador == "tasa_terminacion" & Nivel == "Primaria" & (Clase == "Hombre"| Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5")
		}
		
		if Pais == "NIC" {
			replace Valor=. if Nivel == "4-5_Años" 
			replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Primaria" & (Clase == "Mujer"| Clase == "quintil_2" | Clase == "quintil_4" | Clase == "quintil_5")
		}
		
		if Pais == "PER" {
		replace Valor=. if (Nivel == "4-5_Años" | Nivel == "Prescolar")  & (Clase == "Rural" | Clase == "quintil_1")	
		}
		
		if Pais == "PRY" {
		replace Valor=. if (Nivel == "4-5_Años" | Nivel == "Prescolar")  & (Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4")
		replace Valor=. if  Indicador == "tasa_bruta_asis" & Nivel == "Superior"  
		replace Valor=. if  Indicador == "tasa_bruta_asis" & Nivel == "Superior"  
		}
		
		if Pais == "URY" {
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Secundaria" & (Clase == "quintil_2" | Clase == "Rural" )
		}
		
		*if Pais == "VEN" {
		*replace Valor=. if  Indicador == "Años_Escolaridad_25_mas" & Nivel == "13_Años_o_más"  /*Ver si Sacando los valores extremos de 2016 y 2017 la serie sigue con esa desvest*/
		*replace Valor=. if  Indicador == "tasa_bruta_asis" & Nivel == "Superior"  
		*replace Valor=. if  Indicador == "tasa_terminacion" & Nivel == "Secundaria"  
		*}
		
	*indicadores con diferencias de m'as de 50 pp respecto al promedio regional
*/	

	/*	
	if Pais == "HND" {
		replace Valor=. if Indicador == "tasa_terminacion" & Nivel == "Secundaria" & (Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5" )
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Secundaria" & Clase == "quintil_1" 
		}
		
	if Pais == "VEN" {
		replace Valor=. if  Indicador == "tasa_bruta_asis" & Nivel == "Superior"  
		*replace Valor=. if  Indicador == "tasa_terminacion" & Nivel == "Secundaria"  
		}

	if Pais == "CRI" {
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Secundaria" & (Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5" )
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior" & (Clase == "quintil_5" )
		}
		
	if Pais == "GTM" {
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Secundaria" & (Clase == "quintil_1" | Clase == "quintil_2" | Clase == "quintil_3" | Clase == "quintil_4" | Clase == "quintil_5" )
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior" & Clase == "quintil_5"
		}
		
	if Pais == "URY" {
		replace Valor=. if Indicador == "tasa_bruta_asis" & Nivel == "Superior" & (Clase == "quintil_5" )
		} */
	

		/*
	if Pais == "SUR" {
		replace Valor=. if Nivel == "13_Años_o_más"
		replace Valor=. if  Indicador == "tasa_bruta_asis" & Nivel == "Primaria"
		}

		*/		

* Indicadores incosistentes para Barbados, Bahamas y Surinam que por primera vez tiene datos en 2017
		replace Valor=. if Indicador == "tasa_terminacion" & (Pais == "BRB" | Pais == "BHS" )
		


		
* Venezuela: Hubo cambio de encuesta en 2016, la representatividad es poca y el disenio muestral pobre (ENCOVI)
		replace Valor=. if Pais == "VEN" & (Ano =="2016" |  Ano =="2017")

	








