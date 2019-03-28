# Séance 7 : ODD (1) – Présentation des basiques 

---
## I-Conformance

Comment obtenir un encodage TEI-conformant ? 

1. Le XML doit être bien formé;
2. L’encodage proposé doit pouvoir être validé avec un schéma TEI all;
3. L’encodage doit être conforme au modèle abstrait de la TEI;
4. L’encodage doit faire bon usage de l'espace de nom de la TEI (et des autres espaces de nom si besoin);
5. L’encodage doit être documenté.

--- 

## Les différents types de schémas

- DTD;
- Relax NG;
- Schematron;
- XML schéma;
- ODD "One Document Does it all";
	- Voir les [TEIguidelines](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/USE.html);
	- Voir la [documentation sur les ODD](http://www.tei-c.org/guidelines/customization/getting-started-with-p5-odds/)

---
## Créer son ODD

- À l'aide de [Roma](https://roma.tei-c.org);
- À partir d'un ou de plusieurs fichiers XML.

---

- Manipulation [Roma](http://roma.tei-c.org)
	- Créer une ODD pour décrire un manuscrit;
	- Ouvrir l'ODD dans Oxygen;
	- Grâce à un scénario de configuration, créer un schéma RelaxNG à partir de l'ODD;
	- Appliquer le schéma RelaxNG au fichier XML Eulalie.
---
- Manipulation [Roma](http://roma.tei-c.org)
	- Modifier la classe att.global en supprimant @facs;
	- Ouvrir l'ODD, chercher @facs;
	- Lier la nouvelle ODD à son fichier XML :
		- Transformer l'ODD pour obtenir un schéma relaxNG;
		- Lier le schéma relaxNG au fichier XML.
---
## Organisation des spécifications XML

L’intégralité des spécifications XML est englobée dans un **schemaSpec**

- Les déclarations sont organisées grâce aux éléments suivants (liste non exhaustive)  :
	- **moduleRef** (référence de module) référence un module qui doit être incorporé dans un schéma.
	- **elementSpec** (spécification d’élément) documente la structure, le contenu et l’emploi d’un élément.
	- **classSpec** (spécification de classe) contient des informations de référence pour une classe d’éléments TEI, c’est-à-dire un groupe d’éléments qui figurent ensemble dans des modèles de contenu ou qui partagent un attribut commun, ou qui ont l’un et l’autre.

---
## Documenter son ODD

L’ODD comporte :
- un élément racine TEI ; 
- un teiHeader ;
- un élément text ;

L’élément body peut contenir des div à niveau (div1, div2, etc.)
On peut structurer sa documentation dans une première div1 et placer ses spécifications dans une autre div1.

---

### 1-Les éléments structurants de la documentation

Dans l’introduction (première div1), au sein d’un texte rédigé :

- **specList** (liste de spécification) marque l’endroit où insérer une liste de descriptions dans le texte documentaire ;
- **specDesc** (specification description) indique qu’une description de l’élément particulier ou de la classe particulière doit être incluse à ce point dans un document ;
- **egXML** et **@xmlns="http://www.tei-c.org/ns/Examples** permettent d’insérer des exemples en XML dans sa documentation ;

---

#### Exemple :
```XML
<head>Le fileDesc</head>
<p>Le <gi>fileDesc</gi> comporte lui-même :
<specList>
<specDesc key="titleStmt"/>
[...]
</specList>
Le <gi>sourceDesc</gi> contient toutes les informations nécessaires sur le manuscrit de base, C<hi rend="exp">1</hi><note>Le sigle correspond au manuscrit 412 de la Bibliothèque Nationale de France</note>.</p>
<egXML xmlns="http://www.tei-c.org/ns/Examples">
  <msIdentifier>
  <country>Paris</country>
  <settlement>Bibliothèque nationale de France</settlement>
    [...]
  </msIdentifier>                           
 </egXML>
  ```
 
 ---
 Dans les déclarations d’éléments 
 
- Dans **elementSpec** ou **attDef**.
	- **gloss** (glose) identifie une expression ou un mot utilisé pour fournir une glose ou une définition à quelque autre mot ou expression.
	- **desc** (description) contient une courte description de l’objet documenté par son élément parent, qui comprend son utilisation prévue, son but, ou son application là où c’est approprié.
```XML
<elementSpec ident="lem" mode="change">
 <gloss>Lemme</gloss>
 <desc>Permet de signaler la leçon choisie dans le texte édité.</desc>
 [...]
 </elementSpec>
```
---
### 2- Syntaxe des éléments XML à signaler dans sa documentation

- **att** (attribut) contient le nom d’un attribut apparaissant dans le courant du texte.
- **gi** (identifiant générique) contient le nom d’un élément.
- **tag** (balise) le contenu d’une balise ouvrante ou fermante, avec éventuellement des spécifications d’attributs, mais à l’exclusion des caractères marquant l’ouverture et la fermeture de la balise.
- **val** (valeur) contient une seule valeur d’attribut.

---
Exemple :

Le corpus présente trois cas de figure. Dans le premier cas, la ponctuation originale est supprimée dans l’édition normalisée. L’ajout de l’attribut `<att>`type`</att>` de valeur `<val>`orig`</val>` sur l’élément `<gi>`pc`</gi>` signale que le signe est issu de la ponctuation du manuscrit et qu’il ne doit pas apparaître dans la version normalisée.



