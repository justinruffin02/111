
--This is a comment

--In SQL there are two types of "statements"
--1. Commands: These are statements that when executed change on the database

--2. Queries: These are statements that when executed return data for read-only purposes.

--our basic set up sjould consist of at least one commandto create a table:

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT
    is_online BOOLEAN DEFAULT 0
);
CREATE TABLE vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type_vehicle VARCHAR(45),
    color VARCHAR(45),
    price TEXT
    is_online BOOLEAN DEFAULT 0
);

--CRUDS
--1. CREATE
INSERT INTO vehicle (
    type_vehicle,
    color,
    price
) VALUES (
    "Car",
    "Blue",
    "250,000"
);
INSERT INTO vehicle (
    type_vehicle,
    color,
    price
) VALUES (
    "Boat",
    "red",
    "100,000"
);
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Jane",
    "Doe",
    "Play tennis and games"
);
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Tom",
    "Jones",
    "To ski and go bird watching"
);
INSERT INTO user (
    first_name,
    last_name,
    hobbies
) VALUES (
    "Jenny",
    "Rogers",
    "To code and watch youtube videos"
);

--2. READ

SELECT * FROM user WHERE id=all;

--SELECT last_name, first_name, hobbies FROM user WHERE id=1;


--3. UPDATE

UPDATE user
    SET 
        first_name = "Thomas",
        last_name = "Jones",
        hobbies = "To ski and  go  bird watching"
WHERE id=3;

--4. DELETE

DELETE FROM user WHERE id = 2;

--5. (Scan)
--NOTE: A scan is just another type pf READ operation

SELECT * FROM user;