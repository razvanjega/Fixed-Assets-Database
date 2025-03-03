-- Create the database
CREATE DATABASE CompanyAssets;
USE CompanyAssets;

-- Table for asset types
CREATE TABLE AssetTypes (
    AssetTypeID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each asset type
    TypeName VARCHAR(100) NOT NULL  -- Name of the asset type
);

-- Table for departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each department
    DepartmentName VARCHAR(100) NOT NULL  -- Name of the department
);

-- Table for employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each employee
    FirstName VARCHAR(50) NOT NULL,  -- First name of the employee
    LastName VARCHAR(50) NOT NULL,  -- Last name of the employee
    DepartmentID INT,  -- Reference to the department the employee belongs to
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)  -- Foreign key linking to Departments table
);

-- Table for locations
CREATE TABLE Locations (
    LocationID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each location
    LocationName VARCHAR(100) NOT NULL  -- Name of the location
);

-- Table for assets (fixed assets)
CREATE TABLE Assets (
    AssetID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each asset
    AssetName VARCHAR(100) NOT NULL,  -- Name of the asset
    AssetTypeID INT,  -- Reference to the asset type
    LocationID INT,  -- Reference to the location of the asset
    EmployeeID INT,  -- Reference to the employee assigned to the asset
    PurchaseDate DATE,  -- Date the asset was purchased
    PurchaseValue DECIMAL(10, 2),  -- Purchase value of the asset
    FOREIGN KEY (AssetTypeID) REFERENCES AssetTypes(AssetTypeID),  -- Foreign key linking to AssetTypes table
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID),  -- Foreign key linking to Locations table
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)  -- Foreign key linking to Employees table
);
