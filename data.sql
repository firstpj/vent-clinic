CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- Insert data into the owners table
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

-- Insert data into the species table
INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

-- Modify animals to include species_id and owner_id
UPDATE animals SET species_id = (CASE 
                                    WHEN name LIKE '%mon' THEN 2 -- Digimon
                                    ELSE 1 -- Pokemon
                                  END);

UPDATE animals SET owner_id = (CASE
                                WHEN name = 'Agumon' THEN 1 -- Sam Smith owns Agumon
                                WHEN name IN ('Gabumon', 'Pikachu') THEN 2 -- Jennifer Orwell owns Gabumon and Pikachu
                                WHEN name IN ('Devimon', 'Plantmon') THEN 3 -- Bob owns Devimon and Plantmon
                                WHEN name IN ('Charmander', 'Squirtle', 'Blossom') THEN 4 -- Melody Pond owns Charmander, Squirtle, and Blossom
                                WHEN name IN ('Angemon', 'Boarmon') THEN 5 -- Dean Winchester owns Angemon and Boarmon
                                ELSE NULL
                              END);
