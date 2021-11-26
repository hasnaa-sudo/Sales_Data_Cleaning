--Cleansed Dim_Date table--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] as Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth] 
  --,[DayNumberOfYear]
  , 
  --[WeekNumberOfYear] as WeekNum, 
  [EnglishMonthName] as Month, 
  left([EnglishMonthName], 3) as Monthshort --Useful for front end date navigation and front end graphs.
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  ,[MonthNumberOfYear] as [Month Number]
  , 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  [CalendarYear] >= 2019
