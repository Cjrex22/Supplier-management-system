# Setup Guide - Supplier Management System

This guide outlines the steps to get the Supplier Management System running on your local machine.

## 1. Prerequisites

Before you begin, ensure you have the following installed:

- **Java Development Kit (JDK) 8 or higher**: The project is built using Java.
- **MySQL Server**: Used for the application database.
- **Apache Ant**: A build tool used to compile and run the project.

### Installation Commands (Mac/Homebrew)
```bash
brew install openjdk@11
brew install mysql
brew install ant
```

## 2. Database Setup

1. **Start MySQL Server**: Ensure your MySQL service is running.
2. **Create Database**: Open your MySQL terminal or a GUI tool (like MySQL Workbench) and create a database named `projectDatabase`.
   ```sql
   CREATE DATABASE projectDatabase;
   ```
3. **Import Data**: Import the provided `projectdatabase.sql` file into the new database.
   ```bash
   mysql -u root projectDatabase < projectdatabase.sql
   ```

## 3. Configuration

If your MySQL `root` user has a password or if you're using a different port, update the connection settings in:
`src/DataBase_connect.java`

Look for these lines:
```java
String host = "jdbc:mysql://localhost:3306/";
String dbName = "projectDatabase";
String username = "root";
String password = "";
```

## 4. Running the Application

### Option A: Using the Launcher Script (Recommended)

**On Mac/Linux:**
1. Open a terminal in the project folder.
2. Run the launcher script:
   ```bash
   chmod +x Start_App.command
   ./Start_App.command
   ```

**On Windows:**
1. Simply double-click `run.bat` in the project folder.

### Option B: Using Apache Ant (Manual)

If you prefer to use the command line directly:
```bash
ant run
```

## Login Credentials
- **Username:** `admin`
- **Password:** `pass`
