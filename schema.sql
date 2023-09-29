-- Modify animals table
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL(10, 2),
    species_id INTEGER,
    owner_id INTEGER,
    FOREIGN KEY (species_id) REFERENCES species(id),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);


-- Create owners table
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INTEGER
);

-- Create species table
CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);
