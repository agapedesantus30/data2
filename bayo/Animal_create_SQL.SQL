-- script to create ANIMAL HOUSE RESCUE database
-- revised 3/20/2018 DW

-- Drop tables to allow for multiple runs

-- DROP TABLE animal;
-- DROP TABLE wishlist;
-- DROP TABLE breed;
-- DROP TABLE volunteer;
-- DROP TABLE adopter;

-- Create tables

CREATE TABLE adopter
(adopter_id INTEGER,
adopter_first VARCHAR(20),
adopter_last VARCHAR(20),
adopter_street VARCHAR(40),
adopter_city VARCHAR(20),
adopter_state CHAR(2),
adopter_zip VARCHAR(10),
adopter_phone VARCHAR(10), 
CONSTRAINT adopter_adopter_id_pk PRIMARY KEY (adopter_id)
);

INSERT INTO adopter VALUES
(0001, 'Tony', 'Apello', '223 Peachtree Dr.', 'Atlanta', 'GA', '30303', '7705295585');

INSERT INTO adopter VALUES
(0012, 'Don', 'Clayton', '858 College Ave', 'Decatur', 'GA', '30301', '7705298512');

INSERT INTO adopter VALUES
(0018, 'Janet', 'Satcher', '326 Stonewall St.', 'Atlanta', 'GA', '30304', '7705258667');

INSERT INTO adopter VALUES
(0021, 'Emily', 'St. Andry', '61 River Mist Lane', 'Atlanta', 'GA', '30103', '6785293408');

INSERT INTO adopter VALUES
(0025, 'Michael', 'McVicker', '747 Highland Dr.', 'Athens', 'GA', '30308', '7065256132');

INSERT INTO adopter VALUES
(0031, 'Jessie', 'Sarpy', '1460 Piedmont Place', 'Atlanta', 'GA', '30364', '7705290678');

INSERT INTO adopter VALUES
(0035, 'Terry', 'Cohenn', '2121 Westfair Dr.', 'Columbus', 'GA', '30138', '7065254430');

INSERT INTO adopter VALUES
(0036, 'Joseph', 'Rikard', '580 Clayton Street', 'Lawrenceville', 'GA', '30043', '6785287356');

INSERT INTO adopter VALUES
(0158, 'Amanda', 'Cooper', '2925 West Mountain St', 'Stone Mountain', 'GA', '30083', '4045294431');

INSERT INTO adopter VALUES
(0187, 'James', 'Longlois', '87 Lower Woods Circle', 'Alpharetta', 'GA', '30022', '7705250663');

INSERT INTO adopter VALUES
(0198, 'Suzanne', 'Ingram', '1150 River Falls', 'Peachtree City', 'GA', '30270', '4045298302');


CREATE TABLE volunteer 
(vol_id INTEGER,
vol_first VARCHAR(20),
vol_last VARCHAR(20),
vol_street VARCHAR(40),
vol_city VARCHAR(20),
vol_state CHAR(2),
vol_zip VARCHAR(10),
vol_phone VARCHAR(10),
vol_DOB DATE, 
CONSTRAINT volunteer_vol_id_pk PRIMARY KEY (vol_id)
);

INSERT INTO volunteer VALUES
(0001, 'Mimi', 'Jannik', '810 Shelby Dr.', 'Atlanta', 'GA', '30103', '7705295520', '1977-02-10');

INSERT INTO volunteer VALUES
(0013, 'Jim', 'Maurice', '2516 Harbor Isle', 'Atlanta', 'GA', '30314', '7705298534', '1972-1-30');

INSERT INTO volunteer VALUES
(0018, 'Catherine', 'Johnson', '765 Moss Terrace', 'Marietta', 'GA', '30112', '6785258123', '1956-2-23');

INSERT INTO volunteer VALUES
(0121, 'Abraham', 'Clark', '3829 Union St.', 'Atlanta', 'GA', '30324', '7705293444', '1969-9-07');

INSERT INTO volunteer VALUES
(0231, 'Janice', 'LeBlanc', '768 Fairwoods', 'Decatur', 'GA', '30301', '4045256789', '1988-3-14');

INSERT INTO volunteer VALUES
(0037, 'Alice', 'Ledet', '332 Blanchard', 'Atlanta', 'GA', '30308', '7705290222', '1999-11-25');

INSERT INTO volunteer VALUES
(0452, 'Gwen', 'Claiborne', '1302 Lakeshore Dr.', 'Decatur', 'GA', '30304', '7705251000', '1993-6-22');

