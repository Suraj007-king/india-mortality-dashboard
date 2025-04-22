SELECT 
    AVG([Life_Expectancy]) AS Avg_Life_Expectancy,
    AVG([Death_Rate]) AS Avg_Death_Rate,
    SUM(CAST(Population AS BIGINT)) AS Total_Population,
    SUM(CAST([Total_Deaths] AS BIGINT)) AS Total_Deaths,
    COUNT(DISTINCT Region) AS Region_Count
FROM [finaldataset];
SELECT 
    Year, 
    Region, 
    AVG([Life_Expectancy]) AS Avg_Life_Expectancy
FROM [finaldataset]
GROUP BY Year, Region
ORDER BY Year, Region;
SELECT 
    Region, 
    SUM(CAST([Total_Deaths] AS BIGINT)) AS Total_Deaths
FROM [finaldataset]
GROUP BY Region
ORDER BY Total_Deaths DESC;
SELECT 
    [Cause_of_Death], 
    SUM(CAST([Total_Deaths] AS BIGINT)) AS Total_Deaths
FROM [finaldataset]
GROUP BY [Cause_of_Death]
ORDER BY Total_Deaths DESC;
SELECT 
    Region, 
    AVG([Death_Rate]) AS Avg_Death_Rate,
    SUM(CAST(Population AS BIGINT)) AS Total_Population,
    SUM(CAST([Total_Deaths] AS BIGINT)) AS Total_Deaths,
    AVG([Life_Expectancy]) AS Avg_Life_Expectancy
FROM [finaldataset]
GROUP BY Region;
SELECT 
    Year, 
    Region, 
    SUM([Total_Deaths]) AS TotalDeaths
FROM [finaldataset]
GROUP BY Year, Region
ORDER BY Year, Region;

SELECT 
    Region, 
    AVG([Life_Expectancy]) AS AvgLifeExpectancy
FROM [finaldataset]
GROUP BY Region
ORDER BY AvgLifeExpectancy DESC;
SELECT 
    Region,
    AVG(Death_Rate) AS Avg_Death_Rate,
    AVG(Life_Expectancy) AS Avg_LifeExpectancy_Rate
FROM finaldataset
GROUP BY Region
ORDER BY Avg_Death_Rate DESC;
-- Highest Mortality State
SELECT TOP 1
    Region,
    AVG(Death_Rate) AS Avg_Death_Rate
FROM finaldataset
GROUP BY Region
ORDER BY Avg_Death_Rate DESC;

-- Lowest Mortality State
SELECT TOP 1
    Region,
    AVG(Death_Rate) AS Avg_Death_Rate
FROM finaldataset
GROUP BY Region
ORDER BY Avg_Death_Rate ASC;

-- National Average Death Rate
SELECT 
    AVG(Death_Rate) AS National_Avg_Death_Rate
FROM finaldataset;
SELECT DISTINCT Year
FROM finaldataset
ORDER BY Year;
SELECT 
    Cause_of_Death,
    Gender,
    SUM(Total_Deaths) AS Total_Deaths
FROM finaldataset
GROUP BY Cause_of_Death, Gender
ORDER BY Cause_of_Death, Gender;
SELECT 
    Year,
    Gender,
    AVG(Death_Rate) AS Avg_Death_Rate
FROM finaldataset
GROUP BY Year, Gender
ORDER BY Year, Gender;
SELECT 
    Region,
    Gender,
    SUM(CAST(Population AS BIGINT)) AS TotalPopulation,
    AVG([Death_Rate]) AS AvgDeathRate,
    SUM(CAST([Total_Deaths] AS BIGINT)) AS TotalDeaths
FROM [finaldataset]
GROUP BY Region, Gender
ORDER BY Region, Gender;
SELECT 
    Cause_of_Death,
    Gender,
    SUM(Total_Deaths) AS Total_Deaths
FROM finaldataset
WHERE Age_Range = '66+'
GROUP BY Cause_of_Death, Gender
ORDER BY Total_Deaths DESC;
SELECT 
    [Cause_of_Death],
    SUM(CAST([Total_Deaths] AS BIGINT)) AS TotalDeaths
FROM [finaldataset]
GROUP BY [Cause_of_Death]
ORDER BY TotalDeaths DESC;
SELECT 
    Region,
    [Cause_of_Death],
    SUM(CAST([Total_Deaths] AS BIGINT)) * 100.0 / 
       (SELECT SUM(CAST([Total_Deaths] AS BIGINT)) 
        FROM [finaldataset] AS X 
        WHERE X.Region = M.Region) AS DeathPercentage
FROM [finaldataset] AS M
GROUP BY Region, [Cause_of_Death]
ORDER BY Region, DeathPercentage DESC;
SELECT 
    Gender,
    [Cause_of_Death],
    SUM(CAST([Total_Deaths] AS BIGINT)) AS TotalDeaths
FROM [finaldataset]
GROUP BY Gender, [Cause_of_Death]
ORDER BY Gender, TotalDeaths DESC;
SELECT 
    [Age_Range],
    [Cause_of_Death],
    AVG([Death_Rate]) AS AvgDeathRate
FROM [finaldataset]
GROUP BY [Age_Range], [Cause_of_Death]
ORDER BY [Age_Range], AvgDeathRate DESC;
SELECT 
    Region,
    SUM(CAST(Population AS BIGINT)) AS TotalPopulation,
    SUM(CAST([Total_Deaths] AS BIGINT)) AS TotalDeaths,
    AVG([Death_Rate]) AS AvgDeathRate
FROM finaldataset
GROUP BY Region
ORDER BY Region;
SELECT 
    Year,
    Region,
    SUM(CAST(Population AS BIGINT)) AS TotalPopulation
FROM finaldataset
GROUP BY Year, Region
ORDER BY Year, Region;
SELECT 
    Year,
    Region,
    SUM(CAST([Total_Deaths] AS BIGINT)) AS TotalDeaths
FROM finaldataset
GROUP BY Year, Region
ORDER BY Year, Region;

SELECT 
    Region,
    SUM(CAST(Population AS BIGINT)) AS TotalPopulation,
    AVG([Death_Rate]) AS AvgDeathRate,
    AVG([Life_Expectancy]) AS AvgLifeExpectancy
FROM finaldataset
GROUP BY Region
ORDER BY Region;





