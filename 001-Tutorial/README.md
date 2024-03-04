# What is a Database

* Postgre vs SQL

Postgre is an object-relational DB (ORDB) management system (also known as a DB engine) while SQL is a Structured Query Language. SQL allows to interact with ORDB such as Postgre.

* How data is stored

Data is stored in tables and tables are formed by rows and columns.

![alt text](images/introduction/image-1.png)

* What is a relational database

A relational DB is a relation between one or more tables

![alt text](images/introduction/image-2.png)

# How to connect to DB server

Locally, our computer acts as a DB server. Below are different options to connect to the DB server (our computer):

![alt text](images/introduction/image-3.png)

## GUI Clients
Below are some clients that can be used to connect to our DB server:

* DataGrip
* Postico
* pg Admin 4 (for Windows users)

## Terminal / Command Line (CLI)

In the Windows start-up menu, search for "SQL Shell (psql)".

* **Connection**

![alt text](images/introduction/image-4.png)

* **Result after connection**

![alt text](images/introduction/image-5.png)

* **Create a new database**

> \? give you the help documentation

> \q followed by O to quit

> \l list the currently available databases

![alt text](images/introduction/image-6.png)

> create a database named: test

![alt text](images/introduction/image-7.png)

![alt text](images/introduction/image-8.png)

