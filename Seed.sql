
/*Aide de l'ia pour certaine génération dan la SEED*/

INSERT INTO bar (nom, adresse, id_quartier) VALUES
                                                ('Le Comptoir', '12 rue de la Liberté', 1),          -- Centre‑ville
                                                ('La Bière Rit', '5 avenue Jean Jaurès', 2),        -- Montchapet
                                                ('Chez Marcel', '8 place Darcy', 1),                -- Centre‑ville
                                                ('Le Zinc', '14 rue Musette', 3),                   -- Toison‑d''Or
                                                ('L''Atelier des Bières', '20 boulevard Maréchal Foch', 4), -- Grésilles
                                                ('Bar du Canal', '3 quai des Carrières', 8),        -- Port du Canal
                                                ('Le Saint-Bernard', '7 rue du Faubourg', 5),      -- Fontaine‑d''Ouche
                                                ('Le Bock & Bar', '18 rue Chabot-Charny', 1),      -- Centre‑ville
                                                ('La Chope', '25 avenue Foch', 3),                 -- Toison‑d''Or
                                                ('Le Pub du Parc', '10 rue du Parc', 4),           -- Grésilles
                                                ('Le Brass', '12 rue du Valendons', 9),            -- Valendons
                                                ('Le Malt', '6 place Marcs-d''Or', 10),            -- Marcs‑d''Or
                                                ('Le Keg', '9 rue des Péjoces', 11),               -- Les Péjoces
                                                ('La Pression', '15 rue des Poussots', 12),        -- Les Poussots
                                                ('Bière & Co', '4 rue de Fontaine', 5),            -- Fontaine‑d''Ouche
                                                ('L''Oktober', '22 avenue Montchapet', 2),         -- Montchapet
                                                ('Le Froth', '11 rue Maladière', 6),               -- Maladière‑Drapeau‑Clemenceau
                                                ('Le Houblon', '19 boulevard Bourroches', 7),      -- Bourroches
                                                ('Le Bar à Bulles', '8 quai du Canal', 8),         -- Port du Canal
                                                ('La Taverne', '3 rue Marcs-d''Or', 10);          -- Marcs‑d''Or



INSERT INTO biere (nom, type, degree_alcool, categorie) VALUES
                                                            ('IPA Dijon', 'IPA', 6.5, 'artisanale'),
                                                            ('Blonde du Bourg', 'Blonde', 5.0, 'industrielle'),
                                                            ('Stout Noir', 'Stout', 8.0, 'artisanale'),
                                                            ('Pale Ale des Halles', 'Pale Ale', 5.5, 'artisanale'),
                                                            ('Lager des Ducs', 'Lager', 4.8, 'industrielle'),
                                                            ('Amber Ale Dijon', 'Amber Ale', 5.6, 'artisanale'),
                                                            ('Triple Malts', 'Triple', 9.0, 'artisanale'),
                                                            ('Blanche de Bourgogne', 'Blanche', 5.2, 'industrielle'),
                                                            ('Porter des Grésilles', 'Porter', 6.8, 'artisanale'),
                                                            ('IPA Montchapet', 'IPA', 6.2, 'industrielle'),
                                                            ('Blonde des Poussots', 'Blonde', 5.1, 'artisanale'),
                                                            ('Stout du Canal', 'Stout', 7.5, 'artisanale'),
                                                            ('Lager des Marcs-d''Or', 'Lager', 4.9, 'industrielle'),
                                                            ('Blanche du Parc', 'Blanche', 5.0, 'artisanale'),
                                                            ('Amber des Péjoces', 'Amber Ale', 5.7, 'artisanale'),
                                                            ('IPA du Faubourg', 'IPA', 6.0, 'artisanale'),
                                                            ('Pale Ale du Centre', 'Pale Ale', 5.3, 'industrielle'),
                                                            ('Blonde de l''Atelier', 'Blonde', 5.2, 'industrielle'),
                                                            ('Lager du Bock', 'Lager', 4.7, 'industrielle'),
                                                            ('Triple du Comptoir', 'Triple', 9.5, 'artisanale'),
                                                            ('Porter de la Taverne', 'Porter', 6.9, 'artisanale'),
                                                            ('Blanche du Zinc', 'Blanche', 5.0, 'artisanale'),
                                                            ('Amber du Malt', 'Amber Ale', 5.6, 'artisanale'),
                                                            ('IPA du Brass', 'IPA', 6.3, 'artisanale'),
                                                            ('Blonde du Keg', 'Blonde', 5.0, 'industrielle'),
                                                            ('Stout de la Chope', 'Stout', 7.8, 'artisanale'),
                                                            ('Lager du Pub', 'Lager', 4.8, 'industrielle'),
                                                            ('Blanche de l''Oktober', 'Blanche', 5.1, 'artisanale'),
                                                            ('Amber du Bar à Bulles', 'Amber Ale', 5.5, 'artisanale'),
                                                            ('IPA du Saint-Bernard', 'IPA', 6.4, 'artisanale'),
                                                            ('Pale Ale du Froth', 'Pale Ale', 5.2, 'artisanale'),
                                                            ('Stout du Houblon', 'Stout', 8.0, 'artisanale'),
                                                            ('Blonde de la Pression', 'Blonde', 5.0, 'industrielle'),
                                                            ('Lager Bière & Co', 'Lager', 4.9, 'industrielle'),
                                                            ('Triple du Zinc', 'Triple', 9.1, 'artisanale'),
                                                            ('Porter du Bock', 'Porter', 6.7, 'artisanale'),
                                                            ('Blanche du Comptoir', 'Blanche', 5.0, 'artisanale'),
                                                            ('Amber du Pub du Parc', 'Amber Ale', 5.6, 'artisanale'),
                                                            ('IPA de la Chope', 'IPA', 6.2, 'artisanale'),
                                                            ('Blonde du Malt', 'Blonde', 5.0, 'industrielle');


