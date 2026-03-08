@echo off
REM Supplier Management System - Run Script (Windows)
cd /d %~dp0

echo Checking dependencies...
set MISSING=0

if not exist "lib\jcalendar-1.4.jar" (echo Missing: lib\jcalendar-1.4.jar & set MISSING=1)
if not exist "lib\JTattoo.jar" (echo Missing: lib\JTattoo.jar & set MISSING=1)
if not exist "lib\rs2xml.jar" (echo Missing: lib\rs2xml.jar & set MISSING=1)
if not exist "lib\mysql-connector-java-5.1.7-bin.jar" (echo Missing: lib\mysql-connector-java-5.1.7-bin.jar & set MISSING=1)

if %MISSING%==1 (
    echo Required JAR files not found. Please ensure they are in the lib\ folder.
    pause
    exit /b 1
)

echo Starting Supplier Management System...
ant run
pause
