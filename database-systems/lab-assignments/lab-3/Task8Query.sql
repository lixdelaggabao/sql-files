USE AdventureWorksDW2019;

SELECT Year(BirthDate) AS Year, City, COUNT(*) AS 'Number of Customers'
FROM DimGeography
JOIN DimCustomer
ON DimGeography.GeographyKey = DimCustomer.GeographyKey
GROUP BY Year(BirthDate), City ORDER BY Year(BirthDate) ASC, City ASC;