INSERT INTO volunteer VALUES
(0438, 'Joseph', 'Silvia', '131 West Court', 'Lawrenceville', 'GA', '30043', '7705286532', '1994-2-02');

INSERT INTO volunteer VALUES
(0209, 'Patrice', 'Ferrier', '564 Hope Avenue', 'Atlanta', 'GA', '30315', '6785294991', '1985-4-15');

INSERT INTO volunteer VALUES
(0117, 'Carol', 'Knotts', '879 Julia Circle', 'Kennesaw', 'GA', '30346', '4705250533', '1989-7-16');

INSERT INTO volunteer VALUES
(0019, 'Ron', 'Kingsley', '1120 Washington Ave.', 'Atlanta', 'GA', '30301', '7705298210', '1990-10-26');


CREATE TABLE breed
(breed_id INTEGER,
breed_name VARCHAR(30),
breed_type VARCHAR(20),
male_lo_weight DECIMAL(4,1),
male_hi_weight DECIMAL(4,1),
female_lo_weight DECIMAL(4,1),
female_hi_weight DECIMAL(4,1),
CONSTRAINT breed_breed_id_pk PRIMARY KEY (breed_id)
);

INSERT INTO breed VALUES
(02, 'Airedale Terrier', 'dog', 50, 65, 40, 45);

INSERT INTO breed VALUES
(03, 'Akita', 'dog', 75, 120, 70, 110);

INSERT INTO breed VALUES
(04, 'American Eskimo', 'dog', 18, 35, 11, 22);

INSERT INTO breed VALUES
(05, 'Pit Bull', 'dog', 35, 65, 30, 60);

INSERT INTO breed VALUES
(06, 'Australian Shepard', 'dog', 50, 64, 36, 58);

INSERT INTO breed VALUES
(08, 'Bassett Hound', 'dog', 55, 75, 45, 65);

INSERT INTO breed VALUES
(10, 'Beagle', 'dog', 22, 25, 20, 23);

INSERT INTO breed VALUES
(12, 'Border Collie', 'dog', 30, 45, 27, 42);

INSERT INTO breed VALUES
(14, 'Dalmation', 'dog', 40, 70, 30, 60);

INSERT INTO breed VALUES
(15, 'Siamese', 'cat', 6, 8, 5, 7);

INSERT INTO breed VALUES
(18, 'Chartreaux', 'cat', 7, 10, 5, 8);

INSERT INTO breed VALUES
(23, 'British Shorthair', 'cat', 12, 22, 9, 20);

INSERT INTO breed VALUES
(29, 'Calico', 'cat', 10, 14, 7, 12);

INSERT INTO breed VALUES
(38, 'Persian', 'cat', 8, 12, 6, 10);

INSERT INTO breed VALUES
(44, 'Bombay', 'cat', 6, 11, 6, 10);

INSERT INTO breed VALUES
(56, 'Egyptian', 'cat', 8, 12, 5, 10);

INSERT INTO breed VALUES
(57, 'Sphynx', 'cat', 7, 15, 6, 13);

INSERT INTO breed VALUES
(67, 'canary', 'bird', .2, .5, .2, .4 );

INSERT INTO breed VALUES
(79, 'parrot','bird', 1.8, 2.5, 1.5, 2.2);

INSERT INTO breed VALUES
(83, 'love bird', 'bird', .4, .6, .3, .5);

CREATE TABLE wishlist
(wish_id INTEGER,
desired_breed INTEGER,
desired_age INTEGER,
desired_gender CHAR(1),
adopter_id INTEGER,
CONSTRAINT wishlist_wish_id_pk PRIMARY KEY (wish_id),
CONSTRAINT wishlist_adopter_id_fk FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id),
CONSTRAINT wishlist_desired_breed_fk FOREIGN KEY (desired_breed) REFERENCES breed(breed_id)
);

INSERT INTO wishlist VALUES
(1, 3, 1, 'm', 198);

INSERT INTO wishlist VALUES
(2, 5, 1, 'm', 18);

INSERT INTO wishlist VALUES
(3, 23, 2, 'f', 187);

INSERT INTO wishlist VALUES
(4, 67, 2, 'f', 36);

INSERT INTO wishlist VALUES
(5, 2, 1, 'm', 198);

INSERT INTO wishlist VALUES
(6, 2, 3, 'm', 12);

INSERT INTO wishlist VALUES
(7, 38, 4, 'm', 18);