INSERT INTO prix (id_bar, id_biere, prix) VALUES
-- Bar 1
(1,1,5.5),(1,2,4.8),(1,3,6.2),(1,4,5.0),(1,5,4.5),
(1,6,5.7),(1,7,8.9),(1,8,5.0),(1,9,6.5),(1,10,6.0),
(1,11,5.2),(1,12,7.0),(1,13,4.9),(1,14,5.1),(1,15,5.6),
(1,16,6.0),(1,17,5.3),(1,18,7.8),(1,19,5.0),(1,20,4.7),

-- Bar 2
(2,1,5.2),(2,3,6.5),(2,5,4.9),(2,7,9.0),(2,9,6.8),
(2,11,5.1),(2,13,5.0),(2,15,5.7),(2,17,5.2),(2,19,5.5),
(2,21,9.2),(2,23,5.0),(2,25,6.1),(2,27,7.9),(2,29,5.1),
(2,31,6.3),(2,32,5.2),(2,34,5.0),(2,36,9.1),(2,38,5.0),

-- Bar 3
(3,2,4.9),(3,4,5.2),(3,6,5.7),(3,8,5.0),(3,10,6.0),
(3,12,7.0),(3,14,5.1),(3,16,6.0),(3,18,8.2),(3,20,4.7),
(3,22,6.7),(3,24,5.6),(3,26,5.0),(3,28,4.8),(3,30,5.5),
(3,32,5.2),(3,34,5.0),(3,36,9.0),(3,38,5.0),(3,40,5.0),

-- Bar 4
(4,1,5.0),(4,3,6.0),(4,5,4.7),(4,7,8.5),(4,9,6.5),
(4,11,5.0),(4,13,4.8),(4,15,5.7),(4,17,5.3),(4,19,5.0),
(4,21,9.0),(4,23,5.0),(4,25,6.2),(4,27,7.5),(4,29,5.0),
(4,31,6.4),(4,32,5.3),(4,34,5.0),(4,36,9.2),(4,38,5.1),

-- Bar 5
(5,2,4.8),(5,4,5.0),(5,6,5.6),(5,8,5.1),(5,10,6.0),
(5,12,7.2),(5,14,5.0),(5,16,6.1),(5,18,8.0),(5,20,4.8),
(5,22,6.5),(5,24,5.6),(5,26,5.0),(5,28,4.7),(5,30,5.5),
(5,32,5.3),(5,34,5.0),(5,36,9.0),(5,38,5.0),(5,40,5.0),

