# Séance 8 : ODD (2) 
---
## Personnalisation du schéma

Pour personnaliser son schéma, il existe 4 manipulations principales :
- Ajouter des éléments ; 
- Supprimer des éléments ;
- Changer des éléments ;
- Personnaliser les attributs et les valeurs d’attribut d’un élément.
---
### Suppression d'un élément

1- Suppression simple d'un élément avec @mode="delete"
	- `<elementSpec ident="head" mode="delete"/>`
2- Suppression d'un élément ou une classe dans un module avec  @exclude
	- `<moduleRef key="textcrit" except="rdgGrp"/>`
3- Non insertion dans un module ou une classe avec @include
	- `<moduleRef key="textcrit" include="app lem rdg"/>`

---

### Modification d'un élément

Modification d'un élément avec @mode="change"

```XML
<elementSpec ident="lg" mode="change">
     <attList>
         <attDef ident="part" mode="delete"/>
         <attDef ident="type" mode="change">
            <valList mode="add" type="closed">
                <valItem ident="cantilene"/>
             </valList>
           </attDef>
       </attList>
</elementSpec>
```

- Modifier dans l'ODD du texte de sainte Eulalie l'élément `<l>`en lui ajoutant un attribut "n" obligatoire.

---
### Définir les modalités d’apparition d’un élément

La règle définissant une séquence apparaît directement en dessus de la balise ouvrante de l’**elementSpec** dans un élément **content**.

La séquence est contenue dans un élément **sequence** avec un attribut **preserveOrder** qui permet de spécifier si l’ordre de déclaration des éléments de la séquence est signifiant.

Chaque élément est appelé à l’aide d’un **elementRef** et d’un attribut **key** qui permet de donner le nom de l’élément. On peut également définir les modalités d’apparition des éléments de la séquence à l’aide des attributs **minOccurs** et **maxOccurs**.

---
#### Exemple

```XML 
<elementSpec ident="div1" mode="change">
   <content>
      <sequence preserveOrder="true">
         <elementRef key="head" minOccurs="1" maxOccurs="1"/>
		 <elementRef key="p" minOccurs="1" maxOccurs="unbounded"/>
          <elementRef key="div2" minOccurs="0" maxOccurs="unbounded"/>
        </sequence>
   </content>
</elementSpec>
```

NB : Pour autoriser du texte comme contenu, on peut ajouter dans la séquence : `<textNode/>`

---
Il est également possible de raffiner ses séquences avec l’élément `<alternate>`
*Exemple : définition du contenu de `<choice>` :*
 
 ```XML
 <alternate>
  <sequence>
   <elementRef key="sic"/>
   <elementRef key="corr"/>
  </sequence>
  <sequence>
   <elementRef key="orig"/>
   <elementRef key="reg"/>
  </sequence>
  <sequence>
   <elementRef key="abbr"/>
   <elementRef key="expan"/>
  </sequence>
 </alternate>
```

 
 ---
 
 ## Exercice

Reprendre le fichier XML de Lucain,

**1-Créer la documentation de votre projet**

- Insérer dans votre documentation au moins un exemple ;
- Modifier la documentation d’un élément en réécrivant sa description pour la faire correspondre au projet.

**2-Ajouter des règles à votre XML**
- rendre obligatoire la présence d’un seul `<lem>` ;
- rendre obligatoire la présence d’une ou plusieurs leçons ;
- Générer votre schéma RelaxNG et l’associer à votre fichier XML.

**3-Générer vos guidelines en HTML**