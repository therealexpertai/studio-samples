BRAND REPUTATION _ README FILE

---------------------
Il PROGETTO         |
---------------------

Questo progetto ha l'obiettivo di analizzare testo contenente opinioni e recensioni di utenti su prodotti e brand di tecnologia e dispositivi come laptop, tablet and e netbook. I documenti vengono classificati con una tassonomia che identifica:

	- l'opinione espresxsa dall'utente a proposito del dispositivo o del brand (per esempio soddisfazione, inaffidabilità, indifferenza, ecc.)
	- il sentiment espresso a livello di documento in base all'opinione (espresso in termini di sentiment positivo, negativo e/o neutrale)
	
In aggiunta, il progetto estrae e fonisce informazioni puntuali sul prodotto e il brand riconosciuti nel documento.

----------------
METODO         |
----------------

Questo modello di NLU per il brand reputation è in grado di comprendere ed estrapolare attivamente l'opinione espressa su un brand o un prodotto. L'obiettivo di questo progetto è quindi quello di indentificare ed estrarre prodotti e/o il brand associato e di comprenderne l'opinione o il sentiment dell'utente (autore della recensione o del commento).

Dato che l'opinione che si ha di un prodotto può non essere necessariamente solo positiva o negativa, le categorie appartenenti alla tassonomia dell "opinioni" possono occorrere nello stesso documento a prescindere dalla loro connotazione "positiva" o "negativa". Di conseguenza, il sentiment positivo, negativo e neutrale vengono attribuiti al documento in presenza di opinioni e posizioni dell'utente chiaramente in quella direzione.

Così facendo, è possibile analizzare recensioni che elencano fattori positivi e negativi contemporaneamente dandone visibilità all'analista che può quindi categorizzare i testi in modo organico e affidabile senza ridursi ad un criterio di discriminazione puramente dicotomico (o positivo o negativo). In questo modo è possibile anche dare visibilità dettagliata degli aspetti specifici che hanno generato un'opinione positiva o negativa del brand o del prodotto stesso.

-----------
CONTENUTO  |
-----------

Tra i sorgenti di progetto (cartella rules) troverete::

main.cr
main.jr
config.cr
Brand_e_Prodotto_ETL.cr
Delusione.cr
Insoddisfazione.cr
Intifferenza.cr
Affidabilità.cr
Soddisfazione.cr
Inaffidabilità.cr

I primi tre file contengono configurazioni di progetto (verranno dettagliate nei prossimi paragrafi), mentre gli altri file contengono regole specifiche per le categories della tassonomia di progetto e per gli oggetti di estrazione.



--------------------------------------------------
DESCRIZIONE DEI FILE E DELLE LOGICHE DI PROGETTO |
--------------------------------------------------

- "main.cr" --> questo file serve a gestire le importazioni di tutti i file contenenti le configurazioni e le regole di categorizzazione ed estrazione. Il file contiene solo le dichiarazioni di IMPORT di ogni file.

- "config.cr" --> si tratta del file di configurazione contenente i dettagli sulla struttura delle dezioni del documento (SECTIONS), dei segmenti (SEGMENTS) e le configurazioni degli oggetti di estrazione (TEMPLATES e rispettivi FIELDS)

-  "Brand_e_Prodotto_ETL.cr" --> contiene le regole di estrazione per l'oggetto di estrazione PRODUCT. L'algoritmo finale estrae menzioni del prodotto recensito (per esempio, HP model D15j56) e il brand menzionato. Le regole di estrazione utilizzano la normalizzazione SMARTENTRY per fornire in output la definizione più rappresentativa del brand estratto (per esempio, Hewlett-Packard invece di semplicemente "HP").

- "Delusione.cr" --> contiene le regole sviluppate per la categoria "delusione". L'utente esprime "delusione" riportando per iscritto momenti di frustrazione, impossibilità di risoluzione di problemi, difficoltà con il supporto clienti o altre situazioni spiacevoli.

- "Insoddisfazione.cr" --> contiene regole per la categoria "insoddisfazione". L'utente esprime insoddisfazione quando il prodotto non soddisfa le aspettative in termini, per esempio, di usabilità e/o qualità. L'utente valuta l'oggetto negativamente reputandolo di scarso valore utilizzando espressioni come "prodotto terribile", "qualità scadente" e similari.

