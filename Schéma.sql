CREATE TABLE quartier (
                          id_quartier SERIAL PRIMARY KEY,
                          nom VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE bar (
                     id_bar SERIAL PRIMARY KEY,
                     nom VARCHAR(100) NOT NULL,
                     adresse TEXT NOT NULL,
                     id_quartier INT NOT NULL REFERENCES quartier(id_quartier)
);

CREATE TABLE biere (
                       id_biere SERIAL PRIMARY KEY,
                       nom VARCHAR(100) NOT NULL,
                       type VARCHAR(100) NOT NULL,
                       degree_alcool NUMERIC(4,2) CHECK (degree_alcool >= 0 AND degree_alcool <= 100)
);

CREATE TABLE prix (
                      id_bar INT NOT NULL REFERENCES bar(id_bar),
                      id_biere INT NOT NULL REFERENCES biere(id_biere),
                      prix NUMERIC(5,2) NOT NULL CHECK (prix > 0),
                      PRIMARY KEY (id_bar, id_biere)
);