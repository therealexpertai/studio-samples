BRAND REPUTATION _ README FILE

-------------------
ZIEL DES PROJEKTS |
-------------------

Das Projekt zielt darauf ab, eine Reihe von Dokumenten zu analysieren, die Benutzermeinungen und Bewertungen von Laptops und Netbooks enthalten. Die Dokumente werden anhand einer Taxonomie mit folgenden Informationen klassifiziert:

	- Im Text ausgedrückte Einstellungen der Benutzer in Bezug auf das Gerät wie etwa Zufriedenheit, Enttäuschung, Gleichgültigkeit usw.
	- Die aus dem gesamten Text hervorgehende Grundhaltung: positiv, negativ, neutral oder eine Mischung aus den drei Gefühlen. 
	
Darüber hinaus werden Informationen zum bewerteten Produkt (Marke und Modell) extrahiert.

Die für dieses Projekt verwendeten Dokumente sind kurz, um die Kategorisierungs- und Extraktionsergebnisse leichter zu untersuchen. Natürlich kann man auch längere Dokumente analysieren und das Modell weiterentwickeln, um seine Fähigkeiten zu erweitern. Das Modul soll als Beispiel und Ausgangspunkt für die Anwendung von Expert.ai bei der Untersuchung von Markenreputation dienen. Das Projekt kann durch Hinzufügen eigener Kategorien und Extraktionsziele erweitert werden, die dann durch entsprechende Kategorisierungs- und Extraktionsregeln modelliert werden müssen.


--------
METHODE|
--------
Das NLU-Modell dient zur Identifikation der Reputation einer Marke, indem man aus dem Text Belege über die Meinung des Autors zu der überprüften / erwähnten Marke oder zum Produkt sammelt.

Da die Bewertung eines Produkts nicht immer eindimensional positiv oder negativ ist, werden Kategorien, die zum Zweig "Opinion" der Taxonomie gehören, Ergebnisse auf Basis der im Text gefundenen relevanten Stellen liefern, die sowohl "positiver" als auch "negativer" Natur sein können.
Darüber hinaus wird für jedes Dokument eine positive, neutrale oder negative Grundhaltung ermittelt. Dies geschieht auf Basis von Meinungen und Positionen der Benutzer, die eindeutig in diese Richtung gehen (z.B. bedeutet Unzuverlässigkeit eine negative Haltung).

Dieses Modell ermöglicht die Analyse von Bewertungen, die sowohl positive als auch negative Faktoren enthalten, wodurch ein Analyst die Meinungen im Text detaillierter und konsistenter beurteilen kann. Gleichzeitig wird vermieden, dass die Bewertung durch einen Entweder-Oder-Ansatz modelliert wird (entweder positiv oder negativ, keine "Graustufen"). Der Ansatz hat außerdem den Vorteil, den spezifischen Wortlaut und die Textteile, die ein Meinungsetikett für die Marke oder das Produkt erstellen, besser sichtbar zu machen.


--------
INHALT |
--------

Das Projekt enthält die folgende Liste von Dateien im Ordner "rules"

main.cr
main.jr
config.cr
Brand_and_Product_ETL.cr
Enttaeuschung.cr
Gleichgueltigkeit.cr
Unzufriedenheit.cr
Unzuverlaessigkeit.cr
Zufriedenheit.cr
Zuverlaessigkeit.cr
negation.cl

Die ersten drei Dateien sind Konfigurationsdateien (detaillierte Beschreibung im nächsten Absatz). Die weiteren Dateien enthalten Regeln für die verschiedenen Zweige der Taxonomie oder für die Extraktionsfelder. Die letzte Datei enthält eine Liste von Negationsbegriffen, die in Regeln verwendet werden.

----------------------------------------
DATEIBESCHREIBUNG UND ENTWICKLUNGSLOGIK |
----------------------------------------

- "main.cr" --> Diese Datei wird zum Verwalten und Importieren aller anderen Regeln- und Konfigurationsdateien verwendet. Sie enthält nur IMPORT-Anweisungen, keine Regeln oder Konfigurationsanweisungen.

- "config.cr" --> die Konfigurationsdatei, die die Definition von SECTION, SEGMENT sowie TEMPLATE-Deklarationen mit dazugehöriger FIELD-Liste für die Extraktion enthält

-  "Brand_and_Product_ETL.cr" --> enthält Extraktionsregeln für die Templates des Projekts. Extrahierte Informationen sind das bewertete Produkt (z.B. HP Modell D15j56) und die Marke. Die Markenextraktion enthält auch den SMARTENTRY-Transformator, mit dem in der Ausgabe die repräsentativste Grundform des Attributs angegeben wird.

- "Enttaeuschung.cr" --> enthält Regeln für den Zweig "Enttäuschung". Der Benutzer äußert sich enttäuscht, wenn er über Frustration, falsche Angaben, Mankos redet oder das Produkt zurückschicken will.