INSERT INTO wishlist VALUES
(8, 29, 3, 'm', 35);

INSERT INTO wishlist VALUES
(9, 79, 1, 'f', 25);

INSERT INTO wishlist VALUES
(10, 2, 2, 'f', 21);

INSERT INTO wishlist VALUES
(11, 18, 1, 'f', 158);

INSERT INTO wishlist VALUES
(12, 15, 0, 'f', 36);

INSERT INTO wishlist VALUES
(13, 10, 1, 'm', 187);

INSERT INTO wishlist VALUES
(14, 10, 3, 'f', 35);

INSERT INTO wishlist VALUES
(15, 15, 1, 'f', 1);

INSERT INTO wishlist VALUES
(16, 57, 5, 'm', 31);

INSERT INTO wishlist VALUES
(17, 29, 1, 'f', 25);

INSERT INTO wishlist VALUES
(18, 67, 1, 'm', 25);

CREATE TABLE animal
(animal_id INTEGER,
 animal_name VARCHAR(20),
 animal_age INTEGER,
 animal_weight DECIMAL(4,1),
 animal_gender CHAR(1),
 arrival_date DATE,
 vol_id INT,
 breed_id INT,
 CONSTRAINT animal_animal_id_pk PRIMARY KEY (animal_id),
 CONSTRAINT animal_vol_id_fk FOREIGN KEY (vol_id) REFERENCES volunteer(vol_id),
 CONSTRAINT animal_breed_id_fk FOREIGN KEY (breed_id) REFERENCES breed(breed_id)
);

INSERT INTO animal VALUES
(1, 'Precious', 2, 33, 'F', '2018-9-28', 13, 5);

INSERT INTO animal VALUES
(2, 'Rocky', 4, 68, 'M', '2018-12-12', 121, 2);

INSERT INTO animal VALUES
(3, 'Daisy', 6, 30, 'F', '2018-1-02', 452, 6);

INSERT INTO animal VALUES
(4, 'Max', 1, 24, 'M', '2018-2-12', 18, 4);

INSERT INTO animal VALUES
(5, 'Frisco', 3, 18, 'M', '2018-1-22', 231, 10);

INSERT INTO animal VALUES
(6, 'Dakota', 1, 45, 'F', '2017-10-10', 1, 8); 

INSERT INTO animal VALUES
(7, 'Sophie', 2, 22, 'F', '2017-3-14', 37, 12);

INSERT INTO animal VALUES
(8, 'Coco', 3, 55, 'M', '2017-3-25', 438, 14);

INSERT INTO animal VALUES
(9, 'Sasha', 1, 62, 'M', '2018-4-10', NULL, 3);

INSERT INTO animal VALUES
(10, 'Duke', 6, 51, 'M', '2018-1-05', 19, 14);

INSERT INTO animal VALUES
(11, 'Rascal',1, 30, 'M', '2018-2-22', NULL , 10);

INSERT INTO animal VALUES
(12, 'Pepi', 2,27, 'F', '2018-2-28', NULL , 2);

INSERT INTO animal VALUES
(13, 'Peanut', 2, 68, 'M', '2018-3-25', 117, 5);

INSERT INTO animal VALUES
(14, 'Ginger', 3, 19, 'F', '2018-3-15', NULL, 10);

INSERT INTO animal VALUES
(15, 'Tigger', 2, 7, 'M', '2017-12-12', 13, 15); 

INSERT INTO animal VALUES
(16, 'Shadow', 1, 6, 'F', '2018-2-08', NULL , 29);

INSERT INTO animal VALUES
(17, 'Midnight', 4, 14, 'M', '2018-3-12', 19, 38);    

INSERT INTO animal VALUES
(18, 'Samantha', 3, 8, 'F', '2017-11-15', 117, 18);

INSERT INTO animal VALUES
(19, 'Snowball', 1, 10, 'M', '2018-9-5', 209, 57);

INSERT INTO animal VALUES
(20, 'Mystic', 3, 5, 'F', '2018-3-08', 18, 44);

INSERT INTO animal VALUES
(21, 'Tweety', 5, .2, 'F', '2018-7-22', NULL, 67);

INSERT INTO animal VALUES
(22, 'Romeo', 2, .3, 'M', '2018-1-18', 231, 83);

INSERT INTO animal VALUES
(23, 'Juliet', 3, .3, 'F', '2017-12-24', 117, 83);

-- COMMIT;





