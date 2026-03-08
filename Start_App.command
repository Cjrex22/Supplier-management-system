#!/bin/bash
# Supplier Management System - Desktop Launcher
cd "$(dirname "$0")"

echo "=========================================="
echo "    Supplier Management System Launcher   "
echo "=========================================="

# Add commonly used paths
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

echo "Checking tools..."
if ! command -v ant &> /dev/null; then
    echo "Error: Apache Ant not found. Please install it or try again."
    read -p "Press enter to exit..."
    exit 1
fi

if ! command -v mysql &> /dev/null; then
    echo "Error: MySQL not found. Please ensure it is installed and running."
    read -p "Press enter to exit..."
    exit 1
fi

echo "Checking dependencies..."
for jar in "lib/jcalendar-1.4.jar" "lib/JTattoo.jar" "lib/rs2xml.jar" "lib/mysql-connector-java-5.1.7-bin.jar"; do
    if [ ! -f "$jar" ]; then
        echo "Missing: $jar"
        MISSING=1
    fi
done

if [ "$MISSING" == "1" ]; then
    echo "Error: Required JAR files not found in lib/ folder."
    read -p "Press enter to exit..."
    exit 1
fi

echo "All checks passed! Starting application..."
ant run

if [ $? -ne 0 ]; then
    echo ""
    echo "Something went wrong. Please check if MySQL is running."
    read -p "Press enter to exit..."
fi
