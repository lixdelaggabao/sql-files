USE AdventureWorks2019;

SELECT COLUMN_NAME AS 'Column_Name', TABLE_NAME AS 'Table_Name'
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE COLUMN_NAME LIKE '%BirthDate%'
ORDER BY Table_Name, Column_Name;

SELECT COLUMN_NAME AS 'Column_Name', TABLE_NAME AS 'Table_Name'
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE COLUMN_NAME LIKE '%City%'
ORDER BY Table_Name, Column_Name;

select * from INFORMATION_SCHEMA.COLUMNS 
where COLUMN_NAME like '%BirthDate%' 
order by TABLE_NAME;

select * from INFORMATION_SCHEMA.COLUMNS 
where COLUMN_NAME like '%City%' 
order by TABLE_NAME;

SELECT Year(BirthDate) AS Year, City, COUNT(*) AS 'Number of Customers'
FROM Sales.vPersonDemographics
JOIN Sales.vIndividualCustomer
ON Sales.vPersonDemographics.BusinessEntityID = Sales.vIndividualCustomer.BusinessEntityID
GROUP BY Year(BirthDate), City ORDER BY Year(BirthDate) ASC, City ASC;

