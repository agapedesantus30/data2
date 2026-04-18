-- script to create SA FITNESS database
-- revised 6/10/2014 LP

--  Drop tables to allow for multiple runs

-- DROP TABLE personal_training;
-- DROP TABLE group_class;
-- DROP TABLE workout;
-- DROP TABLE trainer;
-- DROP TABLE client;
-- DROP TABLE plan;

-- Create tables

CREATE TABLE plan
(plan_id INTEGER,
begin_date DATE,
InitFee DECIMAL(6,2),
MonthFee DECIMAL(6,2),
PTFee DECIMAL(6,2),
Duration INTEGER,
CONSTRAINT plan_plan_id_PK PRIMARY KEY(plan_id));

INSERT INTO plan VALUES
(1, '2018-05-11', 125, 29.95, 30, 12);

INSERT INTO plan VALUES
(2, '2017-01-12', 50, NULL, 40, 12);

INSERT INTO plan VALUES
(3, '2014-06-10', 125, 30, 50, 24);

INSERT INTO plan VALUES
(4, '2011-03-11', 150, 50, 50, 24);

INSERT INTO plan VALUES
(5, '2018-07-12', 100, NULL, 30, 12);

INSERT INTO plan VALUES
(6, '2016-12-15', 200, 75, 50, 24);

CREATE TABLE client
(client_id INTEGER,
c_first VARCHAR(20),
c_last VARCHAR(20),
c_street VARCHAR(40),
c_city VARCHAR(20),
c_state CHAR(2),
c_zip VARCHAR(10),
c_phone VARCHAR(10),
c_height_feet INTEGER,
c_height_inches INTEGER,
c_weight INTEGER,
plan_id INTEGER, 
CONSTRAINT client_client_id_pk PRIMARY KEY (client_id)
);

INSERT INTO client VALUES
(1, 'Alicia', 'Morris', '223 Island Dr.', 'San Antonio', 'TX', '78103', '2105295585', 5, 10, 145, 1);

INSERT INTO client VALUES
(12, 'Betty', 'Claymore', '858 Harbor Isle', 'Canyon Lake', 'TX', '78103', '2105298512', 5, 6, 230, 3);

INSERT INTO client VALUES
(18, 'Janet', 'Sanchez', '326 Stonewall St.', 'San Antonio', 'TX', '78112', '2105258667', 5, 5, 125, 4);

INSERT INTO client VALUES
(21, 'Emily', 'St. Andry', '61 River Mist Lane', 'New Braunfels', 'TX', '78103', '2105293408', 5, 11, 105, 1);

INSERT INTO client VALUES
(25, 'Michael', 'Garcia', '74 Poplar Pike', 'Germantown', 'TX', '38138', '2105256132', 6, 2, 280, NULL);

INSERT INTO client VALUES
(31, 'Jim', 'Rivera', '1460 Woodbend', 'San Antonio', 'TX', '78103', '2105290678', 6, 0, 268, 5);

INSERT INTO client VALUES
(35, 'Merry', 'King', '2121 Westfair Dr.', 'Live Oak', 'TX', '78138', '2105254430', 5, 10, 145, 1);

INSERT INTO client VALUES
(36, 'Elise', 'Rikard', '580 Fairwoods', 'New Braunfels', 'TX', '78132', '2105287356', 5, 4, 125, 3);

INSERT INTO client VALUES
(158, 'Amanda', 'Charize', '2925 Cross Avenue', 'San Antonio', 'TX', '78103', '2105294431', 5, 2, 170, 5);

INSERT INTO client VALUES
(187, 'James', 'Lee', '87 Lower Woods Circle', 'San Marcos', 'TX', '78138', '2105250663', 5, 11, 190, 4);

INSERT INTO client VALUES
(198, 'SunYun', 'Chen', '1150 River Falls', 'San Antonio', 'TX', '78120', '2105298302', 5, 5, 105, 1 );


CREATE TABLE trainer 
(train_id INTEGER,
train_first VARCHAR(20),
train_last VARCHAR(20),
train_street VARCHAR(40),
train_city VARCHAR(20),
train_state CHAR(2),
train_zip VARCHAR(10),
train_phone VARCHAR(10),
train_DOB DATE,
salary DECIMAL (6, 2), 
CONSTRAINT trainer_train_id_pk PRIMARY KEY (train_id)
);


INSERT INTO trainer VALUES
(1, 'Maros', 'Josephs', '810 Shelby Dr.', 'San Antonio', 'TX', '78103', '2105295520', '1989-12-12', 32.50);

INSERT INTO trainer VALUES
(13, 'Jim', 'Torres', '2516 Harbor Isle', 'San Antonio', 'TX', '78103', '2105298534', '1992-01-30', NULL);

INSERT INTO trainer VALUES
(18, 'Catherine', 'Johnson', '765 Moss Terrace', 'San Antonio', 'TX', '38112', '2105258123', '1990-03-06', 21.80);

INSERT INTO trainer VALUES
(19, 'Samuel', 'Kingsley', '1120 Washington Ave.', 'San Antonio', 'TX', '38120', '2105298210', '1990-10-23', 32);

