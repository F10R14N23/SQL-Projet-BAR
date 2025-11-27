# Description fonctionnelle
**Projet** : Carte des bars à Dijon + prix des bières  
**Auteur** : TonNom Prénom — Groupe : X

---

## 1. Contexte et objectif
Construire une base de données relationnelle permettant de gérer :
- Les **bars** à Dijon (nom, adresse, quartier)
- Les **bières** (nom, type, degré d'alcool, catégorie)
- Les **prix** des bières par bar
- Les **quartiers** de Dijon

L'objectif est de modéliser les données, créer le schéma SQL, fournir un seed de données conséquent, et écrire des requêtes analytiques.

---

## 2. Entités principales

### Quartier
- **Rôle** : représenter une zone ou un quartier de Dijon (ex : Centre-ville, Montchapet).
- **Attributs importants** : `id_quartier` (PK), `nom` (UNIQUE, NOT NULL).
- **Contraintes** : noms uniques pour éviter la duplication.

### Bar
- **Rôle** : établissement vendant des boissons.
- **Attributs importants** : `id_bar` (PK), `nom` (NOT NULL), `adresse` (NOT NULL), `id_quartier` (FK).
- **Contraintes** : un bar appartient obligatoirement à un quartier.

### Bière
- **Rôle** : boisson (type IPA, lager, stout, etc.).
- **Attributs importants** : `id_biere` (PK), `nom` (NOT NULL), `type` (ex : IPA), `degree_alcool` (NUMERIC, CHECK 0..100), `categorie` (ex : artisanale, industrielle).
- **Contraintes** : degree_alcool doit être réaliste (ex : entre 0 et 100).

### Prix
- **Rôle** : table d'association entre `bar` et `biere` indiquant le prix de vente.
- **Attributs importants** : `id_bar` (FK), `id_biere` (FK), `prix` (NUMERIC, > 0).
- **Contraintes** : PK composite `(id_bar, id_biere)` pour empêcher les doublons; `prix` strictement positif.

---

## 3. Relations et règles métier
- **Quartier — Bar** : 1 quartier contient 0..N bars. Un bar appartient à **1** quartier (relation obligatoire).
- **Bar — Bière** : relation N..N via la table `prix` :
    - Un bar peut vendre 0..N bières.
    - Une bière peut être vendue dans 0..N bars.
- **Règles métier importantes** :
    - Une même bière ne peut pas avoir deux prix différents dans le même bar (PK composite empêche ça).
    - Le `prix` est exprimé en euros, avec 2 décimales.
    - Le `degree_alcool` est exprimé en pourcentage (ex : 5.5).
    - On attend des données cohérentes (ex : un bar situé dans un quartier existant).

---

## 4. Exemples d'usage fonctionnels
- Calculer le prix moyen d'une bière par quartier.
- Lister les bars qui proposent l'IPA la moins chère.
- Identifier les bières présentes dans au moins 5 bars.
- Déterminer les bars sans bière à moins de 6€.
- Trouver le bar avec le panier moyen le plus élevé.

---

## 5. Contraintes techniques / décisions
- Utilisation de PostgreSQL (psql / pgAdmin / Postgres.app).
- Scripts fournis :
    - `schema.sql` (création DDL)
    - `seed.sql` (INSERTs)
    - `queries.md` (requêtes exigées)
- Tous les scripts doivent être **exécutables sans modification** dans l'ordre `schema.sql` puis `seed.sql`.

---
