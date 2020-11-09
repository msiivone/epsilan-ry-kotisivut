CREATE TABLE Kayttajat (id SERIAL PRIMARY KEY, nimi TEXT, sahkoposti TEXT, salasana TEXT, isadmin BOOLEAN);
CREATE TABLE Tapahtumat (id SERIAL PRIMARY KEY, nimi TEXT, kuvaus TEXT, tekstiaika TEXT, oikeaaika DATE, omistaja_id INTEGER REFERENCES Kayttajat);
CREATE TABLE Ilmoittautumiset(id SERIAL PRIMARY KEY, tapahtuma_id INTEGER REFERENCES Tapahtumat, kayttaja_id INTEGER REFERENCES Kayttajat);
CREATE TABLE Porttikiellot(id SERIAL PRIMARY KEY, kayttaja_id INTEGER REFERENCES Kayttajat);
CREATE TABLE Omattiedot(id SERIAL PRIMARY KEY, kayttaja_id INTEGER REFERENCES Kayttajat, kuvaus TEXT, lempiolut TEXT);