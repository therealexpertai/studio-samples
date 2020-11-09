BRAND REPUTATION _ README FILE

----------------------
OBJETIVO DEL PROYECTO |
----------------------

El proyecto tiene como objetivo analizar un conjunto de documentos con opiniones de usuarios y reseñas de portátiles y netbooks. Los documentos se clasificarán según una taxonomía que tratará la información relativa a:

	- los sentimientos expresados por el usuario en el texto con respecto al dispositivo (por ejemplo: satisfacción, decepción, indiferencia, etc.)
	- el sentimiento global que surge de todo el texto, que puede ser positivo, negativo, neutral o una mezcla de los tres
	
Además, se extraerá información sobre el producto reseñado (marca y modelo).

Los documentos elegidos para este proyecto son breves para poder explorar mejor los resultados de categorización y extracción. También es posible analizar documentos más largos y desarrollar el módulo para ampliar sus capacidades. Este módulo está diseñado como punto de partida con el que mostrar una forma de abordar la reputación de marca con expert.ai. Asimismo, se puede personalizar el proyecto agregando categorías y extracciones propias, incluso integrarlo con reglas propias de categorización y extracción.

-------
MÉTODO|
-------

Este modelo de NLU está diseñado para identificar la reputación de una marca recopilando evidencias en el texto sobre la opinión del usuario sobre la marca o producto revisado o mencionado.

Dado que la opinión de una persona sobre un producto no siempre es completamente positiva o negativa, las categorías que pertenecen a la rama "Opinion" de la taxonomía generarán resultados coherentes con las evidencias encontradas en el texto, independientemente de su naturaleza "positiva" o "negativa". Además, se proporcionará un sentimiento positivo, neutral y negativo para cada documento en función de la naturaleza de las opiniones de los usuarios encontradas en el texto. De este modo, un comentario que tenga que ver con la falta de confianza, generará una etiqueta de sentimiento negativo.

Este modelo permite analizar reseñas que contienen al mismo tiempo factores positivos y negativos, proporcionando al analista mayor detalle y consistencia sobre las opiniones presentes en el texto, evitando así aquellas con un enfoque binario (positivo o negativo, sin matices de ningún tipo). Este enfoque también permite dar mayor visibilidad a comentarios específicos, así como a las partes del texto que generen una etiqueta de opinión sobre la marca o el producto.

----------
CONTENIDO |
----------

El proyecto contiene la siguiente lista de archivos en la carpeta "rules":

main.cr
main.jr
config.cr
Brand_producto_ETL.cr
Decepcion.cr
Falta de fiabilidad.cr
Fiabilidad.cr
Indiferencia.cr
Insatisfaccion.cr
Satisfaccion.cr
negaciones.cl

Los tres primeros son archivos de configuración (ver siguiente párrafo), mientras que el resto de archivos contienen reglas para las diferentes ramas de la taxonomía o para los campos de extracción. El último archivo es una lista de diferentes tipos de negaciones que se utilizaron en las reglas.


------------------------------------------------
DESCRIPCIÓN DE ARCHIVOS Y LÓGICAS DE DESARROLLO |
------------------------------------------------

- "main.cr" --> este archivo se utiliza para administrar e importar el resto de reglas y archivos de configuración. Solo contiene instrucciones de IMPORT, sin reglas ni configuraciones.

- "config.cr" --> se trata  del archivo de configuración que contiene la definición de SECTIONS, SEGMENTS y también los TEMPLATES de extracción y FIELDS relacionados.

-  "Brand_producto_ETL.cr" --> contiene reglas de extracción para los templates del proyecto. La información extraída son el producto reseñado (p.ej. HP modelo D15j56) y la marca. La extracción de la marca también incluye el transformador SMARTENTRY, que se utiliza para dar en la salida la forma base más representativa del atributo.

- "Decepcion.cr" --> contiene reglas para la rama "decepción". El usuario expresa decepción si escribe sobre frustración, delusión, que el producto no es como esperaba o no está a la altura de sus expectativas.

