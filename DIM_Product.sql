-- Clean DIM_Product Table -- 
SELECT p.[ProductKey],
	p.[ProductAlternateKey] AS ProductItemCode,
	--[ProductSubcategoryKey],
	--[WeightUnitMeasureCode],
	--[SizeUnitMeasureCode],
	p.[EnglishProductName] AS [Product Name],
	ps.[EnglishProductSubcategoryName] AS [Product Subcategory], -- Joined from Subcategory Table
	pc.[EnglishProductCategoryName] AS [Product Category], -- Joined from Category Table
	--[SpanishProductName],
	--[FrenchProductName],
	--[StandardCost],
	--[FinishedGoodsFlag],
	p.[Color] AS [Product Color],
	--[SafetyStockLevel],
	--[ReorderPoint],
	--[ListPrice],
	p.[Size] AS [Product Size],
	--[SizeRange],
	--[Weight],
	--[DaysToManufacture],
	p.[ProductLine] AS [Product Line],
	--[DealerPrice],
	--[Class],
	--[Style],
	p.[ModelName] AS [Product Model Name],
	--[LargePhoto],
	[EnglishDescription] AS [Product Description],
	--[FrenchDescription],
	--[ChineseDescription],
	--[ArabicDescription],
	--[HebrewDescription],
	--[ThaiDescription],
	--[GermanDescription],
	--[JapaneseDescription],
	--[TurkishDescription],
	--[StartDate],
	--[EndDate],
	ISNULL(p.[Status], 'Outdate') AS [Product Status]
FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS p
LEFT JOIN [dbo].[DimProductSubcategory] AS ps ON ps.[ProductSubcategoryKey] = p.[ProductSubcategoryKey]
LEFT JOIN [dbo].[DimProductCategory] AS pc ON pc.[ProductCategoryKey] = ps.[ProductCategoryKey]
ORDER BY p.ProductKey ASC