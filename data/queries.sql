-- Question 1.  SUM of Energy Consumption by Year
SELECT Year, SUM(EnergyConsumption) AS TotalEnergyConsumption
FROM esg_analysis.esg_data
GROUP BY Year
ORDER BY Year;

-- Question  2. SUM of ESG_Overall by Region
SELECT Region, SUM(ESG_Overall) AS TotalESG_Overall
FROM esg_analysis.esg_data
GROUP BY Region
ORDER BY Region;

-- Question 3.  SUM of Carbon Emissions by Region
SELECT Region, SUM(CarbonEmissions) AS TotalCarbonEmissions
FROM esg_analysis.esg_data
GROUP BY Region
ORDER BY Region;

-- Question 4. SUM of Energy Consumption by Region
SELECT Region, SUM(EnergyConsumption) AS TotalEnergyConsumption
FROM esg_analysis.esg_data
GROUP BY Region
ORDER BY Region;

-- Question 5. Energy Consumption by Region and Industry
SELECT Region, Industry, SUM(EnergyConsumption) AS TotalEnergy
FROM esg_analysis.esg_data
GROUP BY Region, Industry
ORDER BY Region, Industry;

-- Question 6 SUM of Carbon Emissions by Year
SELECT Year, SUM(CarbonEmissions) AS TotalCarbonEmissions
FROM esg_analysis.esg_data
GROUP BY Year
ORDER BY Year;

-- Question 7 SUM of ESG_Environmental by Year
SELECT Year, SUM(ESG_Environmental) AS TotalESG_Environmental
FROM esg_analysis.esg_data
GROUP BY Year
ORDER BY Year;

-- Question 8 Trend on the SUM of ESG_Social, ESG_Governance, ESG_Environmental by Region
SELECT Region,
       SUM(ESG_Social) AS TotalESG_Social,
       SUM(ESG_Governance) AS TotalESG_Governance,
       SUM(ESG_Environmental) AS TotalESG_Environmental
FROM esg_analysis.esg_data
GROUP BY Region
ORDER BY Region;

-- Question 9 Trend of Carbon Emissions by Industry
SELECT Industry, Year, SUM(CarbonEmissions) AS CarbonEmissionTrend
FROM esg_analysis.esg_data
GROUP BY Industry, Year
ORDER BY Industry, Year;

-- Question 10 Trend of Water Usage by Industry
SELECT Industry, Year, SUM(WaterUsage) AS WaterUsageTrend
FROM esg_analysis.esg_data
GROUP BY Industry, Year
ORDER BY Industry, Year;