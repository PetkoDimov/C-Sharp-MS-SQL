CREATE DATABASE SoftUni

CREATE TABLE Towns(
	Id INT IDENTITY(1,1),
	Name NVARCHAR(20) NOT NULL,

	CONSTRAINT PK_ID_Towns PRIMARY KEY(Id)
)

CREATE TABLE Addresses(
	Id INT IDENTITY(1,1),
	AddressText NVARCHAR(80) NOT NULL,
	TownId INT NOT NULL,

	CONSTRAINT PK_ID_Addresses PRIMARY KEY(Id),
	CONSTRAINT FK_TownID FOREIGN KEY(TownId) REFERENCES Towns(Id)
)

CREATE TABLE Departments(
	Id INT IDENTITY(1,1),
	Name NVARCHAR(50) NOT NULL,

	CONSTRAINT PK_ID_Departments PRIMARY KEY(Id)
)

CREATE TABLE Employees(
	Id INT IDENTITY(1,1),
	FirstName NVARCHAR(15) NOT NULL,
	MiddleName NVARCHAR(15) NOT NULL,
	LastName NVARCHAR(15) NOT NULL,
	JobTitle NVARCHAR(30) NOT NULL,
	DepartmentId INT NOT NULL,
	HireDate DATETIME2,
	Salary DECIMAL(18,2),
	AddressId INT NOT NULL

	CONSTRAINT PK_ID_Employees PRIMARY KEY(Id)
	CONSTRAINT FK_DepartmentId FOREIGN KEY(DepartmentId) REFERENCES Departments(Id),
	CONSTRAINT FK_AddressId FOREIGN KEY(AddressId) REFERENCES Addresses(Id),
)
