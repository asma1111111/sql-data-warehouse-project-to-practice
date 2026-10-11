
-- WARNING: THIS SCRIPT DELETES THE EXISTING DATABASE
-- If DataWarehouse exists, it will erase all tables and data
-- and create a new, empty database.

USE master;
GO
-- Check if the database exists
IF EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'DataWarehouse'
)
BEGIN
    -- Disconnect users and roll back active transactions
    ALTER DATABASE DataWarehouse
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    -- Delete the existing database permanently
    DROP DATABASE DataWarehouse;
END;
GO

-- Create a new database
CREATE DATABASE DataWarehouse;
GO

-- Select the new database
USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
