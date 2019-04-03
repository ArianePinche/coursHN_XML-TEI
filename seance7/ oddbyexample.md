# Tutoriel Oddbyexample


- Mise en place du scénario
	- Configurer un scénario de transformation (CTRL+MAJ+C ou menu Document/Transformation/Configurer...)
	- Créer un nouveau scénario : XML transformation with XSLT;
	- Renseigner le chemin de l'XSL
		- `${frameworks}/tei/xml/tei/stylesheet/tools/oddbyexample.xsl`;
	- Sélectionner processeur Saxon 9.xX
		- Options avancées, template (-it) : main;
		- Paramètres : corpus ${cfdu} (i.e. répertoire courant)
	- Configurer la sortie (onglet Sortie) : définir un nom et un emplacement pour la future ODD.