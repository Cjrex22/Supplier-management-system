# Supplier Management System

A comprehensive system for managing suppliers, tracking deliveries, and handling transactions.

## Requirements

- Java 8+
- Apache Ant (`brew install ant` on Mac)
- MySQL Server

## Setup

1. **Database** – Import `projectdatabase.sql` into your MySQL database (`projectDatabase`).
2. **Configuration** – Update connection details in `src/DataBase_connect.java` if your DB credentials differ (default: root/no password).

## Run

Simply use the provided scripts:

**Mac/Linux:**
```bash
./run.sh
```

**Windows:**
Double-click `run.bat` or run it via Command Prompt.

Alternatively, run via Ant directly:
```bash
ant run
```
