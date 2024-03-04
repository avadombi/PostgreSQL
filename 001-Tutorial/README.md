# 1. What is a Database

* Postgre vs SQL

Postgre is an object-relational DB (ORDB) management system (also known as a DB engine) while SQL is a Structured Query Language. SQL allows to interact with ORDB such as Postgre.

* How data is stored

Data is stored in tables and tables are formed by rows and columns.

![alt text](images/introduction/image-1.png)

* What is a relational database

A relational DB is a relation between one or more tables

![alt text](images/introduction/image-2.png)

# 2. How to connect to DB server

Locally, our computer acts as a DB server. Below are different options to connect to the DB server (our computer):

![alt text](images/introduction/image-3.png)

## 2.1. GUI Clients
Below are some clients that can be used to connect to our DB server:

* DataGrip
* Postico
* pg Admin 4 (for Windows users)

## 2.2. Terminal / Command Line (CLI)

In the Windows start-up menu, search for "SQL Shell (psql)".

### 2.2.1. Connection to a database using SQL Shell (psql)

* **Connection**
![alt text](images/introduction/image-4.png)


* **Result after connection**

![alt text](images/introduction/image-5.png)

* **Create a new database named: test**

> * \? give you the help documentation. To quit: CTRL + C

> * \q followed by O to quit

> * \! cls to clear the terminal

> * \l list the currently available databases

![alt text](images/introduction/image-6.png)

Database creation

![alt text](images/introduction/image-7.png)

![alt text](images/introduction/image-8.png)

### 2.2.2. Connect to a database (here: test) using Windows CMD (or Powershell)

From now, we going to use Windows Command Promt (CMD) or Powershell. Note that the above CLI can be executed by CMD.

![alt text](images/introduction/image-9.png)

To switch to another database, you can type:
```
\c database_name
```

![alt text](images/introduction/image-10.png)

Note: In CMD, you can type `psql --help` to get some useful info.


### 2.2.3. A very dangerous command: DROP command

Before using it, be sure you have a backup of it


## 3. CRUD operations

### 3.1. CREATE A TABLE

![alt text](images/CRUD/CREATE/image-1.png)

* Complete list of data type in PostgreSQL

https://www.postgresql.org/docs/current/datatype.html


* Create a table without constraints

![alt text](images/CRUD/CREATE/image-2.png)

and list tables using: \d

![alt text](images/CRUD/CREATE/image-3.png)