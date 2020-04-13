DROP DATABASE IF EXISTS EcoMe;
CREATE database IF NOT EXISTS EcoMe;
USE EcoMe;

 CREATE TABLE IF NOT EXISTS building
 (
	bid 			INT				PRIMARY KEY		AUTO_INCREMENT,
 	address			varchar(100),
    b_type			varchar(100),
    eui				INT
 );
 
 INSERT INTO building VALUES
 (1,"10 Coventry Street", "College/University", 35.4),
 (2,"100 Arlington Street", "Multifamily Housing", 51.6),
 (3,"1019 Commonwealth Avenue", "Residence Hall/Dormitory", 70.4),
 (4,"1158 Tremont St.", "Multifamily Housing", 62.6),
 (5,"1140 Boylston Street", "College/University", 88.8),
 (6,"150 Mass Ave", "College/University", 17.3);

CREATE TABLE IF NOT EXISTS waste
(
	wasteid 		INT 	PRIMARY KEY 	AUTO_INCREMENT,
    recycle		BOOLEAN,
    tbags		INT,
    disposable	BOOLEAN
);

INSERT INTO waste VALUES
(1, TRUE, 2, FALSE),
(2, TRUE, 3, TRUE),
(3, TRUE, 0, FALSE),
(4, TRUE, 2, TRUE),
(5, TRUE, 6, FALSE),
(6, FALSE, 4, TRUE),
(7, FALSE, 3, FALSE),
(8, FALSE, 6, TRUE),
(9, FALSE, 6, FALSE),
(10, FALSE, 10, TRUE);

CREATE TABLE IF NOT EXISTS water
(
	waterid		INT 	PRIMARY KEY,
    shower		INT,
    dishes		INT
);

INSERT INTO water VALUES
(1, 5, 60),
(2, 10, 60),
(3, 90, 40),
(4, 30, 30),
(5, 20, 10),
(6, 10, 45),
(7, 15, 20),
(8, 60, 25),
(9, 27, 14),
(10, 130, 18);

CREATE TABLE IF NOT EXISTS food
(
	foodid 		INT 	PRIMARY KEY 	AUTO_INCREMENT,
    plant		BOOLEAN,
    finishfood	BOOLEAN,
    meat		varchar(100)
);

INSERT INTO food VALUES
(1, TRUE, FALSE, "never"),
(2, TRUE, TRUE, "rarely"),
(3, TRUE, FALSE, "occasionally"),
(4, TRUE, TRUE, "never"),
(5, TRUE, FALSE, "occasionally"),
(6, FALSE, TRUE, "often"),
(7, FALSE, FALSE, "occasionally"),
(8, FALSE, TRUE, "often"),
(9, FALSE, FALSE, "occasionally"),
(10, FALSE, TRUE, "often");

CREATE TABLE IF NOT EXISTS transport
(
	transportid 	INT 	PRIMARY KEY 	AUTO_INCREMENT,
    pmode 			VARCHAR(100),
    length			VARCHAR(100)
);

INSERT INTO transport VALUES
(1, "bike", "0-20"),
(2, "bus", "20-40"),
(3, "car", "20-40"),
(4, "train", "40-60"),
(5, "walk", "0-20"),
(6, "car", "more than 60"),
(7, "walk", "20-40"),
(8, "bus", "0-20"),
(9, "train", "more than 60"),
(10, "bus", "40-60");

CREATE TABLE IF NOT EXISTS major
(
	majorid 	INT 	PRIMARY KEY 	AUTO_INCREMENT,
    major 		varchar(100)
);

INSERT INTO major VALUES
(1, "Math"),
(2, "Chemistry"),
(3, "Biology"),
(4, "English"),
(5, "Computer Science"),
(6, "Philosophy"),
(7, "Environmental Science"),
(8, "Game design"),
(9, "Business"),
(10, "Economics");

CREATE TABLE IF NOT EXISTS class
(
	classid 	INT 	PRIMARY KEY 	AUTO_INCREMENT,
    yeargrad	YEAR
);

INSERT INTO class VALUES
(1, 2018),
(2, 2019),
(3, 2020),
(4, 2021),
(5, 2022),
(6, 2023),
(7, 2024),
(8, 2025);

CREATE TABLE IF NOT EXISTS users
(
	pid				INT 			PRIMARY KEY 	AUTO_INCREMENT,
	first_name		varchar(100),
    last_name		varchar(100),
    age				INT,
    grade			INT,
    CONSTRAINT user_class_fk
		FOREIGN KEY (grade)
        REFERENCES class (classid),
    email			varchar(100),
    gender			varchar(100),
    building		INT,
    CONSTRAINT user_build_fk
		FOREIGN KEY (building)
        REFERENCES building (bid),
	water			INT,
    CONSTRAINT user_water_fk
		FOREIGN KEY (water)
        REFERENCES water (waterid),
    food			INT,
    CONSTRAINT user_food_fk
		FOREIGN KEY (food)
        REFERENCES food (foodid),
    transport		INT,
    CONSTRAINT user_transport_fk
		FOREIGN KEY (transport)
        REFERENCES transport (transportid),
    waste			INT,
    CONSTRAINT user_waste_fk
		FOREIGN KEY (waste)
        REFERENCES waste (wasteid),
	major 			INT,
    CONSTRAINT user_major_fk
		FOREIGN KEY (major)
        REFERENCES major (majorid)
);

INSERT INTO users VALUES
(1, "John", "Smith", 19, 6, "smith.j@husky.neu.edu", "male", 1, 1, 1, 1, 1, 1),
(2, "Lucy", "Lee", 20, 5, "Lee.l@husky.neu.edu", "female", 2, 2, 2, 2, 2, 2),
(3, "Matt", "Mister", 24, 2, "Mister.m@hisky.neu.edu", "male", 3, 3, 3, 3, 3, 3),
(4, "Joe", "John", 18, 8, "John.j@husky.neu.edu", "male", 4, 4, 4, 4, 4, 4),
(5, "Sally", "Smith", 23, 3, "Smith.s@husky.neu.edu", "female", 5, 5, 5, 5, 5, 5),
(6, "Molly", "Mae", 30, 1, "Mae.m@husky.neu.edu", "female", 6, 6, 6, 6, 6, 6),
(7, "Jennifer", "Joseph", 25, 4, "Joseph.j@husky.neu.edu", "female", 1, 7, 7, 7, 7, 7),
(8, "Oliver", "Obe", 22, 6, "Obe.o@husky.neu.edu", "female", 1, 8, 8, 8, 8, 8),
(9, "Peter", "Person", 21, 4, "Person.p@husky.neu.edu", "male", 6, 9, 9, 9, 9, 9),
(10, "Georgia", "Greg", 20, 5, "Georgia.g@husky.neu.edu", "female", 2, 10, 10, 10, 10, 10);

