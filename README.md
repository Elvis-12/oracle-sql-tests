# Flight and Passenger Management System

## Problem Statement

This database system is designed to manage passengers, flights, tickets, and airports. The system allows for the registration of passengers, the scheduling of flights, and the issuance of tickets. Each ticket is associated with a specific flight and a specific passenger.

## SQL Commands Executed

### Tables Created:

- **Passengers**: Stores passenger details such as `passenger_id`, `passport_nbr`, `name`, and `phone_nbr`.
- **Airports**: Stores airport details like `airport_id`, `airport_name`, `city`, and `country`.
- **Flights**: Stores flight details with relationships to `origin_airport` and `destination_airport`.
- **Tickets**: Stores ticket information linking passengers to flights.

### Operations Performed:

1. Inserted sample data into **Passengers**, **Airports**, **Flights**, and **Tickets**.
2. Executed `JOIN` operations to retrieve related information across multiple tables.
3. Updated passenger details and deleted specific records.
4. Executed `DDL` (create table), `DML` (insert, update, delete), `TCL` (commit), and `DCL` (grant, revoke) operations.

### 1. Conceptual Diagram:

![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/50f5327ffc902afdbfef067256f499a20471dc9b/conceptual%20diagram.png)

### 2. Create Tables

### i) Passengers Table

```sql
CREATE TABLE Passengers (
    passenger_id NUMBER PRIMARY KEY,
    passport_nbr VARCHAR2(50) ,
    name VARCHAR2(100),
    phone_nbr VARCHAR2(20)
);
```

### ii) Flights Table

```sql
CREATE TABLE Flights (
    flight_id NUMBER PRIMARY KEY,
    airline_name VARCHAR2(100),
    origin_airport VARCHAR2(100),
    destination_airport VARCHAR2(100)
);
```

### iii)Tickets Table

```sql
CREATE TABLE Tickets (
    ticket_id NUMBER PRIMARY KEY,
    flight_id NUMBER,
    passenger_id NUMBER,
    classes VARCHAR2(50),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);
```

### 3. Insert Data

### i) Insert into Passengers

```sql
INSERT INTO Passengers (passenger_id, passport_nbr, name, phone_nbr)
VALUES (1, 'P1234567', 'Hoodie', '0788346578');
INSERT INTO Passengers (passenger_id, passport_nbr, name, phone_nbr)
VALUES (2, 'P9876543', 'jay jay', '0798765432');
INSERT INTO Passengers (passenger_id, passport_nbr, name, phone_nbr)
VALUES (3, 'P1122334', 'kalisa', '0788767689');
```

### ii) Insert into Flights

```sql
INSERT INTO Flights (flight_id, airline_name, origin_airport, destination_airport)
VALUES (101, 'RWandair', 'KGL', 'ABJ');
INSERT INTO Flights (flight_id, airline_name, origin_airport, destination_airport)
VALUES (102, 'American Airlines', 'CLE', 'ORD');
INSERT INTO Flights (flight_id, airline_name, origin_airport, destination_airport)
VALUES (103, 'Qatar', 'QTR', 'LGL');
```

### iii) Insert into Tickets

```sql
INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
VALUES (1001, 101, 1, 'Economy');
INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
VALUES (1002, 102, 2, 'Business');
INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
VALUES (1003, 103, 3, 'First class');
```

### 4. Update Data

#### Updating from the passenger table where we changed the phone nbr of the passenger with the id "1"

```sql
UPDATE Passengers
SET phone_nbr = '00000000'
WHERE passenger_id = 1;
```

### 5. Delete Data

#### Deleting from the tickets table a ticket where the ticket id is"1002"

```sql
DELETE FROM Tickets
WHERE ticket_id = 1002;
```

### 6. Perform Joins to Retrieve Related Data

#### Retrieve Passenger Name and Flight Information

```sql
SELECT p.name, f.airline_name, f.origin_airport, f.destination_airport, t.classes
FROM Passengers p
JOIN Tickets t ON p.passenger_id = t.passenger_id
JOIN Flights f ON t.flight_id = f.flight_id;
```

### 7. Selecting info from the tables

```sql
SELECT * FROM Passengers;
SELECT * FROM Flights;
SELECT * FROM Tickets;
```

### 8.DCL (Data Control Language)

```sql
GRANT SELECT, INSERT ON Passengers TO XDB;
REVOKE INSERT ON Passengers FROM XDB;
```

### 9. TCL (Transaction Control Language):

```sql
BEGIN
    INSERT INTO Tickets (ticket_id, flight_id, passenger_id, classes)
    VALUES (1003, 101, 2, 'First Class');

    COMMIT;
END;
```
