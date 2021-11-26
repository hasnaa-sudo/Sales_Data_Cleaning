-- cleansed Dim_Customer table --
SELECT 
  [CustomerKey]
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  [FirstName] --,[MiddleName]
  , 
  [LastName], 
  [FirstName] + ' ' + [LastName] as [Full Name] 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  case [Gender] when 'M' then 'Male' when 'F' then 'Femle' end as Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  [DateFirstPurchase] as [Date First Purchase] 
  --,[CommuteDistance]
  , 
  G.[City] as [Customer City] --joined in Customer City from geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] C 
  join AdventureWorksDW2019..DimGeography G on C.GeographyKey = G.GeographyKey
