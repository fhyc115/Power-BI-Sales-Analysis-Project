-- Cleaned DIM_Customers Table --
SELECT [CustomerKey],
	--[GeographyKey],
	--[CustomerAlternateKey],
	--[Title],
	[FirstName],
	--[MiddleName],
	[LastName],
	c.[FirstName] + ' ' + c.[LastName] AS [Full Name],
	--[NameStyle],
	--[BirthDate],
	--[MaritalStatus],
	--[Suffix],
	CASE 
		WHEN c.[Gender] = 'M'
			THEN 'Male'
		WHEN c.[Gender] = 'F'
			THEN 'Female'
		END AS Gender,
	--[EmailAddress],
	--[YearlyIncome],
	--[TotalChildren],
	--[NumberChildrenAtHome],
	--[EnglishEducation],
	--[SpanishEducation],
	--[FrenchEducation],
	--[EnglishOccupation],
	--[SpanishOccupation],
	--[FrenchOccupation],
	--[HouseOwnerFlag],
	--[NumberCarsOwned],
	--[AddressLine1],
	--[AddressLine2],
	--[Phone],
	c.[DateFirstPurchase] AS DateofFirstPurchase,
	--[CommuteDistance]
	g.[City] AS [Customer City] -- Joined in Customer City from Geography Table
FROM [AdventureWorksDW2022].[dbo].[DimCustomer] c
LEFT JOIN [dbo].[DimGeography] AS g ON c.[GeographyKey] = g.[GeographyKey]
ORDER BY c.[CustomerKey] ASC -- Ordered list by CustomerKey