-- Bar 6
(6,1,5.3),(6,3,6.2),(6,5,4.6),(6,7,8.7),(6,9,6.0),
(6,11,5.0),(6,13,5.1),(6,15,5.8),(6,17,5.4),(6,19,5.0),
(6,21,9.3),(6,23,5.1),(6,25,6.0),(6,27,7.8),(6,29,5.2),

-- Bar 7
(7,2,5.0),(7,4,5.3),(7,6,5.7),(7,8,5.2),(7,10,6.2),
(7,12,7.1),(7,14,5.1),(7,16,6.0),(7,18,8.1),(7,20,4.9),

-- Bar 8
(8,1,5.5),(8,3,6.5),(8,5,4.8),(8,7,9.0),(8,9,6.7),
(8,11,5.2),(8,13,5.0),(8,15,5.9),(8,17,5.4),(8,19,5.0),
(8,21,9.4),(8,23,5.1),(8,25,6.3),(8,27,7.9),(8,29,5.2),

-- Bar 9
(9,2,5.1),(9,4,5.0),(9,6,5.6),(9,8,5.0),(9,10,6.1),
(9,12,7.0),(9,14,5.1),(9,16,6.2),(9,18,8.0),(9,20,4.7),

-- Bar 10
(10,1,5.2),(10,3,6.0),(10,5,4.9),(10,7,8.8),(10,9,6.5),
(10,11,5.1),(10,13,5.0),(10,15,5.7),(10,17,5.3),(10,19,5.0),

-- Bar 11
(11,2,4.9),(11,4,5.2),(11,6,5.7),(11,8,5.0),(11,10,6.0),
(11,12,7.0),(11,14,5.1),(11,16,6.0),(11,18,8.2),(11,20,4.7),

-- Bar 12
(12,1,5.0),(12,3,6.2),(12,5,4.6),(12,7,8.5),(12,9,6.0),
(12,11,5.0),(12,13,5.0),(12,15,5.6),(12,17,5.3),(12,19,5.0),

-- Bar 13
(13,2,5.1),(13,4,5.0),(13,6,5.5),(13,8,5.0),(13,10,6.0),
(13,12,7.0),(13,14,5.1),(13,16,6.0),(13,18,8.0),(13,20,4.8),

-- Bar 14
(14,1,5.2),(14,3,6.5),(14,5,4.9),(14,7,9.1),(14,9,6.7),
(14,11,5.2),(14,13,5.0),(14,15,5.7),(14,17,5.3),(14,19,5.0),

-- Bar 15
(15,2,5.0),(15,4,5.3),(15,6,5.6),(15,8,5.2),(15,10,6.1),
(15,12,7.0),(15,14,5.0),(15,16,6.0),(15,18,8.1),(15,20,4.9),

-- Bar 16
(16,1,5.3),(16,3,6.2),(16,5,4.8),(16,7,8.7),(16,9,6.0),
(16,11,5.1),(16,13,5.0),(16,15,5.8),(16,17,5.4),(16,19,5.0),

-- Bar 17
(17,2,5.0),(17,4,5.2),(17,6,5.7),(17,8,5.1),(17,10,6.2),
(17,12,7.1),(17,14,5.1),(17,16,6.0),(17,18,8.0),(17,20,4.9),

-- Bar 18
(18,1,5.5),(18,3,6.5),(18,5,4.9),(18,7,9.0),(18,9,6.5),
(18,11,5.2),(18,13,5.0),(18,15,5.9),(18,17,5.4),(18,19,5.0),

-- Bar 19
(19,2,5.1),(19,4,5.0),(19,6,5.6),(19,8,5.0),(19,10,6.1),
(19,12,7.0),(19,14,5.1),(19,16,6.0),(19,18,8.0),(19,20,4.8),

-- Bar 20
(20,1,5.2),(20,3,6.0),(20,5,4.7),(20,7,8.8),(20,9,6.5),
(20,11,5.1),(20,13,5.0),(20,15,5.6),(20,17,5.3),(20,19,5.0);
