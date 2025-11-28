1. Prix moyen des bières par quartier

SELECT quartier.nom, AVG(prix.prix) AS prix_moyen
FROM prix
JOIN bar ON prix.id_bar = bar.id_bar
JOIN quartier ON bar.id_quartier = quartier.id_quartier
GROUP BY quartier.nom;



2. Bars qui vendent l’IPA la moins chère

   SELECT bar.nom, biere.nom, prix.prix
   FROM prix
   JOIN biere ON prix.id_biere = biere.id_biere
   JOIN bar ON prix.id_bar = bar.id_bar
   WHERE biere.type = 'IPA'
   AND prix.prix = (
   SELECT MIN(prix)
   FROM prix
   JOIN biere ON prix.id_biere = biere.id_biere
   WHERE biere.type = 'IPA'
   );



3. Bières vendues dans au moins 5 bars

SELECT biere.nom, COUNT(prix.id_bar) AS nb_bars
FROM prix
JOIN biere ON prix.id_biere = biere.id_biere
GROUP BY biere.nom
HAVING COUNT(prix.id_bar) >= 5;



4. Bars qui n’ont aucune bière à moins de 6€

SELECT bar.nom
FROM bar
WHERE bar.id_bar NOT IN (
SELECT prix.id_bar
FROM prix
WHERE prix.prix < 6
);


5. Le bar avec le panier moyen le plus élevé

SELECT bar.nom, AVG(prix.prix) AS panier_moyen
FROM prix
JOIN bar ON prix.id_bar = bar.id_bar
GROUP BY bar.nom
ORDER BY panier_moyen DESC
LIMIT 1;
