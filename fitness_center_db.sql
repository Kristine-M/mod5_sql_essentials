CREATE DATABASE fitness_center_db;

USE fitness_center_db;

CREATE TABLE Trainers (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(id)
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    duration VARCHAR(50),
    member_id INT,
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

ALTER TABLE WorkoutSessions
ADD session_time VARCHAR(255);

INSERT INTO Trainers(id, name)
VALUES (7, 'loki'),
(4, 'bruce'),
(8, 'chris'),
(5, 'paul');

INSERT INTO Members (id, name, age, trainer_id)
VALUES (1, 'kris', 20, 7),
(2, 'kelly', 25, 4),
(3, 'jenny', 35, 8),
(4, 'Jane Doe', 40, 5);

INSERT INTO WorkoutSessions (session_id, member_id, session_time)
VALUES (1, 1, 'noon'),
(2, 2, 'evening'),
(3, 3, 'evening'),
(4, 4, 'morning');

SELECT * FROM Members;

UPDATE WorkoutSessions
SET session_time = 'evening'
WHERE session_id = 4;

-- I didn't want to add another member, so I'll
-- be deleting jane doe instead of john smith
DELETE FROM WorkoutSessions
WHERE session_id = 4;

DELETE FROM Members
WHERE id = 4;