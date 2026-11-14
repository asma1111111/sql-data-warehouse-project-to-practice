
-- WARNING: THIS SCRIPT DELETES THE EXISTING DATABASE
-------------------------------------------------------------------------------------------------------------------------------
-- Create DataWarehouse database if it does not exist
-------------------------------------------------------------------------------------------------------------------------------
USE master;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;
END;
GO
-------------------------------------------------------------------------------------------------------------------------------
-- Switch to the DataWarehouse database
-------------------------------------------------------------------------------------------------------------------------------
USE DataWarehouse;
GO

-------------------------------------------------------------------------------------------------------------------------------
-- Create schemas if they do not already exist
-------------------------------------------------------------------------------------------------------------------------------

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'bronze'
)
BEGIN
    EXEC('CREATE SCHEMA bronze');
END;
GO

IF NOT EXISTS (
        SELECT 1
        FROM sys.schemas
        WHERE name = 'silver'
)
BEGIN
    EXEC('CREATE SCHEMA silver');
END;
GO

IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'gold'
)
BEGIN
    EXEC('CREATE SCHEMA gold');
END;
GO
