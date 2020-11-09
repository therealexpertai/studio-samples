BRAND REPUTATION _ README FILE

------------------
PÉRIMÈTRE DU PROJET |
------------------

Le projet vise à analyser un ensemble de documents contenant des avis d'utilisateurs et des critiques d'ordinateurs portables et de netbooks. Les documents seront classés selon une taxonomie qui traite des informations concernant :

	- les opinions exprimées par l'utilisateur dans le texte concernant l'appareil (ex : satisfaction, déception, indifférence, etc.)
	- le sentiment global qui émerge du texte et qui peut être positif, négatif, neutre ou un mélange des trois
	
De plus, on extraira des informations sur le produit évalué (marque et modèle).

Les documents choisis dans le cadre de ce projet sont courts pour permettre une meilleure exploration des résultats de catégorisation et d'extraction. Vous êtes libre d'analyser des documents plus longs et de développer davantage le modèle pour élargir ses capacités. Ce module est destiné à vous fournir un point de départ pour montrer une façon d'aborder la réputation de marque avec Expert.AI. Vous pouvez personnaliser ce projet en y ajoutant vos propres catégories et/ou extractions et en y intégrant vos propres règles de catégorisation et d'extraction.

--------
MÉTHODE|
--------

Ce modèle NLU est destiné à identifier la réputation d'une marque en collectant dans le texte l'opinion de l'auteur sur la marque ou le produit évalué / mentionné.

Étant donné que l'avis sur un produit n'est pas toujours entièrement positif ou négatif, les catégories appartenant à la branche "Opinion" de la taxonomie produiront des résultats conformément aux informations trouvées dans le texte, indépendamment de leur nature "positive" ou "négative". En outre, une indication des sentiments positifs, neutres et négatifs sera fournie pour chaque document en fonction de la présence d'opinions et de positions des utilisateurs qui vont clairement dans cette direction (par exemple, le manque de fiabilité générera une étiquette de sentiment négatif).

Ce modèle permet d'analyser les critiques contenant à la fois des facteurs positifs et négatifs, en donnant à l'analyste plus de détails et de cohérence sur les opinions dans le texte et en évitant aussi de discriminer les sentiments avec une approche dichotomique (positive ou négative, sans "nuances de gris"). Cette approche permet aussi de donner plus de visibilité aux termes/formulations spécifiques et aux parties du texte qui génèrent une étiquette d'opinion sur la marque ou le produit.

---------
CONTENU |
---------

Le projet contient la liste de fichiers suivante dans le dossier "rules" :

main.cr
main.jr
config.cr
Marque_et_produit_ETL.cr                                
Deception.cr
Insatisfaction.cr
Indifference.cr
Fiabilite.cr
Satisfaction.cr
Manque de fiabilite.cr
negations.cl


Les trois premiers fichiers sont des fichiers de configuration (description détaillée dans le paragraphe suivant), tandis que le reste des fichiers contient des règles pour les différentes branches de la taxonomie ou pour les champs d'extraction.


------------------------------------------------------
DESCRIPTION DES FICHIERS ET LOGIQUES DE DÉVELOPPEMENT |
------------------------------------------------------

- "main.cr" --> ce fichier permet de gérer et d'importer toutes les autres règles et fichiers de configuration. Il contient seulement des instructions d'IMPORT, aucune règle ni configuration.

- "config.cr" --> le fichier de configuration qui contient les définitions des SECTIONS, SEGMENTS ainsi que les TEMPLATES d'extraction et les FIELDS associés.

- "Marque_et_produit_ETL.cr" --> contient des règles d'extraction pour les templates du projet. Les informations extraites sont le produit évalué (par exemple, le modèle HP D15j56) et la marque. L'extraction de la marque comprend également le transformateur SMARTENTRY, qui est utilisé pour montrer en sortie la forme de base la plus représentative de l'attribut.

- "Deception.cr" --> contient des règles pour la branche "déception". L'utilisateur exprime de la déception s'il écrit à propos de frustration, de problèmes techniques, du service client qui refuse de l'aider ou d'autres situations désagréables.

