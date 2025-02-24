IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Practice')
BEGIN
  CREATE DATABASE Practice
END
GO