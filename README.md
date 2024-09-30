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
1.This shows the conceptual diagram of the problem statement 
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/50f5327ffc902afdbfef067256f499a20471dc9b/conceptual%20diagram.png)

2. This shows the creation of the tables that are available in the conceptual diagram
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/501ef54010635aed93bbf3c22d40d137f301adee/PL%20Screenshots/tables%20creation.png)

3. This show the insertion of data in the passengers table
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/inserting%20passengers.png)

4. This show the insertion of data in the flights table
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/inserting%20flights.png)

5.This show the insertion of data in the tickets table
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/inserting%20tickets.png)

6. This show the deletion of the ticket with the id 1002
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/delete.png)

7. This shows the display of data in the flights and tickets tables by selecting all data in them
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/select%20flights%20and%20tickets.png)

8.This shows the display of data in the passengers by selecting all data in it
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/select%20passengers.png)

9. This show the how we updated the passenger the phone nbr of the passenger with the first id
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/update%20passengers.png)

10. This shows the code inserts a new row into the Tickets table and commits the changes to the database.
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/TCL.png)

11. This shows how we are granting permission to the user XDB 
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/grant.png)

12.This shows how we can display a ticket of a passenger with their name, airline name, origin airport, destination airport and the class they are flying in
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/joins.png)

13. This shows how we revoke the permissions we gave to the XDB user 
![image alt](https://github.com/Elvis-12/oracle-sql-tests/blob/main/PL%20Screenshots/revoke.png)
