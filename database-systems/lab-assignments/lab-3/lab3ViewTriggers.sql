-- Created by Doug King for CST2355 
-- demonstrates use of INSTEAD OF trigger on VIEW 
-- demonstrates use of stored procedure

-- Two tables - one with accounts (approved) and one with account_approvals (requiring approval)
-- plus a view that has an INSTEAD OF trigger on inserts into the view such that 
-- the trigger actually inserts the new account to the list requiring approvals unless it is already in the approved table

-- table for accounts pending approval with automatically populated account_id as primary key
DROP TABLE IF EXISTS account_approvals;
CREATE TABLE account_approvals(
    account_id INT IDENTITY PRIMARY KEY,
    account_name VARCHAR(255) NOT NULL
);

-- table for accounts already approved with automatically populated account_id as primary key
DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts(
    account_id INT IDENTITY PRIMARY KEY,
    account_name VARCHAR(255) NOT NULL
);
GO
-- now we create a view to be the union of approved and unapproved accounts
-- models an 'is-a' relationship with two child tables and a parent view
DROP VIEW IF EXISTS vw_accounts;
GO
CREATE VIEW vw_accounts
AS
SELECT
    account_id,
	account_name,
    'Approved' approval_status
FROM
    accounts
UNION
SELECT
    account_id,
	account_name,
    'Pending Approval' approval_status
FROM
    account_approvals;
GO


-- now create the trigger that does the INSTEAD OF insert
-- inserting into the view will actually insert into the table for those requiring approval
CREATE TRIGGER trg_vw_accounts 
ON vw_accounts
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO account_approvals (
		account_name
    )
    SELECT
		i.account_name
    FROM
        inserted i
    WHERE
        i.account_name NOT IN (
            SELECT 
                account_name
            FROM
                accounts
        );
END
GO

-- a useful stored procedure to approve accounts
-- inserts new account and removes it from the list requiring approval
DROP PROCEDURE IF EXISTS sp_approve_account;
GO
CREATE PROCEDURE sp_approve_account (@account_name AS nvarchar(255))
AS
BEGIN
    INSERT INTO accounts(account_name) VALUES(@account_name);
	DELETE FROM account_approvals WHERE account_name = @account_name;
END;

GO

-- some test data and interesting numbering of account_ids
INSERT INTO accounts(account_name) VALUES ('First');
INSERT INTO accounts(account_name) VALUES ('Second');
INSERt INTO accounts(account_name) VALUES ('Third');
INSERT INTO vw_accounts(account_name) VALUES ('Fourth');
INSERT INTO vw_accounts(account_name) VALUES ('Fifth');
GO
SELECT* FROM vw_accounts;
GO
EXEC sp_approve_account 'Fourth';
GO
SELECT* FROM vw_accounts;
SELECT * FROM accounts;
SELECT * FROM account_approvals;
GO
INSERT INTO vw_accounts(account_name) VALUES ('Sixth');
GO
SELECT * FROM vw_accounts;
GO
EXEC sp_approve_account 'Fifth';
GO
EXEC sp_approve_account 'Sixth';
GO
SELECT * FROM vw_accounts;
-- end of file