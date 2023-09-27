/* Database schema to keep the structure of entire database. */

CREATE TABLE animals
(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(100) NOT NULL,
    date_of_birth date not null,
    escape_attempts INT not null,
    neutered boolean not null,
    weight_kg decimal not null
);