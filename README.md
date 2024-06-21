PM Awas Yojana Application

This Java application interacts with a database to manage data related to the Pradhan Mantri Awas Yojana (PMAY) scheme. The application demonstrates basic CRUD (Create, Read, Update, Delete) operations using JDBC (Java Database Connectivity).
Features

    Database Connectivity: Connects to a MySQL database using JDBC.
    CRUD Operations:
        Create: Add new housing data entries.
        Read: View all housing data entries.
        Update: Modify existing housing data entries.
        Delete: Remove housing data entries.

Prerequisites

    Java Development Kit (JDK): Ensure JDK is installed.
    Database: MySQL server running and accessible.
    JDBC Driver: MySQL Connector/J (JDBC driver for MySQL).

Setup

    Clone the repository:

    bash

git clone https://github.com/your-username/pm-awas-yojna-app.git
cd pm-awas-yojna-app

Database Setup:

    Create a MySQL database and table using the provided schema:

sql

CREATE DATABASE awas_yojana;
USE awas_yojana;
CREATE TABLE housing_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    state VARCHAR(50),
    district VARCHAR(50),
    house_type VARCHAR(50),
    status VARCHAR(50)
);

Configure Database Credentials:

    Update the PMAwasYojanaApp.java file with your MySQL database credentials:

java

private static final String URL = "jdbc:mysql://localhost:3306/awas_yojana";
private static final String USER = "your-username";
private static final String PASSWORD = "your-password";

Compile and Run the Application:

bash

    javac -cp ".;mysql-connector-java-8.0.29.jar" PMAwasYojanaApp.java
    java -cp ".;mysql-connector-java-8.0.29.jar" PMAwasYojanaApp

Usage

    Add Housing Data: Add new records to the database.
    View Housing Data: Retrieve and display all records from the database.
    Update Housing Data: Modify existing records in the database.
    Delete Housing Data: Remove records from the database.

Contributing

Contributions are welcome! Please fork the repository and submit a pull request.
