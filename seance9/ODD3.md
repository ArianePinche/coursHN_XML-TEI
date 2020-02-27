# Séance 9 : ODD (3) – ODD et documentation 

---
## Documenter son ODD

L’ODD comporte :
- un élément racine TEI ; 
- un teiHeader ;
- un élément text ;

L’élément body peut contenir des div à niveau (div1, div2, etc.)
On peut structurer sa documentation dans une première div1 et placer ses spécifications dans une autre div1.

---

L’intégralité des spécifications XML est englobée dans un **schemaSpec**

- Les déclarations sont organisées grâce aux éléments suivants (liste non exhaustive)  :
	- **moduleSpec** (spécification de module) documente la structure, le contenu et les fonctions d’un module.
	- **moduleRef** (référence de module) référence un module qui doit être incorporé dans un schéma.
	- **elementSpec** (spécification d’élément) documente la structure, le contenu et l’emploi d’un élément.
	- **classSpec** (spécification de classe) contient des informations de référence pour une classe d’éléments TEI, c’est-à-dire un groupe d’éléments qui figurent ensemble dans des modèles de contenu ou qui partagent un attribut commun, ou qui ont l’un et l’autre.

---

### 1-Les éléments structurants de la documentation

Dans l’introduction (première div1), au sein d’un texte rédigé :

- **specList** (liste de spécification) marque l’endroit où insérer une liste de descriptions dans le texte documentaire ;
- **specDesc** (specification description) indique qu’une description de l’élément particulier ou de la classe particulière doit être incluse à ce point dans un document ;
- **egXML** et **@xmlns="http://www.tei-c.org/ns/Examples** permettent d’insérer des exemples en XML dans sa documentation ;

---
#### Exemple : 
`<head>`Le fileDesc`</head>`
`<p>`Le `<gi>`fileDesc`</gi>` comporte lui-même :
`<specList>`
`<specDesc key="titleStmt"/>`
[...]
`</specList>`
Le `<gi>`sourceDesc`</gi>` contient toutes les informations nécessaires sur le manuscrit de base, C`<hi rend="exp">`1`</hi>``<note>`Le sigle correspond au manuscrit 412 de la Bibliothèque Nationale de France`</note>`.`</p>`
`<egXML xmlns="http://www.tei-c.org/ns/Examples">`
  `<msIdentifier>`
  `<country>`Paris`</country>`
  `<settlement>`Bibliothèque nationale de France`</settlement>`
                                [...]
 `</egXML>`
 
 ---
 Dans les déclarations d’éléments 
 
- Dans **elementSpec** ou **attDef**.
	**gloss** (glose) identifie une expression ou un mot utilisé pour fournir une glose ou une définition.
	**desc** (description) contient une courte description de l’objet documenté par son élément parent, qui comprend son utilisation prévue, son but, ou son application là où c’est approprié.
`<elementSpec ident="lem" mode="change">`
 `<gloss>Lemme</gloss>`
 `<desc>Permet de signaler la leçon choisie dans le texte édité.</desc>`
 [...]
 `</elementSpec>`

---
### 2- Syntaxe des éléments XML à signaler dans sa documentation

**att** (attribut) contient le nom d’un attribut apparaissant dans le courant du texte.
**gi** (identifiant générique) contient le nom d’un élément.
**tag** (balise) le contenu d’une balise ouvrante ou fermante, avec éventuellement des spécifications d’attributs, mais à l’exclusion des caractères marquant l’ouverture et la fermeture de la balise.
**val** (valeur) contient une seule valeur d’attribut.

---
Exemple :

Le corpus présente trois cas de figure. Dans le premier cas, la ponctuation originale est supprimée dans l’édition normalisée. L’ajout de l’attribut `<att>`type`</att>` de valeur `<val>`orig`</val>` sur l’élément `<gi>`pc`</gi>` signale que le signe est issu de la ponctuation du manuscrit et qu’il ne doit pas apparaître dans la version normalisée.

----
## Exercice 

-  Créer la documentation de l’ODD de Lucain.
	- Insérer dans votre documentation au moins un exemple
	- Modifier la documentation d’un élément en réécrivant sa description pour la faire correspondre au projet.
- Générer vos guidelines en HTML