- "Insatisfaccion.cr" --> contiene reglas para la rama "insatisfacción". El usuario expresa insatisfacción si el producto no cumple con las especificaciones o no alcanza un nivel de calidad decente. El dispositivo muestra problemas inaceptables para el usuario, el cual no recomienda su compra y/o quiere devolver el producto. 

- "Indiferencia.cr" --> contiene reglas para la rama "indiferencia". El usuario expresa indiferencia al escribir que el producto tiene rendimiento normal, la calidad media de algunos de sus componentes o que simplemente cumple con los estándares, sin ser ni demasiado bueno ni demasiado malo.

- "Fiabilidad.cr" --> contiene reglas para la rama "fiabilidad". El usuario afirma que el producto es de confianza o que funciona sin problemas. El usuario está contento con el dispositivo ya que no da problemas en ningún momento y destaca en varias funciones.

- "Satisfaccion.cr" --> contiene reglas para la rama "satisfacción". El usuario expresa satisfacción por el producto enumerando todos los aspectos positivos del dispositivo y recomendando su compra. El usuario afirma que el dispositivo cumple con los estándares que estaba buscando y que valió la pena comprarlo.
  
- "Falta de fiabilidad.cr" --> contiene reglas para la rama "falta de fiabilidad". El usuario manifiesta la falta de confianza en el producto al manifestar, principalmente, que le fue imposible realizar algunas tareas debido a fallos o errores del producto. A veces también puede referirse a daños, hardware o software faltante u otro tipo de componentes dañados o  defectuosos.
 
- "main.jr" --> este archivo se utiliza para realizar diferentes tipos de operaciones de pre- y post-procesamiento de los documentos. Las funciones que se pueden activar en main.jr son:

	ONPREPARE: modifica el texto previamente al análisis semántico y a la aplicación de reglas
	ONTAGGER: aplica etiquetas (tags) a ciertas entidades para mejorar la desambiguación
	ONFINALIZE: modifica el formato estándar del json
	ONCATEGORIZER: aplica lógicas de post-procesamiento al módulo de categorización
	
En el proyecto se utiliza la función ONCATEGORIZER para realizar las siguientes acciones:

	function onCategorizer() {
		var RESULTS = CLONE(ALL);

		var OPINION = SET(["01.01", "01.02", "01.03", "01.04", "01.05", "01.06"])     --> Se crea un set OPINION que contiene todas las categorías de la rama 
																						  Opinion.
		var OPINION_EXIST = INTERSECTION (OPINION, RESULTS)							  --> este set contiene las categorías de OPINION que aparecen en los 
																						  resultados
		RESULTS = CLEAN(OPINION_EXIST, 4);											  --> los resultados por debajo de esta puntuación se eliminan
		
		var POSITIV = SET(["01.01", "01.05"])										  --> Se crea un  set con las categorías que expresan opinión
																						  positiva/negativa/neutral.
																				  
 		var NEGATIV = SET(["01.02", "01.03", "01.04"])
		var NEUTRAL = SET(["01.06"])
		var POSITIV_EXIST = INTERSECTION(POSITIV,RESULTS)						  	  --> se crea un set de intersección entre los set anteriores y los
                                                                                    	  resultados
		var NEGATIV_EXIST = INTERSECTION(NEGATIV,RESULTS)
		var NEUTRAL_EXIST = INTERSECTION(NEUTRAL,RESULTS)

		if(DIMENSIONS(POSITIV_EXIST, ">=",1))										  --> si al menos una de las categorías contenidas en el set POSITIV_EXIST
																						  aparece en los resultados, entonces la categoría "Positivo" de la
																						  rama Sentiment se inserta automáticamente. Lo mismo se hace para negativo y neutral (abajo)
		{																			     	
			RESULTS = INSERT(RESULTS, "02.01")											  
		}

		if(DIMENSIONS(NEGATIV_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.02")
		}

		if(DIMENSIONS(NEUTRAL_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.03")
		}

		WINNERS = RESULTS;															--> estas serán las categorías ganadoras, es decir, el resultado final del
																						análisis del documento.

		
		

