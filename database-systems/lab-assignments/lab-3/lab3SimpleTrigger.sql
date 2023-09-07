-- Example for CST2355 Created by Doug King
USE [lab3]
GO
DROP TRIGGER IF EXISTS BadFirstName;
GO
CREATE TRIGGER BadFirstName
ON Employees
FOR INSERT, UPDATE
AS
Begin
	DECLARE
        @FirstName nvarchar(255)
	DECLARE
		@LastName nvarchar(255)
        
	SELECT  @FirstName=FirstName, @LastName=LastName FROM INSERTED;

	IF @FirstName = 'Mickey' AND @LastName = 'Mouse'
		BEGIN
			RAISERROR ('Data Validation Error:  Cannot use the name Mickey Mouse.' ,10,1)
			ROLLBACK TRANSACTION
		END 
END