- "Unzufriedenheit.cr" --> enthält Regeln für den Zweig "Unzufriedenheit". Der Benutzer äußert sich unzufrieden, wenn das Produkt die erwarteten Anforderungen nicht erfüllt oder kein angemessenes Qualitätsniveau erreicht. Der Benutzer verwendet Ausdrücke wie "nicht wie erwartet", "funktioniert nicht gut" und ähnliches.

- "Gleichgueltigkeit.cr" --> enthält Regeln für den Zweig "Gleichgültigkeit". Der Benutzer drückt Gleichgültigkeit aus durch die Erwähnung von durchschnittlicher Leistung und durchschnittlicher Qualität einiger Komponenten des Produkts oder es einfach nur die Standards erfüllt, ohne besonders gut oder schlecht zu sein. 

- "Zuverlaessigkeit.cr" --> enthält Regeln für den Zweig "Zuverlässigkeit". Der Benutzer gibt an, dass das Produkt zuverlässig ist und gut funktioniert, ohne dass es Schwierigkeiten oder anderen Problemen kommt. Der Benutzer ist mit der Gesamtleistung des Geräts zufrieden.

- "Zufriedenheit.cr" --> enthält Regeln für den Zweig "Zufriedenheit". Der Benutzer drückt seine Zufriedenheit mit dem Produkt aus, indem er alle positiven Aspekte des Geräts auflistet, von der Qualität der Materialien bis zur Gesamtleistung. Der Benutzer kann auch angeben, dass das Gerät empfehlenswert ist.

- "Unzuverlaessigkeit.cr" --> enthält Regeln für den Zweig "Unzuverlässigkeit". Der Benutzer drückt die Unzuverlässigkeit des Produkts und sagt, dass es ihm aufgrund von Fehlern und Irrtümern unmöglich war, einige Aufgaben auszuführen. Manchmal bezieht er sich auch auf Schäden, fehlende Hardware oder Software oder andere Arten von beschädigten / defekten Komponenten.   

- "main.jr" --> Diese Datei wird verwendet, um verschiedene Prozesse für die Vor- und Nachbearbeitung der Dokumente auszuführen. Funktionen, die in der main.jr aktiviert werden können, sind:

	ONPREPARE: Es ändert den Text vor der semantischen Analyse und Anwendung von Regeln
	ONTAGGER: Es wendet Tags auf bestimmte Entitäten an, um die Disambiguation zu verbessern
	ONFINALIZE: Es ändert die standard JSON-Ausgabe
	ONCATEGORIZER: Es wendet Nachbearbeitungslogiken auf das Kategorisierungsmodul an
	
Im Projekt werden mit der Funktion ONCATEGORIZER folgende Aktionen ausgeführt:

	function onCategorizer() {
		var RESULTS = CLONE(ALL);

		var OPINION = SET(["01.01", "01.02", "01.03", "01.04", "01.05", "01.06"])     --> Es wird ein SET erstellt, das alle Kategorien von Zwang Opinion enthält

		var OPINION_EXIST = INTERSECTION (OPINION, RESULTS)							  --> Dieses SET enthält die Kategorien von OPINION, die in den Ergebnissen 
																						  angezeigt werden
		RESULTS = CLEAN(OPINION_EXIST, 4);											  --> Ergebnisse unter dieser Punktzahl werden eliminiert
		
		var POSITIV = SET(["01.01", "01.05"])										  --> Es wird ein Set mit positiven/negativen/neutralen Kategorien erstellt. 
		var NEGATIV = SET(["01.02", "01.03", "01.04"])
		var NEUTRAL = SET(["01.06"])
		var POSITIV_EXIST = INTERSECTION(POSITIV,RESULTS)						      --> Schnittsets zwischen vorherigen Sets und den Ergebnissen werden
																						  erstellt
		var NEGATIV_EXIST = INTERSECTION(NEGATIV,RESULTS)
		var NEUTRAL_EXIST = INTERSECTION(NEUTRAL,RESULTS)

		if(DIMENSIONS(POSITIV_EXIST, ">=",1))										  --> Wenn mindestens eine der in der positiven Set enthaltenen Kategorien 
		{																			      in den Ergebnissen angezeigt wird, wird automatisch die Kategorie 	
			RESULTS = INSERT(RESULTS, "02.01")											  "Positiv" des Zweigs "Sentiment" eingefügt. Gleiches gilt für negativ
		}																				  und neutral (siehe unter)

		if(DIMENSIONS(NEGATIV_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.02")
		}

		if(DIMENSIONS(NEUTRAL_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.03")
		}

		WINNERS = RESULTS;															--> Dies sind die Gewinnerkategorien, d.h. die endgültige Ausgabe.
		
