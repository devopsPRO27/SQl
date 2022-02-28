
CREATE TABLE CapitalCity(
	id  INT ,
	name TEXT,
	numCitizens INT,
	countryId INT ,
	PRIMARY KEY (id),
	FOREIGN KEY  (countryId) REFERENCES  Country(id)
 );
 
 
 CREATE TABLE Country(
	id  INT UNIQUE,
	name TEXT,
	size_km INT,
	birth_year INT NOT NULL,
	CapitalCity_id INT ,
	PRIMARY KEY (id),
	FOREIGN KEY  (CapitalCity_id) REFERENCES  CapitalCity(id)
 );
