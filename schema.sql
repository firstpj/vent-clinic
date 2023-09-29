/* Database schema to keep the structure of the entire database. */

CREATE TABLE animals (
    id serial PRIMARY KEY,
    name varchar(255),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal(10, 2)
);

ALTER TABLE animals ADD COLUMN species varchar(255);


CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(255),
    age integer
);
CREATE TABLE species (
    id serial PRIMARY KEY,
    name varchar(255)
);
ALTER TABLE animals
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;
ALTER TABLE animals
DROP COLUMN species;
ALTER TABLE animals
ADD COLUMN species_id integer REFERENCES species(id);
ALTER TABLE animals
ADD COLUMN owner_id integer REFERENCES owners(id);