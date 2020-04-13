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
    recycle		VARCHAR(45),
    tbags		INT,
    disposable	VARCHAR(45)
);

INSERT INTO waste VALUES
(1, "yes", 2, "no"),
(2, "yes", 3, "yes"),
(3, "yes", 0, "no"),
(4, "yes", 2, "yes"),
(5, "yes", 6, "no"),
(6, "no", 4, "yes"),
(7, "no", 3, "no"),
(8, "no", 6, "yes"),
(9, "no", 6, "no"),
(10, "no", 10, "yes");

CREATE TABLE IF NOT EXISTS water
(
	waterid		INT 	PRIMARY KEY		AUTO_INCREMENT,
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
    plant		VARCHAR(45),
    finishfood	VARCHAR(45),
    meat		varchar(100)
);

INSERT INTO food VALUES
(1, "yes", "no", "never"),
(2, "yes", "yes", "rarely"),
(3, "yes", "no", "occasionally"),
(4, "yes", "yes", "never"),
(5, "yes", "no", "occasionally"),
(6, "no", "yes", "often"),
(7, "no", "no", "occasionally"),
(8, "no", "yes", "often"),
(9, "no", "no", "occasionally"),
(10, "no", "yes", "often");

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
    yeargrad	VARCHAR(25)
);

INSERT INTO class VALUES
(1, "2018"),
(2, "2019"),
(3, "2020"),
(4, "2021"),
(5, "2022"),
(6, "2023"),
(7, "2024"),
(8, "2025");

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

SELECT * FROM users;
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

SELECT users.pid, users.first_name, users.last_name, users.age, class.yeargrad, users.email, users.gender, building.address, building.eui
						FROM building JOIN users ON users.building = building.bid
						JOIN class ON users.grade = class.classid
                        JOIN water ON users.water = water.waterid
                        JOIN food ON users.food = food.foodid
                        JOIN transport ON users.transport = transport.transportid
                        JOIN waste ON users.waste = waste.wasteid
                        JOIN major ON users.major = major.majorid
                        ORDER BY users.pid;
                        
                        SELECT *
						FROM building JOIN users ON users.building = building.bid
						JOIN class ON users.grade = class.classid
                        JOIN water ON users.water = water.waterid
                        JOIN food ON users.food = food.foodid
                        JOIN transport ON users.transport = transport.transportid
                        JOIN waste ON users.waste = waste.wasteid
                        JOIN major ON users.major = major.majorid;

DROP PROCEDURE IF EXISTS total_score;
DELIMITER //
CREATE PROCEDURE total_score 
()

BEGIN
	DROP TABLE IF EXISTS total_points;
	CREATE TABLE total_points (
		SELECT 	pid, waste.tbags AS tbags, 
			CASE
				when waste.recycle = "yes" then 0
				else 1
			END AS recycle_point,
			CASE
				when waste.disposable = "yes" then 1
				else 0
			END AS disposable_point, 
			CASE
				WHEN food.plant = "yes" then 0
				ELSE 1
			END AS plantbased_point,
			CASE
				WHEN food.finishfood = "yes" then 0
				ELSE 1
			END AS finishfood_point,
			CASE
				WHEN food.meat = "often" then 3
				WHEN food.meat = "occasionally" then 2
				WHEN food.meat = "rarely" then 1
				WHEN food.meat = "never" then 0
			END AS meat_point, 
			((water.shower * 2) + (water.dishes * 6)) as total_water,
			building.eui AS eui_point,
			CASE
				WHEN transport.pmode = "walk" THEN 0
				WHEN transport.pmode = "bike" THEN 0
				WHEN transport.pmode = "bus" THEN 1
				WHEN transport.pmode = "train" THEN 2
				WHEN transport.pmode = "car" THEN 3
			END AS transmode_point,
			CASE 
				WHEN transport.length = "0-20" THEN 0
				WHEN transport.length = "20-40" THEN 1
				WHEN transport.length = "40-60" THEN 2
				WHEN transport.length = "more than 60" THEN 3
			END AS translength_point
	FROM users
	JOIN waste ON users.waste = waste.wasteid
	JOIN food ON users.food = food.foodid
	JOIN water ON users.water = water.waterid
	JOIN building ON users.building = building.bid
	JOIN transport ON users.transport = transport.transportid
	);
    
	SELECT pid, (tbags + recycle_point + disposable_point + 
				plantbased_point + finishfood_point + meat_point +
                total_water + eui_point + transmode_point + translength_point) AS EcoScore
    FROM total_points
    ORDER BY EcoScore; 

END//
DELIMITER ;

CALL total_score();