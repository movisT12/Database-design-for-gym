CREATE TABLE Location (
    Location_id INT PRIMARY KEY,
    Location_name VARCHAR(100),
    Location_address VARCHAR(150),
    Location_email VARCHAR(100),
    Location_Number  VARCHAR(10)
);
CREATE TABLE Coach (
    Coach_id INT PRIMARY KEY,
    Coach_Name VARCHAR(100),
    Coach_Level VARCHAR(50),
    Coach_Email VARCHAR(100),
    Coach_phone VARCHAR(15),
    Home_Location_ID INT,
    Descriptions VARCHAR(100),
    FOREIGN KEY (Home_Location_ID) REFERENCES Location(Location_id)
);
CREATE TABLE Location_coaches (
    Location_id INT,
    Coach_id INT,
    Times_visits_this_location_in_month INT, 
    PRIMARY KEY (Location_id, Coach_id),
    FOREIGN KEY (Location_id) REFERENCES Location(Location_id),
    FOREIGN KEY (Coach_id) REFERENCES Coach(Coach_id)
);
CREATE TABLE Class (
    Class_id INT PRIMARY KEY,
    Class_price DECIMAL(10,2),
    Class_name VARCHAR(20)
);
CREATE TABLE Location_Classes(
    CLASS_ID INT,
    LOCATION_ID INT,
    CLASS_DAY VARCHAR(50),
    CLASS_TIME TIME,
    ROOM_NAME VARCHAR(50)
);
CREATE TABLE AMENITIES(
    AMENITIE_ID INT PRIMARY KEY,
    AMENITIE_NAME VARCHAR(50)
);
CREATE TABLE LOCATION_AMENITIES(
    AMENITIE_ID INT,
    LOCATION_ID INT,
    PRIMARY KEY (AMENITIE_ID,LOCATION_ID),
    FOREIGN KEY (AMENITIE_ID) REFERENCES AMENITIES(AMENITIE_ID),
    FOREIGN KEY (LOCATION_ID) REFERENCES LOCATION(LOCATION_ID)
);
CREATE TABLE Client (
    Client_id INT PRIMARY KEY,
    Client_name VARCHAR(100),
    Client_phone VARCHAR(15),
    Client_Email VARCHAR(50)
);
CREATE TABLE Coach_Client (
    Coach_id INT,
    Client_id INT,
    Reference_id INT,
    PRIMARY KEY (Coach_id, Client_id),
    FOREIGN KEY (Coach_id) REFERENCES Coach(Coach_id),
    FOREIGN KEY (Client_id) REFERENCES Client(Client_id)
);
CREATE TABLE Certification (
    Certification_id INT PRIMARY KEY,
    Certification_name VARCHAR(100)
);
CREATE TABLE Coach_Certification (
    Coach_id INT,
    Certification_id INT,
    PRIMARY KEY (Coach_id, Certification_id),
    FOREIGN KEY (Coach_id) REFERENCES Coach(Coach_id),
    FOREIGN KEY (Certification_id) REFERENCES Certification(Certification_id)
);
CREATE TABLE Review (
    Review_id INT PRIMARY KEY,
    Coach_id INT,
    Review_comments TEXT,
    Communication_skills INT,
    Punctuality INT,
    Enthusiasm INT,
    Knowledge_share INT,
    FOREIGN KEY (Coach_id) REFERENCES Coach(Coach_id)
);

INSERT INTO Location VALUES
(1, 'Midtown Gym', '123 Main St, Midtown', 'midtown@gym.com', '5551234567');

INSERT INTO Coach VALUES
(1, 'Sally', 'Advanced', 'sally@gym.com', '5559876543', 1, 'Strength coach with 10 years experience');


INSERT INTO Location_coaches VALUES
(1, 1, 12);  


INSERT INTO Class VALUES
(1, 29.99, 'Yoga');


INSERT INTO Location_Classes VALUES
(1, 1, 'Monday', '10:00:00', 'Studio A');

INSERT INTO AMENITIES VALUES
(1, 'Sauna');


INSERT INTO LOCATION_AMENITIES VALUES
(1, 1);  


INSERT INTO Client VALUES
(1, 'Jane Doe', '5550001234', 'jane.doe@email.com');


INSERT INTO Coach_Client VALUES
(1, 1, 1001);  


INSERT INTO Certification VALUES
(1, 'NASM CPT');


INSERT INTO Coach_Certification VALUES
(1, 1); 


INSERT INTO Review VALUES
(1, 1, 'Great coach, very motivational!', 5, 5, 5, 5);


SELECT *
FROM LOCATION

SELECT *
FROM LOCATION
WHERE Location_name='Midtown Gym'

SELECT *
FROM coach

SELECT *
FROM COACH
WHERE COACH_NAME LIKE 'SALLY%'





