CREATE database IF NOT EXISTS EcoMe;
USE EcoMe;

 CREATE TABLE IF NOT EXISTS building
 (
	bid 			INT				PRIMARY KEY		AUTO_INCREMENT,
 	address			varchar(100),
    b_type			varchar(100),
    eui				INT
 );

CREATE TABLE IF NOT EXISTS waste
(
	wasteid 		INT 	PRIMARY KEY 	AUTO_INCREMENT,
    recycle		BOOLEAN,
    tbags		INT,
    disposable	BOOLEAN
);

CREATE TABLE IF NOT EXISTS water
(
	waterid		INT 	PRIMARY KEY,
    shower		INT,
    dishes		INT
);

CREATE TABLE IF NOT EXISTS food
(
	foodid 		INT 	PRIMARY KEY 	AUTO_INCREMENT,
    plant		BOOLEAN,
    finishfood	BOOLEAN,
    meat		varchar(100)
);

CREATE TABLE IF NOT EXISTS transport
(
	transportid 	INT 	PRIMARY KEY 	AUTO_INCREMENT,
    pmode 			VARCHAR(100),
    length			VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS major
(
	majorid 	INT 	PRIMARY KEY 	AUTO_INCREMENT,
    major 		varchar(100)
);

CREATE TABLE IF NOT EXISTS class
(
	classid 	INT 	PRIMARY KEY 	AUTO_INCREMENT,
    yeargrad	YEAR
);

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

