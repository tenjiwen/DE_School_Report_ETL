-- Create STAGING DB & SCH
CREATE DATABASE brnz_stg;

--USE brnz_stg; 
USE brnz_stg;
GO

CREATE SCHEMA bronze; 

---------------------------------------------------------
-- Create DATA WAREHOUSE DB & SCH
CREATE DATABASE slvr_dw;

--USE slvr_dw; 

CREATE SCHEMA silver; 

CREATE SCHEMA gold;