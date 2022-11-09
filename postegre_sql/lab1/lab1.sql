

BEGIN;


CREATE TABLE IF NOT EXISTS countries
(
	id integer CHECK(id < 1000) PRIMARY KEY,
	country_name varchar(64) NOT NULL
	
);


CREATE TABLE IF NOT EXISTS timetable
(
	id integer,
	arrival_time timestamp NOT NULL,
	departure_time timestamp NOT NULL,
	place_of_departure varchar(2000) DEFAULT 'Moсква' NOT NULL,
	place_of_arrival varchar(2000) NOT NULL,
	type_ varchar(9) NOT NULL CHECK(type_ in ('скорый','фирменный','обычный')),
	number_of_stops integer NOT NULL CHECK(number_of_stops > 0),
	country_id integer NOT NULL CHECK(country_id < 1000),
	PRIMARY KEY (id),
	FOREIGN KEY (country_id) REFERENCES countries(id)

);




END;