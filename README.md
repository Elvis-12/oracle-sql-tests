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

#Screenshots:

https://github.com/Elvis-12/oracle-sql-tests/blob/50f5327ffc902afdbfef067256f499a20471dc9b/conceptual%20diagram.png
