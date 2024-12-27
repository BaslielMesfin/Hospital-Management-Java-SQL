Hospital Management System

A simple yet effective Java-based application designed to manage hospital records, including patient history, doctor information, appointment setting, and medicine inventory. This project demonstrates the use of Java programming and SQL database integration.



Usage Instructions

Prerequisites

Java: Ensure you have Java 11 or later installed on your system.
Microsoft SQL Server: Install Microsoft SQL Server and create a database named Hospital_Management.
JDBC Driver: Add the mssql-jdbc-12.8.1.jre11.jar file to the project's lib folder for database connectivity.

Setting Up the Project

Clone or download the project repository.
Open the project folder in your preferred IDE (e.g., IntelliJ, VS Code).
Add the mssql-jdbc-12.8.1.jre11.jar file to your project's build path or classpath.

Configuring the Database

Open the DatabaseConnection class.
Verify or update the database connection string:
Copy code: String connectionString = "jdbc:sqlserver://localhost:1433;databaseName=Hospital_Management;integratedSecurity=true;trustServerCertificate=true;";

Ensure your database contains the required tables:
Patient
Doctor
Appointment
Medicine



Documentation

Project Structure
src/:
	Contains all the source code files, including Main.java and various management classes.
lib/:
	Includes the JDBC driver required for database connectivity.
DatabaseConnection.java:
	Manages the opening and closing of the database connection.



Notes

The application is designed to work with a local SQL Server database. To run it on another computer, the following steps must be taken:
  - Set up Microsoft SQL Server locally.
  - Update the DatabaseConnection class with your computer's database connection details.
  - Recreate the database schema and populate the required tables.
