use flyawaydb;

create table airline (
	airline_id int(11) NOT NULL AUTO_INCREMENT,
	airline_name varchar(30) NOT NULL,
	PRIMARY KEY (airline_id),
);

create table flights (
	flights_Id int(11) NOT NULL AUTO_INCREMENT,
	flights_name varchar(30) NOT NULL,
	PRIMARY KEY (flights_Id),
	airline_id int(11) NOT NULL,
	KEY airline_fk (airline_id),
	CONSTRAINT airline_fk FOREIGN Key (airline_id) REFERENCES class (airline_id)
	);
	
	create table places (
	places_Id int(11) NOT NULL AUTO_INCREMENT,
	places_name varchar(30) NOT NULL,
	PRIMARY KEY (places_Id),
	flights_Id int(11) NOT NULL,
	KEY flights_fk2 (flights_Id),
	CONSTRAINT flights_fk2 FOREIGN Key (flights_Id) REFERENCES class (flights_Id)
	
);
	
	