- "Insatisfaction.cr" --> contient des règles pour la branche "insatisfaction". L'utilisateur exprime de l'insatisfaction si le produit ne répond pas aux exigences attendues ou n'a pas un niveau de qualité décent. L'utilisateur lui donne une mauvaise évaluation et utilise des expressions comme "produit terrible", "mauvaise qualité", etc.

- "Indifference.cr" --> contient des règles pour la branche "indifférence". L'utilisateur exprime de l'indifférence en écrivant que le produit a des performances moyennes, une qualité moyenne sur certains de ses composants ou il répond simplement aux normes sans être ni trop bon ni trop mauvais.

- "Fiabilite.cr" --> contient des règles pour la branche "fiabilité". L'utilisateur dit que le produit est fiable, fonctionne correctement sans ralentissement ni autres problèmes.

- "Satisfaction.cr" --> contient des règles pour la branche "satisfaction". L'utilisateur exprime de la satisfaction pour le produit en énumérant tous les aspects positifs de l'appareil, de la qualité des matériaux à la performance globale. L'utilisateur, souvent après avoir essayé différentes fonctionnalités pendant un certain temps, déclare aussi que l'appareil répond aux normes qu'il recherchait.
   
- "Manque de fiabilite.cr" --> contient des règles pour la branche "manque de fiabilité". L'utilisateur exprime le manque de fiabilité du produit principalement en déclarant qu'il lui était impossible d'effectuer certaines tâches en raison de pannes et d'erreurs. Parfois il fait référence à des dommages, au matériel ou programmes manquants ou à d'autres types de composants corrompus / défectueux.

- "main.jr" --> ce fichier est utilisé pour effectuer différents types d'opérations pour le pré et le post-traitement des documents. Les fonctions qui peuvent être activées dans le main.jr sont :

	ONPREPARE : modifie le texte avant l'analyse sémantique et l'application des règles
	ONTAGGER : applique des étiquettes (tags) à certaines entités pour améliorer la désambiguïsation
	ONFINALIZE : modifie la sortie standard du json 
	ONCATEGORIZER : applique des logiques de post-traitement au module de catégorisation
	
Dans le projet, la fonction ONCATEGORIZER est utilisée pour effectuer les actions suivantes :

	function onCategorizer() {
		var RESULTS = CLONE(ALL);

		var OPINION = SET(["01.01", "01.02", "01.03", "01.04", "01.05", "01.06"])
		--> un set OPINION est créé et contient toutes les catégories de la branche Opinion

		var OPINION_EXIST = INTERSECTION (OPINION, RESULTS)
		--> ce set contient les catégories d'OPINION qui apparaissent dans les résultats

		var POSITIV = SET(["01.01", "01.05"])
		var NEGATIV = SET(["01.02", "01.03", "01.04"])
		var NEUTRAL = SET(["01.06"])
		--> ces sets contiennent des opinions positives / négatives / neutres

		var POSITIV_EXIST = INTERSECTION(POSITIV,RESULTS)
		var NEGATIV_EXIST = INTERSECTION(NEGATIV,RESULTS)
		var NEUTRAL_EXIST = INTERSECTION(NEUTRAL,RESULTS)
		--> les sets d'intersection permettent de recueillir des opinions positives / négatives / neutres lorsqu'elles apparaissent dans les résultats

		if(DIMENSIONS(POSITIV_EXIST, ">=",1))
		{
            RESULTS = INSERT(RESULTS, "02.01")
		}
		--> si au moins une des catégories contenues dans le set positif apparaît dans les résultats, alors la catégorie "Positif" de la branche Sentiment est automatiquement insérée. La même opération est répétée pour le set négatif et le neutre (ci-dessous)

		if(DIMENSIONS(NEGATIV_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.02")
		}

		if(DIMENSIONS(NEUTRAL_EXIST, ">=",1))
		{
			RESULTS = INSERT(RESULTS, "02.03")
		}

		WINNERS = RESULTS; --> ce seront les résultats gagnants, c'est-à-dire la sortie finale.