INSERT INTO trainer VALUES
(37, 'Gerrie', 'Cruz', '332 Blanchard', 'San Antonio', 'TX', '38103', '2105290222', '1987-11-12', 25.50);

INSERT INTO trainer VALUES
(121, 'Abraham', 'Clark', '3829 Union St.', 'San Antonio', 'TX', '38103', '2105293444', '1989-04-07', 40);

INSERT INTO trainer VALUES
(231, 'Patrice', 'LeBlanc', '768 Fairwoods', 'San Marcos', 'TX', '38138', '2105256789', '1988-02-14', 24);

INSERT INTO trainer VALUES
(259, 'Patrice', 'Diaz', '564 Hope Avenue', 'San Antonio', 'TX', '38103', '2105294991', '1994-03-18', NULL);

INSERT INTO trainer VALUES
(412, 'Gwen', 'Lopez', '1302 Lakeshore Dr.', 'Live Oak', 'TX', '38138', '2105251000', '1993-06-29', 30);

INSERT INTO trainer VALUES
(638, 'Joseph', 'Silvia', '131 West Court', 'San Marcos', 'TX', '38107', '2105286532', '1995-01-30', 18.95);

INSERT INTO trainer VALUES
(617, 'Seung', 'Ding', '879 Julia Circle', 'Live Oak', 'TX', '38138', '2105250533', '1994-05-09', 22.35);

CREATE TABLE workout
(workout_id INTEGER,
workout_length INTEGER,
day_time VARCHAR(30),
workout_type CHAR(1),
train_id INTEGER,
CONSTRAINT workout_workout_id_PK PRIMARY KEY(workout_id),
CONSTRAINT workout_train_id_FK FOREIGN KEY(train_id) REFERENCES trainer(train_id)
);

INSERT INTO workout VALUES
(10, 30, 'May 02, 2018 09:00 a.m.', 'G', 231);

INSERT INTO workout VALUES
(20, 60, 'June 15, 2018 10:00 a.m.', 'G', 121);

INSERT INTO workout VALUES
(30, 60, 'July 15, 2018 03:00 p.m.', 'G', 412);

INSERT INTO workout VALUES
(40, 60, 'September 28, 2018 07:00 p.m.', 'G', 638);

INSERT INTO workout VALUES
(50, 30, 'March 10, 2018 10:00 a.m.',  'P', 1);

INSERT INTO workout VALUES
(60, 30, 'July 01, 2018 11:00 a.m.', 'P', 13);

INSERT INTO workout VALUES
(70, 30, 'November 10, 2018 08:00 a.m.', 'P', 19);

INSERT INTO workout VALUES
(80, 30, 'January 01, 2018 06:00 a.m.', 'P', 638);

INSERT INTO workout VALUES
(90, 30, 'April 20, 2018 05:00 p.m.', 'P', 617);

INSERT INTO workout VALUES
(100, 60, 'July 01, 2018 08:00 p.m.', 'P', 259);

CREATE TABLE group_class
(group_id INTEGER,
className VARCHAR(30),
calories_burned INTEGER,
CONSTRAINT group_class_group_id_PK PRIMARY KEY(group_id)
-- CONSTRAINT group_class_group_id_FK FOREIGN KEY(group_id) REFERENCES workout(work_id)
);

INSERT INTO group_class VALUES
(10, 'Body Works Plus Abs', 500);

INSERT INTO group_class VALUES
(20, 'Aqua Fit', 330);

INSERT INTO group_class VALUES
(30, 'Mat Pilates', 400);

INSERT INTO group_class VALUES
(40, 'Cardio Kick Boxing', 550);

CREATE TABLE personal_training
(pertrain_id INTEGER,
client_id INTEGER,
goals VARCHAR(40),
CONSTRAINT personal_pertrain_client_PK PRIMARY KEY (pertrain_id, client_id),
-- CONSTRAINT personal_pertrain_id_FK FOREIGN KEY (pertrain_id) REFERENCES workout(work_id),
CONSTRAINT personal_client_id_FK FOREIGN KEY (client_id) REFERENCES client(client_id)
);

INSERT INTO personal_training VALUES
(50, 12, 'Lose 100 pounds');

INSERT INTO personal_training VALUES
(60, 187, 'Build upper body strength');

INSERT INTO personal_training VALUES
(70, 36, 'Increase cardio endurance');

INSERT INTO personal_training VALUES
(80, 25, 'Run a marathon');

INSERT INTO personal_training VALUES
(90, 31, 'Healthier lifestyle');

INSERT INTO personal_training VALUES
(100, 198, 'Strengthen abs and core');
COMMIT;






-- homework 1
use fitness;
UPDATE trainer
SET train_city = 'Canyon Lake'
WHERE train_id = 1;
commit;

-- homework 2
use fitness;
select *
from trainer
where train_id = 1;
commit;

-- homework 3
use fitness;
UPDATE trainer
where salary < 25;
SET salary = 30;
commit;