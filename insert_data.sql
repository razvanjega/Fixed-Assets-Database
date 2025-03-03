USE CompanyAssets;

-- Add asset types
INSERT INTO AssetTypes (TypeName) VALUES
('IT Equipment'),  -- IT equipment
('Furniture'),     -- Furniture
('Machinery'),     -- Machinery
('Cars');          -- Cars

-- Add departments
INSERT INTO Departments (DepartmentName) VALUES
('IT'),            -- IT department
('Finance'),       -- Finance department
('Production'),    -- Production department
('Human Resources');  -- Human Resources department

-- Add employees
INSERT INTO Employees (FirstName, LastName, DepartmentID) VALUES
('Ion', 'Popescu', 1),   -- Employee Ion Popescu in the IT department
('Maria', 'Ionescu', 2), -- Employee Maria Ionescu in the Finance department
('Vasile', 'Georgescu', 3), -- Employee Vasile Georgescu in the Production department
('Ana', 'Vasilescu', 4); -- Employee Ana Vasilescu in the HR department

-- Add locations
INSERT INTO Locations (LocationName) VALUES
('Headquarters'),      -- Headquarters location
('Warehouse 1'),       -- Warehouse 1
('Production Line'),   -- Production line location
('IT Office');         -- IT office location

-- Add assets (fixed assets)
INSERT INTO Assets (AssetName, AssetTypeID, LocationID, EmployeeID, PurchaseDate, PurchaseValue) VALUES
('HP Server', 1, 4, 1, '2022-01-15', 5000.00),  -- HP server in IT office assigned to Ion Popescu, purchased on 2022-01-15 for 5000
('Executive Desk', 2, 1, 2, '2021-05-20', 1200.00),  -- Executive desk in Headquarters assigned to Maria Ionescu, purchased on 2021-05-20 for 1200
('Milling Machine', 3, 3, 3, '2020-11-10', 25000.00),  -- Milling machine in Production line assigned to Vasile Georgescu, purchased on 2020-11-10 for 25000
('Dell Laptop', 1, 1, 4, '2023-03-01', 1500.00);  -- Dell laptop in Headquarters assigned to Ana Vasilescu, purchased on 2023-03-01 for 1500
