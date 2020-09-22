/*====================================================================
project:       Prueba1 - Circas para el promedio ALC plataforma CIMA
			   Indicadores de cobertura y eficiencia
Author:        Angela Lopez 
Dependencies:  SCL/EDU - IDB 
----------------------------------------------------------------------
Creation Date:    04 Sep 2018 - 11:47:53
Modification Date:   
Do-file version:    01
References:          
Output:             Para incluir en el do maestro de CIMA
====================================================================*/

*Circa 2006
	if "`ano'" == "2006" { 	
				if "`pais'" == "ARG" local year 2006
				if "`pais'" == "BHS" local year 2006
				if "`pais'" == "BRB" local year 2006
				if "`pais'" == "BLZ" local year 2006
				if "`pais'" == "BOL" local year 2006
				if "`pais'" == "BRA" local year 2006
				if "`pais'" == "CHL" local year 2006 
				if "`pais'" == "COL" local year 2006
				if "`pais'" == "CRI" local year 2006
				if "`pais'" == "ECU" local year 2006
				if "`pais'" == "SLV" local year 2006
				if "`pais'" == "GTM" local year 2010 //
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2006 //
				if "`pais'" == "HND" local year 2006
				if "`pais'" == "JAM" local year 2006
				if "`pais'" == "MEX" local year 2006
				if "`pais'" == "NIC" local year 2009 //
				if "`pais'" == "PAN" local year 2006
				if "`pais'" == "PRY" local year 2006 //
				if "`pais'" == "PER" local year 2006
				if "`pais'" == "DOM" local year 2006
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2006
				if "`pais'" == "URY" local year 2006
				if "`pais'" == "VEN" local year 2006
		}		


*Circa 2007
	if "`ano'" == "2007" { 	
				if "`pais'" == "ARG" local year 2007
				if "`pais'" == "BHS" local year 2007
				if "`pais'" == "BRB" local year 2007
				if "`pais'" == "BLZ" local year 2007
				if "`pais'" == "BOL" local year 2007
				if "`pais'" == "BRA" local year 2007
				
				if "`pais'" == "CHL" local year 2006 /* Se reemplazará el dato 2007 (.) por el de 2006 período más cercano para el cálculo del promedio ALC*/
				
				if "`pais'" == "COL" local year 2007
				if "`pais'" == "CRI" local year 2007
				if "`pais'" == "ECU" local year 2007
				if "`pais'" == "SLV" local year 2007
				if "`pais'" == "GTM" local year 2010 //
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2007
				if "`pais'" == "HND" local year 2006 //
				if "`pais'" == "JAM" local year 2006 //
				
				if "`pais'" == "MEX" local year 2006  /* Se reemplazará el dato (.) por el promedio de los dos datos más cercyear 2006 y 2008 para el cálculo del promedio ALC*/
				
			 	if "`pais'" == "NIC" local year 2009 //
				if "`pais'" == "PAN" local year 2007
				if "`pais'" == "PRY" local year 2007
				if "`pais'" == "PER" local year 2007
				if "`pais'" == "DOM" local year 2007
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2007
				if "`pais'" == "URY" local year 2006 //
				if "`pais'" == "VEN" local year 2007
		}		
				
*Circa 2008

		if "`ano'" == "2008" { 	
				if "`pais'" == "ARG" local year 2008
				if "`pais'" == "BHS" local year 2008
				if "`pais'" == "BRB" local year 2008
				if "`pais'" == "BLZ" local year 2008
				if "`pais'" == "BOL" local year 2008
				if "`pais'" == "BRA" local year 2008
				
				if "`pais'" == "CHL" local year 2006 /* Se reemplazará el dato 2008 (.) por el de 2006 período más cercano para el cálculo del promedio ALC*/
				
				if "`pais'" == "COL" local year 2008
				if "`pais'" == "CRI" local year 2008
				if "`pais'" == "ECU" local year 2008
				if "`pais'" == "SLV" local year 2008
				if "`pais'" == "GTM" local year 2010
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2008
				if "`pais'" == "HND" local year 2008
				if "`pais'" == "JAM" local year 2008
				if "`pais'" == "MEX" local year 2008
				if "`pais'" == "NIC" local year 2009
				if "`pais'" == "PAN" local year 2008
				if "`pais'" == "PRY" local year 2008
				if "`pais'" == "PER" local year 2008
				if "`pais'" == "DOM" local year 2008
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2008
				if "`pais'" == "URY" local year 2008
				if "`pais'" == "VEN" local year 2008
		}
