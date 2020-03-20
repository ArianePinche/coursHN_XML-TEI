# Séance 7 : ODD (1) – Initiation 

---
## Conformance

Comment obtenir un encodage TEI-conformant ? 

1. Le XML doit être bien formé;
2. L’encodage proposé doit pouvoir être validé avec un schéma TEI all;
3. L’encodage doit être conforme au modèle abstrait de la TEI;
4. L’encodage doit faire bon usage de l'espace de nom de la TEI (et des autres espaces de nom si besoin);
5. L’encodage doit être documenté.

La notion de *TEI conformance* n’a pas d’autre but que d’aider à la description d’un fichier XML pour faciliter l’échange de données, l’utilisation d’outils ou l’archivage. Elle n’est en rien liée à la qualité scientifique du projet.

--- 

## Les différents types de schémas

### DTD
- permet la création d’éléments, de sous-éléments, d’attributs, d’entités
- pas de documentation du schéma directement dans le fichier
- pas de typage précis du contenu des éléments (chaîne de caractères de texte, nombre entier, etc.)
- pas de gestion des espaces de nom 
- pas en XML
```xml
<!ELEMENT texte (chapitre+)>
<!ELEMENT chapter (title?, paragraph+)>
<!ELEMENT titre (#PCDATA)>
<!ELEMENT paragraphe (#PCDATA)>
<!ATTLIST chapter n CDATA #REQUIRED >
```
---
### XML schéma

- permet de typer les données
- permet de mettre en place une séquence d’éléments
- XML Schema est lui-même un document XML
- pas de documentation du schéma directement dans le fichier
```XML
<xsd:element name="paragraph" type="xsd:string" />
<xsd:element name="title" type="xsd:string" />
<xsd:element name="n" type="xsd:int" />
```
---
### Relax NG
- permet de typer les données
- permet de mettre en place une séquence d’éléments
- peut créer des contraintes d'enchaînement très précises grâce à l'intégration du langage **schematron**
- supporte XML namespaces
- écrit en syntaxe XML
- compatible avec XML schéma
- plus simple que XML schéma

---
- peut s'appuyer sur les modules et les macros de la TEI
- pas de documentation du schéma directement dans le fichier


```XML
<define name="model.divPart">
      <choice>
         <ref name="model.lLike"/>
         <ref name="model.pLike"/>
         <ref name="lg"/>
      </choice>
   </define>
```

---
### ODD "One Document Does it all"

ODD signifie « One Document Does it all ». C’est un fichier TEI XML-conformant qui permet de spécifier un encodage TEI pour personnaliser un usage de la TEI P5.

-  éléments pour la documentation intégrée au fichier
-  possibilité de définir précisément le nombre d’occurrences d’un élément, ainsi que des séquences
-  possibilité de typer les données d’un élément
-  supporte des espaces de noms
-  peut d’appuyer sur le schéma tei_All et sa structure en modules et macros.
-  intégralement en syntaxe XML
-  autorise l’insertion en son sein d’autres langages de schéma comme RelaxNG ou schematron pour aller encore plus loin dans la finesse de spécification. 

---

À partir d'un fichier ODD, on peut générer le schéma RelaxNG qu'on liera à son projet XML, ainsi qu'une documentation HTML (voir PDF, .docx, .odt etc.) à l'image des teiGuidelines 

Voir : 
TEIguidelines : <http://www.tei-c.org/release/doc/tei-p5-doc/en/html/USE.html>
ODD : <http://www.tei-c.org/guidelines/customization/getting-started-with-p5-odds/>

---
## Créer son ODD

On peut créer de différentes manières une ODD. On peut la rédiger à partir de rien ce qui peut être très chronophage. Pour cela, on peut s'aider de l'outil en ligne [Roma](https://roma.tei-c.org) (voir la suite + les vidéos des manipulations) ou bien la créer à partir d'un ou de plusieurs fichiers XML (voir séance 8).

Les ODD ainsi produites s’appuient sur la structure du schéma TEI_all et de ses modules qu’on a évoqués dans le cours sur les *TEIguidelines*. 

---

N. B. L'ensemble des manipulations ci-dessous sont dans les différentes vidéos de démonstration de Roma. Reproduisez les manipulations sur votre ordinateur afin de vous familiariser avec l'outil. 

Pour les scénarios de transformation, votre installation de Oxygen n'a peut-être pas tous les add-on de la TEI, suivez la première slide de la séance 8 pour l'installation et la mise à jour des add-ons liés à TEI.


## Structurer son ODD

- À l'aide des [modules TEI](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/ST.html#STMA); 

	- Manipulation [Roma](http://roma.tei-c.org) 1
		- Créer une ODD pour décrire une pièce de théâtre;
		- Appliquer le schéma au fichier XML de misanthropeTEI.xml.
---
- À l'aide des [classes TEI](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/REF-CLASSES-ATTS.html);  
	
	- Manipulation [Roma](http://roma.tei-c.org) 2
		- Modifier la classe att.global en supprimant @n;
		- Ouvrir l'ODD, chercher @n.
		- Appliquer le schéma au fichier XML de misanthropeTEI.xml.
---
- Au niveau d'un élément  
	
	- Manipulation [Roma](http://roma.tei-c.org) 3
		- Supprimer l'élément speaker
		- Ouvrir l'ODD, chercher speaker.
		- Appliquer le schéma au fichier XML de misanthropeTEI.xml.
---
- Au niveau d'un attribut
	
    - Manipulation [Roma](http://roma.tei-c.org) 4
		- Contraindre les valeurs de l'attribut type sur les div dans une liste fermée
		- Rendre l'attribut obligatoire
		- Ouvrir l'ODD, chercher @type.
		- Appliquer le schéma au fichier XML de misanthropeTEI.xml. 
---
Exercice

À l'aide de Roma, créer une ODD pour la séquence de sainte Eulalie.
Attention, les nouveaux modules à utiliser doivent être spécifiques à la transcription d'un texte à partir d'un document source. 

N'hésitez à pas à reprendre la correction proposée lors de la séance 5 et à vérifier à quels modules appartiennent les différents éléments dont vous avez besoin.

Votre schéma ne sera pas le bon du premier coup, il est normal de l'améliorer en plusieurs étapes, explorez le logiciel et ses fonctionnalités.

N'hésitez pas à envoyer vos questions par mail, si vous avez des problèmes de manipulation.