- "Indifferenza.cr" --> contiene regole per la categoria "indifferenza". L'utente esprime la sua indifferenza parlando del prodotto con distacco e nessun particolare disprezzo è apprezzamento del prodotto stesso o del brand, mancando di sottolinearne marcatamente pregi e difetti e rimanendo sostanzialmente imparziale.

- "Affidabilità.cr" --> contiene regole per la categoria "affidabilità". L'utente ritiene il prodotto affidabile, perfettamente funzionante e prestante, senza riscontrare rallentamenti o problemi di qualsiasi genere durante l'utilizzo. L'utente è fondamentalmente contendo dell'acquisto e del prodotto stesso in quanto non ha mai dato segnali di cedimento o di scarsa qualità.

- "Soddisfazione.cr" --> contiene regole per la categoria "soddisfazione". L'utente esprime soddisfazione per il brand o del prodotto stesso esprimendo un'opinione pienamente positiva ed elencando tutte pe proprietà positive del prodotto: dalla qualità dei materiali fino alla performance del dispositivo. L'utente fa chiara menzione della sua soddisfazione, l'affiliazione o vicinanza al brand o la capacità del prodotto di raggiungere i propri standard.

- "Inaffidabilità.cr" --> contiene regole per la categoria "inaffidabilità". L'utente esprime la propria opinione di inaffidabilità a causa dell'impossibilità di utilizzo o specifici errori, falle o problemi. In certi casi, l'utente menziona problemi, danni, falle, anomalie, componenti mancanti o problemi col software.

- "main.jr" --> questo file serve per applicare al testo specifiche rielaborazioni prima o dopo l'applicazione degli algoritmi di categorizzazione ed estrazione (per esempio, pre-processing del testo o post-processing dei risultati). Le funzionalità che possono essere attivate nel main.jr sono:

	ONPREPARE:     modifica il testo prima dell'analisi semantica e/o l'applicazione degli algoritmi di categorizzazione ed estrazione
	ONTAGGER:      permette di effetturare piccole modifiche alla disambiguazione e all'analisi semantica
	ONFINALIZE:    permette di elaborare uno stadio di post-processing che agisce sui risultati finali di categorizzazioned ed estrazione
	ONCATEGORIZER: permette di applicare dei criteri di rielaborazione che agiscono sui risultati di categorizzazione
	
In questo progetto è stato utilizzato un modulo di ONCATEGORIZER per applicare i seguenti criteri:

	function onCategorizer() {
		var RESULTS = CLONE(ALL);

		var OPINION = SET(["01.01", "01.02", "01.03", "01.04", "01.05", "01.06"])
		--> un SET "OPINION" viene creato per contenere tutte le categorie (vincenti e non) del ramo omonimo della tassonomia

		var OPINION_EXIST = INTERSECTION (OPINION, RESULTS)
		--> questo set contiene solo le categorie vincenti del ramo OPINION

		var POSITIV = SET(["01.01", "01.05"])
		var NEGATIV = SET(["01.02", "01.03", "01.04"])
		var NEUTRAL = SET(["01.06"])
		--> questi SET vengono creati per includere le categorie con SENTIMENT positivo/neutrale/negativo

		var POSITIV_EXIST = INTERSECTION(POSITIV,OPINION_EXIST)
		var NEGATIV_EXIST = INTERSECTION(NEGATIV,OPINION_EXIST)
		var NEUTRAL_EXIST = INTERSECTION(NEUTRAL,OPINION_EXIST)
		--> l'intersezione dei set coi risultati, permette di crearne uno nuovo con solo le categorie vincenti

		if(DIMENSIONS(POSITIV_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.01")
		}
		--> questa condizione permette di inserire la categoria "Positivo" se tra i risultati compare almeno una categoria di tipo positivo. Lo stesso approccio è stato utilizzato con le categorie e sentiment negativo e neutrale

		if(DIMENSIONS(NEGATIV_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.02")
		}

		if(DIMENSIONS(NEUTRAL_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.03")
		}

		WINNERS = RESULTS; --> con questa funzione si inseriscono i risultati delle reialborazioni precedenti nel set delle categorie vincenti/finali
		