*Circa 2009

		if "`ano'" == "2009" { 		
				if "`pais'" == "ARG" local year 2009
				if "`pais'" == "BHS" local year 2009
				if "`pais'" == "BRB" local year 2009
				if "`pais'" == "BLZ" local year 2009
				if "`pais'" == "BOL" local year 2009
				if "`pais'" == "BRA" local year 2009
				
				if "`pais'" == "CHL" local year 2006 /* Se reemplazará el dato (.) por el del promedio 2006 y 2011 períodos más cercyear para el cálculo del promedio ALC*/
				
				if "`pais'" == "COL" local year 2009
				if "`pais'" == "CRI" local year 2009
				if "`pais'" == "ECU" local year 2009
				if "`pais'" == "SLV" local year 2009
				if "`pais'" == "GTM" local year 2010 //
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2009
				if "`pais'" == "HND" local year 2009
				if "`pais'" == "JAM" local year 2009 //
				if "`pais'" == "MEX" local year 2008  /* Se reemplazará el dato (.) por el del promedio 2008 y 2010 períodos más cercyear para el cálculo del promedio ALC*/
				if "`pais'" == "NIC" local year 2009
				if "`pais'" == "PAN" local year 2009
				if "`pais'" == "PRY" local year 2009
				if "`pais'" == "PER" local year 2009
				if "`pais'" == "DOM" local year 2009
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2009
				if "`pais'" == "URY" local year 2009
				if "`pais'" == "VEN" local year 2009
		}		
*Circa 2010

		if "`ano'" == "2010" { 				
				if "`pais'" == "ARG" local year 2010
				if "`pais'" == "BHS" local year 2010
				if "`pais'" == "BRB" local year 2010
				if "`pais'" == "BLZ" local year 2010
				if "`pais'" == "BOL" local year 2009 
				if "`pais'" == "BRA" local year 2009 
				
				if "`pais'" == "CHL" local year 2006  /* Se reemplazará el dato (.) por el del promedio 2006 y 2011 períodos más cercyear para el cálculo del promedio ALC*/
				
				if "`pais'" == "COL" local year 2010
				if "`pais'" == "CRI" local year 2010
				if "`pais'" == "ECU" local year 2010
				if "`pais'" == "SLV" local year 2010
				if "`pais'" == "GTM" local year 2010
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2010
				if "`pais'" == "HND" local year 2010
				if "`pais'" == "JAM" local year 2010
				if "`pais'" == "MEX" local year 2010
				if "`pais'" == "NIC" local year 2010
				if "`pais'" == "PAN" local year 2010
				if "`pais'" == "PRY" local year 2010
				if "`pais'" == "PER" local year 2010
				if "`pais'" == "DOM" local year 2010
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2010
				if "`pais'" == "URY" local year 2010
				if "`pais'" == "VEN" local year 2010
		}
 *Circa 2011
		if "`ano'" == "2011" { 	
				if "`pais'" == "ARG" local year 2011
				if "`pais'" == "BHS" local year 2011
				if "`pais'" == "BRB" local year 2011
				if "`pais'" == "BLZ" local year 2011
				if "`pais'" == "BOL" local year 2011
				if "`pais'" == "BRA" local year 2011
				if "`pais'" == "CHL" local year 2011 
				if "`pais'" == "COL" local year 2011
				if "`pais'" == "CRI" local year 2011
				if "`pais'" == "ECU" local year 2011
				if "`pais'" == "SLV" local year 2011
				if "`pais'" == "GTM" local year 2011
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2011
				if "`pais'" == "HND" local year 2011
				if "`pais'" == "JAM" local year 2010
				if "`pais'" == "MEX" local year 2010 
				if "`pais'" == "NIC" local year 2011
				if "`pais'" == "PAN" local year 2011
				if "`pais'" == "PRY" local year 2011
				if "`pais'" == "PER" local year 2011
				if "`pais'" == "DOM" local year 2011
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2011
				if "`pais'" == "URY" local year 2011
				if "`pais'" == "VEN" local year 2011
		}	
		
