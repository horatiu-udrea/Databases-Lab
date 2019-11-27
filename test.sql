CREATE OR ALTER PROCEDURE CreateTest(@Name NVARCHAR(200), @Tables NVARCHAR(1000), @Views NVARCHAR(1000))
AS
    INSERT INTO Tests (Name) VALUES (@Name)
    DECLARE TestID INT = @@IDENTITY

    INSERT INTO Tables VALUES STRING_SPLIT(@Tables, ', ')

GO