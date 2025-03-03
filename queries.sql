USE CompanyAssets;

-- Select all assets
SELECT * FROM Assets;

-- Select assets along with their type and location
SELECT 
    Assets.AssetName,        -- Name of the asset
    AssetTypes.TypeName,     -- Type of the asset
    Locations.LocationName,  -- Location of the asset
    Employees.FirstName,     -- First name of the employee assigned to the asset
    Employees.LastName       -- Last name of the employee assigned to the asset
FROM Assets
JOIN AssetTypes ON Assets.AssetTypeID = AssetTypes.AssetTypeID  -- Join with AssetTypes table to get asset type
JOIN Locations ON Assets.LocationID = Locations.LocationID      -- Join with Locations table to get location
JOIN Employees ON Assets.EmployeeID = Employees.EmployeeID;     -- Join with Employees table to get employee details

-- Select assets purchased in 2022
SELECT * FROM Assets
WHERE YEAR(PurchaseDate) = 2022;  -- Filter assets by purchase year (2022)

-- Select the total value of assets
SELECT SUM(PurchaseValue) AS TotalValue FROM Assets;  -- Calculate the total purchase value of all assets

-- Select employees and the assets assigned to them
SELECT 
    Employees.FirstName,  -- First name of the employee
    Employees.LastName,   -- Last name of the employee
    Assets.AssetName      -- Name of the asset assigned to the employee
FROM Employees
LEFT JOIN Assets ON Employees.EmployeeID = Assets.EmployeeID;  -- Left join to include all employees, even those without assigned assets