*Circa 2012
		if "`ano'" == "2012" { 		
				if "`pais'" == "ARG" local year 2012
				if "`pais'" == "BHS" local year 2012
				if "`pais'" == "BRB" local year 2012
				if "`pais'" == "BLZ" local year 2012
				if "`pais'" == "BOL" local year 2011
				if "`pais'" == "BRA" local year 2012
				if "`pais'" == "CHL" local year 2011 
				if "`pais'" == "COL" local year 2012
				if "`pais'" == "CRI" local year 2012
				if "`pais'" == "ECU" local year 2012
				if "`pais'" == "SLV" local year 2012
				if "`pais'" == "GTM" local year 2012
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2012
				if "`pais'" == "HND" local year 2012
				if "`pais'" == "JAM" local year 2012
				if "`pais'" == "MEX" local year 2012
				if "`pais'" == "NIC" local year 2012
				if "`pais'" == "PAN" local year 2012
				if "`pais'" == "PRY" local year 2012
				if "`pais'" == "PER" local year 2012
				if "`pais'" == "DOM" local year 2012
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2012
				if "`pais'" == "URY" local year 2012
				if "`pais'" == "VEN" local year 2012
		}
				
*Circa 2013
		if "`ano'" == "2013" { 	
				if "`pais'" == "ARG" local year 2013
				if "`pais'" == "BHS" local year 2013
				if "`pais'" == "BRB" local year 2013
				if "`pais'" == "BLZ" local year 2013
				if "`pais'" == "BOL" local year 2013
				if "`pais'" == "BRA" local year 2013
				if "`pais'" == "CHL" local year 2013
				if "`pais'" == "COL" local year 2013
				if "`pais'" == "CRI" local year 2013
				if "`pais'" == "ECU" local year 2013
				if "`pais'" == "SLV" local year 2013
				if "`pais'" == "GTM" local year 2013 
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2013
				if "`pais'" == "HND" local year 2013 //
				if "`pais'" == "JAM" local year 2013
				if "`pais'" == "MEX" local year 2012 
				if "`pais'" == "NIC" local year 2012 
				if "`pais'" == "PAN" local year 2013
				if "`pais'" == "PRY" local year 2013
				if "`pais'" == "PER" local year 2013
				if "`pais'" == "DOM" local year 2013
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2013
				if "`pais'" == "URY" local year 2013
				if "`pais'" == "VEN" local year 2013
		}	
*Circa 2014
		if "`ano'" == "2014" { 	
				if "`pais'" == "ARG" local year 2014
				if "`pais'" == "BHS" local year 2014
				if "`pais'" == "BRB" local year 2014
				if "`pais'" == "BLZ" local year 2014
				if "`pais'" == "BOL" local year 2014
				if "`pais'" == "BRA" local year 2014
				if "`pais'" == "CHL" local year 2013
				if "`pais'" == "COL" local year 2014
				if "`pais'" == "CRI" local year 2014
				if "`pais'" == "ECU" local year 2014
				if "`pais'" == "SLV" local year 2014
				if "`pais'" == "GTM" local year 2014
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2014
				if "`pais'" == "HND" local year 2014
				if "`pais'" == "JAM" local year 2014
				if "`pais'" == "MEX" local year 2014
				if "`pais'" == "NIC" local year 2014
				if "`pais'" == "PAN" local year 2014
				if "`pais'" == "PRY" local year 2014
				if "`pais'" == "PER" local year 2014
				if "`pais'" == "DOM" local year 2014
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2014
				if "`pais'" == "URY" local year 2014
				if "`pais'" == "VEN" local year 2014
		}
*Circa 2015
			if "`ano'" == "2015" { 	
				if "`pais'" == "ARG" local year 2015 /**plas qeuitar*/
				if "`pais'" == "BHS" local year 2015
				if "`pais'" == "BRB" local year 2015
				if "`pais'" == "BLZ" local year 2015
				if "`pais'" == "BOL" local year 2015
				if "`pais'" == "BRA" local year 2015
				if "`pais'" == "CHL" local year 2015
				if "`pais'" == "COL" local year 2015
				if "`pais'" == "CRI" local year 2015
				if "`pais'" == "ECU" local year 2015
				if "`pais'" == "SLV" local year 2015
				if "`pais'" == "GTM" local year 2015
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2015
				if "`pais'" == "HND" local year 2015
				if "`pais'" == "JAM" local year 2014 //
				if "`pais'" == "MEX" local year 2014
				if "`pais'" == "NIC" local year 2014 
				if "`pais'" == "PAN" local year 2015
				if "`pais'" == "PRY" local year 2015
				if "`pais'" == "PER" local year 2015
				if "`pais'" == "DOM" local year 2015
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2015
				if "`pais'" == "URY" local year 2015
				if "`pais'" == "VEN" local year 2015
		}		
