-- what do we want to know about owners?
create table owners (
    id serial primary key,
    name text,
    phone_number varchar(20)
);

-- what do we want to know about pets?
create table pets (
    id serial primary key,
    name text, 
    -- if you wanted to limit the number of characters use varchar(10) which stands
    -- for 'character varying'
    species varchar(100),
    -- instead of age, we can derive the age from a birthdate
    birthdate date,
    -- when you have the info in another table, ask yourself, do pets have one owners?
    -- or do pets have many owners?
    -- if pets have one and only one, then you put the foreign key right HERE. 
    owner_id integer references owners (id)
    -- the integer references the id in the table 'owners'.
);


-- this will demo many-to-many
-- from many-to-many, use a 'linking' table.

-- create table owners_pets(
--     -- this table needs no id 
--     owner_id integer references owners(id),
--     pet_id integer references pets(id)
-- );