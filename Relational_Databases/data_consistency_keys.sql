-- Count the number of rows in universities
SELECT COUNT(*) 
FROM universities;

-- Count the number of distinct values in the university_city column
SELECT COUNT(DISTINCT(university_city)) 
FROM universities;

-- Try out different combinations
SELECT COUNT(DISTINCT(firstname,lastname))
FROM professors;

-- Rename the organization column to id
ALTER TABLE organizations
RENAME COLUMN organization TO id;

-- Make id a primary key
ALTER TABLE organizations
ADD CONSTRAINT organization_pk PRIMARY KEY (id);

-- Rename the university_shortname column to id
ALTER TABLE universities
RENAME COLUMN university_shortname TO id;

-- Make id a primary key
ALTER TABLE universities
ADD CONSTRAINT university_pk PRIMARY KEY (id);

-- Add the new column to the table
ALTER TABLE professors 
ADD COLUMN id SERIAL;

-- Make id a primary key
ALTER TABLE professors
ADD CONSTRAINT professors_pkey PRIMARY KEY (id);

-- Have a look at the first 10 rows of professors
SELECT *
FROM professors
LIMIT 10;

-- Count the number of distinct rows with columns make, model
SELECT COUNT(DISTINCT (make, model))
FROM cars;

-- Add the id column
ALTER TABLE cars
ADD COLUMN id varchar(128);

-- Update id with make + model
UPDATE cars
SET id = CONCAT(make, model);

-- Make id a primary key
ALTER TABLE cars
ADD CONSTRAINT id_pk PRIMARY KEY(id);

-- Have a look at the table
SELECT * FROM cars;

-- Create the table
CREATE TABLE students (
  last_name VARCHAR(128) NOT NULL,
  ssn INTEGER PRIMARY KEY,
  phone_no CHAR(12)
);