*Circa 2016
		if "`ano'" == "2016" { 		
				if "`pais'" == "ARG" local year 2016
				if "`pais'" == "BHS" local year 2016
				if "`pais'" == "BRB" local year 2015
				if "`pais'" == "BLZ" local year 2016
				if "`pais'" == "BOL" local year 2016
				if "`pais'" == "BRA" local year 2016  // 05/20/2019
				if "`pais'" == "CHL" local year 2015  
				if "`pais'" == "COL" local year 2016
				if "`pais'" == "CRI" local year 2016
				if "`pais'" == "ECU" local year 2016
				if "`pais'" == "SLV" local year 2016
				if "`pais'" == "GTM" local year 2016
				if "`pais'" == "GUY" local year 2017 // 052119
				if "`pais'" == "HTI" local year 2016
				if "`pais'" == "HND" local year 2016
				if "`pais'" == "JAM" local year 2014
				if "`pais'" == "MEX" local year 2016
				if "`pais'" == "NIC" local year 2014 
				if "`pais'" == "PAN" local year 2016
				if "`pais'" == "PRY" local year 2016
				if "`pais'" == "PER" local year 2016
				if "`pais'" == "DOM" local year 2016
				if "`pais'" == "SUR" local year 2017 // 052119
				if "`pais'" == "TTO" local year 2016
				if "`pais'" == "URY" local year 2016
				if "`pais'" == "VEN" local year 2016
		}
				
*Circa 2017
	if "`ano'" == "2017" { 		
				if "`pais'" == "ARG" local year 2017
				if "`pais'" == "BHS" local year 2017
				if "`pais'" == "BRB" local year 2015
				if "`pais'" == "BLZ" local year 2017
				if "`pais'" == "BOL" local year 2017
				if "`pais'" == "BRA" local year 2017 //05/20/2019
				if "`pais'" == "CHL" local year 2017 //05/20/2019
				if "`pais'" == "COL" local year 2017
				if "`pais'" == "CRI" local year 2017
				if "`pais'" == "ECU" local year 2017
				if "`pais'" == "SLV" local year 2017
				if "`pais'" == "GTM" local year 2017
				if "`pais'" == "GUY" local year 2017
				if "`pais'" == "HTI" local year 2017
				if "`pais'" == "HND" local year 2017
				if "`pais'" == "JAM" local year 2014
				if "`pais'" == "MEX" local year 2016
				if "`pais'" == "NIC" local year 2014 
				if "`pais'" == "PAN" local year 2017
				if "`pais'" == "PRY" local year 2017
				if "`pais'" == "PER" local year 2017
				if "`pais'" == "DOM" local year 2017
				if "`pais'" == "SUR" local year 2017
				if "`pais'" == "TTO" local year 2017
				if "`pais'" == "URY" local year 2017
				if "`pais'" == "VEN" local year 2017
	}

*Circa 2018
	if "`ano'" == "2018" { 		
				if "`pais'" == "ARG" local year 2018
				if "`pais'" == "BHS" local year 2018
				if "`pais'" == "BRB" local year 2015
				if "`pais'" == "BLZ" local year 2018
				if "`pais'" == "BOL" local year 2018
				if "`pais'" == "BRA" local year 2018 
				if "`pais'" == "CHL" local year 2017 
				if "`pais'" == "COL" local year 2018
				if "`pais'" == "CRI" local year 2018
				if "`pais'" == "ECU" local year 2018
				if "`pais'" == "SLV" local year 2018
				if "`pais'" == "GTM" local year 2018
				if "`pais'" == "GUY" local year 2017
				if "`pais'" == "HTI" local year 2017
				if "`pais'" == "HND" local year 2018
				if "`pais'" == "JAM" local year 2014
				if "`pais'" == "MEX" local year 2018 //05/20/2019
				if "`pais'" == "NIC" local year 2014 
				if "`pais'" == "PAN" local year 2017 
				if "`pais'" == "PRY" local year 2018
				if "`pais'" == "PER" local year 2018
				if "`pais'" == "DOM" local year 2017
				if "`pais'" == "SUR" local year 2017
				if "`pais'" == "TTO" local year 2017
				if "`pais'" == "URY" local year 2018
				if "`pais'" == "VEN" local year 2018
	}
