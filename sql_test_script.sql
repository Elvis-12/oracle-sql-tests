CREATE TABLE Passengers (
    passenger_id NUMBER PRIMARY KEY,
    passport_nbr VARCHAR2(50),
    name VARCHAR2(100),
    phone_nbr VARCHAR2(20)
);

CREATE TABLE Flights (
    flight_id NUMBER PRIMARY KEY,
    airline_name VARCHAR2(100),
    origin_airport VARCHAR2(100),
    destination_airport VARCHAR2(100)
);


CREATE TABLE Tickets (
    ticket_id NUMBER PRIMARY KEY,
    flight_id NUMBER,
    passenger_id NUMBER,
    classes VARCHAR2(50),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);


INSERT INTO Passengers (passenger_id, passport_nbr, name, phone_nbr)
VALUES (1, 'P1234567', 'Hoodie', '0788346578');
INSERT INTO Passengers (passenger_id, passport_nbr, name, phone_nbr)
VALUES (2, 'P9876543', 'jay jay', '0798765432');
INSERT INTO Passengers (passenger_id, passport_nbr, name, phone_nbr)
VALUES (3, 'P1122334', 'kalisa', '0788767689');


INSERT INTO Flights (flight_id, airline_name, origin_airport, destination_airport)
VALUES (101, 'RWandair', 'KGL', 'ABJ');
INSERT INTO Flights (flight_id, airline_name, origin_airport, destination_airport)
VALUES (102, 'American Airlines', 'CLE', 'ORD');
INSERT INTO Flights (flight_id, airline_name, origin_airport, destination_airport)
VALUES (103, 'Qatar', 'QTR', 'LGL');


INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
VALUES (1001, 101, 1, 'Economy');
INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
VALUES (1002, 102, 2, 'Business');
INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
VALUES (1003, 103, 3, 'First class');


UPDATE Passengers
SET phone_nbr = '00000000'
WHERE passenger_id = 1;


DELETE FROM Tickets
WHERE ticket_id = 1002;


SELECT p.name, f.airline_name, f.origin_airport, f.destination_airport, t.classes
FROM Passengers p
JOIN Tickets t ON p.passenger_id = t.passenger_id
JOIN Flights f ON t.flight_id = f.flight_id;

GRANT SELECT, INSERT ON Passengers TO XDB;
REVOKE INSERT ON Passengers FROM XDB;


BEGIN
    INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
    VALUES (1003, 101, 2, 'First Class');
    
    COMMIT;
END;









