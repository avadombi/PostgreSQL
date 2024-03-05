-- Create in this order: create car first, then person
-- Insert in this order: person, car

CREATE TABLE car (
	car_uuid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

CREATE TABLE person (
    person_uuid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(7) NOT NULL,
	email VARCHAR(100),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_uuid UUID REFERENCES car (car_uuid),
	UNIQUE(car_uuid)  -- uniqueness
);

-- INSERT INTO PERSON
INSERT INTO person (person_uuid, first_name, last_name, gender, email, date_of_birth, country_of_birth) VALUES (uuid_generate_v4(), 'Fernanda', 'Beardon', 'Female', 'fernandab@is.gd', '1953-10-28', 'Comoros');
INSERT INTO person (person_uuid, first_name, last_name, gender, email, date_of_birth, country_of_birth) VALUES (uuid_generate_v4(), 'Omar', 'Colmore', 'Male', null, '1921-04-03', 'Finland');
INSERT INTO person (person_uuid, first_name, last_name, gender, email, date_of_birth, country_of_birth) VALUES (uuid_generate_v4(), 'Adriana', 'Matuschek', 'Female', 'amatuschek2@feedburner.com', '1965-02-28', 'Cameroon');

-- INSERT INTO CAR
INSERT INTO car (car_uuid, make, model, price) VALUES (uuid_generate_v4(), 'Land Rover', 'Sterling', '87665.38');
INSERT INTO car (car_uuid, make, model, price) VALUES (uuid_generate_v4(), 'GMC', 'Acadia', '17662.69');

