
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/19/2018 16:38:19
-- Generated from EDMX file: D:\EPAM\Azure Training\epam-azure-training-tfs\AdventureWorks.DbModel\AdventureWorksModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [AdventrueWorksDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[AdventureWorksModelStoreContainer].[database_firewall_rules]', 'U') IS NOT NULL
    DROP TABLE [AdventureWorksModelStoreContainer].[database_firewall_rules];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [DepartmentID] smallint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [GroupName] nvarchar(50)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [BusinessEntityID] int  NOT NULL,
    [NationalIDNumber] nvarchar(15)  NOT NULL,
    [LoginID] nvarchar(256)  NOT NULL,
    [OrganizationLevel] smallint  NULL,
    [JobTitle] nvarchar(50)  NOT NULL,
    [BirthDate] datetime  NOT NULL,
    [MaritalStatus] nchar(1)  NOT NULL,
    [Gender] nchar(1)  NOT NULL,
    [HireDate] datetime  NOT NULL,
    [SalariedFlag] bit  NOT NULL,
    [VacationHours] smallint  NOT NULL,
    [SickLeaveHours] smallint  NOT NULL,
    [CurrentFlag] bit  NOT NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'EmployeeDepartmentHistories'
CREATE TABLE [dbo].[EmployeeDepartmentHistories] (
    [BusinessEntityID] int  NOT NULL,
    [DepartmentID] smallint  NOT NULL,
    [ShiftID] tinyint  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'EmployeePayHistories'
CREATE TABLE [dbo].[EmployeePayHistories] (
    [BusinessEntityID] int  NOT NULL,
    [RateChangeDate] datetime  NOT NULL,
    [Rate] decimal(19,4)  NOT NULL,
    [PayFrequency] tinyint  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'JobCandidates'
CREATE TABLE [dbo].[JobCandidates] (
    [JobCandidateID] int IDENTITY(1,1) NOT NULL,
    [BusinessEntityID] int  NULL,
    [Resume] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'Shifts'
CREATE TABLE [dbo].[Shifts] (
    [ShiftID] tinyint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [StartTime] time  NOT NULL,
    [EndTime] time  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [AddressID] int IDENTITY(1,1) NOT NULL,
    [AddressLine1] nvarchar(60)  NOT NULL,
    [AddressLine2] nvarchar(60)  NULL,
    [City] nvarchar(30)  NOT NULL,
    [StateProvinceID] int  NOT NULL,
    [PostalCode] nvarchar(15)  NOT NULL,
    [SpatialLocation] geography  NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'AddressTypes'
CREATE TABLE [dbo].[AddressTypes] (
    [AddressTypeID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'BusinessEntities'
CREATE TABLE [dbo].[BusinessEntities] (
    [BusinessEntityID] int IDENTITY(1,1) NOT NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'BusinessEntityAddresses'
CREATE TABLE [dbo].[BusinessEntityAddresses] (
    [BusinessEntityID] int  NOT NULL,
    [AddressID] int  NOT NULL,
    [AddressTypeID] int  NOT NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'BusinessEntityContacts'
CREATE TABLE [dbo].[BusinessEntityContacts] (
    [BusinessEntityID] int  NOT NULL,
    [PersonID] int  NOT NULL,
    [ContactTypeID] int  NOT NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'ContactTypes'
CREATE TABLE [dbo].[ContactTypes] (
    [ContactTypeID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'CountryRegions'
CREATE TABLE [dbo].[CountryRegions] (
    [CountryRegionCode] nvarchar(3)  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'EmailAddresses'
CREATE TABLE [dbo].[EmailAddresses] (
    [BusinessEntityID] int  NOT NULL,
    [EmailAddressID] int IDENTITY(1,1) NOT NULL,
    [EmailAddress1] nvarchar(50)  NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'Passwords'
CREATE TABLE [dbo].[Passwords] (
    [BusinessEntityID] int  NOT NULL,
    [PasswordHash] varchar(128)  NOT NULL,
    [PasswordSalt] varchar(10)  NOT NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'People'
CREATE TABLE [dbo].[People] (
    [BusinessEntityID] int  NOT NULL,
    [PersonType] nchar(2)  NOT NULL,
    [NameStyle] bit  NOT NULL,
    [Title] nvarchar(8)  NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [MiddleName] nvarchar(50)  NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [Suffix] nvarchar(10)  NULL,
    [EmailPromotion] int  NOT NULL,
    [AdditionalContactInfo] nvarchar(max)  NULL,
    [Demographics] nvarchar(max)  NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'PersonPhones'
CREATE TABLE [dbo].[PersonPhones] (
    [BusinessEntityID] int  NOT NULL,
    [PhoneNumber] nvarchar(25)  NOT NULL,
    [PhoneNumberTypeID] int  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'PhoneNumberTypes'
CREATE TABLE [dbo].[PhoneNumberTypes] (
    [PhoneNumberTypeID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'StateProvinces'
CREATE TABLE [dbo].[StateProvinces] (
    [StateProvinceID] int IDENTITY(1,1) NOT NULL,
    [StateProvinceCode] nchar(3)  NOT NULL,
    [CountryRegionCode] nvarchar(3)  NOT NULL,
    [IsOnlyStateProvinceFlag] bit  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [TerritoryID] int  NOT NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'vEmployees'
CREATE TABLE [dbo].[vEmployees] (
    [BusinessEntityID] int  NOT NULL,
    [Title] nvarchar(8)  NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [MiddleName] nvarchar(50)  NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [Suffix] nvarchar(10)  NULL,
    [JobTitle] nvarchar(50)  NOT NULL,
    [PhoneNumber] nvarchar(25)  NULL,
    [PhoneNumberType] nvarchar(50)  NULL,
    [EmailAddress] nvarchar(50)  NULL,
    [EmailPromotion] int  NOT NULL,
    [AddressLine1] nvarchar(60)  NOT NULL,
    [AddressLine2] nvarchar(60)  NULL,
    [City] nvarchar(30)  NOT NULL,
    [StateProvinceName] nvarchar(50)  NOT NULL,
    [PostalCode] nvarchar(15)  NOT NULL,
    [CountryRegionName] nvarchar(50)  NOT NULL,
    [AdditionalContactInfo] nvarchar(max)  NULL
);
GO

-- Creating table 'vEmployeeDepartments'
CREATE TABLE [dbo].[vEmployeeDepartments] (
    [BusinessEntityID] int  NOT NULL,
    [Title] nvarchar(8)  NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [MiddleName] nvarchar(50)  NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [Suffix] nvarchar(10)  NULL,
    [JobTitle] nvarchar(50)  NOT NULL,
    [Department] nvarchar(50)  NOT NULL,
    [GroupName] nvarchar(50)  NOT NULL,
    [StartDate] datetime  NOT NULL
);
GO

-- Creating table 'vEmployeeDepartmentHistories'
CREATE TABLE [dbo].[vEmployeeDepartmentHistories] (
    [BusinessEntityID] int  NOT NULL,
    [Title] nvarchar(8)  NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [MiddleName] nvarchar(50)  NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [Suffix] nvarchar(10)  NULL,
    [Shift] nvarchar(50)  NOT NULL,
    [Department] nvarchar(50)  NOT NULL,
    [GroupName] nvarchar(50)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL
);
GO

-- Creating table 'vJobCandidates'
CREATE TABLE [dbo].[vJobCandidates] (
    [JobCandidateID] int IDENTITY(1,1) NOT NULL,
    [BusinessEntityID] int  NULL,
    [Name_Prefix] nvarchar(30)  NULL,
    [Name_First] nvarchar(30)  NULL,
    [Name_Middle] nvarchar(30)  NULL,
    [Name_Last] nvarchar(30)  NULL,
    [Name_Suffix] nvarchar(30)  NULL,
    [Skills] nvarchar(max)  NULL,
    [Addr_Type] nvarchar(30)  NULL,
    [Addr_Loc_CountryRegion] nvarchar(100)  NULL,
    [Addr_Loc_State] nvarchar(100)  NULL,
    [Addr_Loc_City] nvarchar(100)  NULL,
    [Addr_PostalCode] nvarchar(20)  NULL,
    [EMail] nvarchar(max)  NULL,
    [WebSite] nvarchar(max)  NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'vJobCandidateEducations'
CREATE TABLE [dbo].[vJobCandidateEducations] (
    [JobCandidateID] int IDENTITY(1,1) NOT NULL,
    [Edu_Level] nvarchar(max)  NULL,
    [Edu_StartDate] datetime  NULL,
    [Edu_EndDate] datetime  NULL,
    [Edu_Degree] nvarchar(50)  NULL,
    [Edu_Major] nvarchar(50)  NULL,
    [Edu_Minor] nvarchar(50)  NULL,
    [Edu_GPA] nvarchar(5)  NULL,
    [Edu_GPAScale] nvarchar(5)  NULL,
    [Edu_School] nvarchar(100)  NULL,
    [Edu_Loc_CountryRegion] nvarchar(100)  NULL,
    [Edu_Loc_State] nvarchar(100)  NULL,
    [Edu_Loc_City] nvarchar(100)  NULL
);
GO

-- Creating table 'vJobCandidateEmployments'
CREATE TABLE [dbo].[vJobCandidateEmployments] (
    [JobCandidateID] int IDENTITY(1,1) NOT NULL,
    [Emp_StartDate] datetime  NULL,
    [Emp_EndDate] datetime  NULL,
    [Emp_OrgName] nvarchar(100)  NULL,
    [Emp_JobTitle] nvarchar(100)  NULL,
    [Emp_Responsibility] nvarchar(max)  NULL,
    [Emp_FunctionCategory] nvarchar(max)  NULL,
    [Emp_IndustryCategory] nvarchar(max)  NULL,
    [Emp_Loc_CountryRegion] nvarchar(max)  NULL,
    [Emp_Loc_State] nvarchar(max)  NULL,
    [Emp_Loc_City] nvarchar(max)  NULL
);
GO

-- Creating table 'vAdditionalContactInfoes'
CREATE TABLE [dbo].[vAdditionalContactInfoes] (
    [BusinessEntityID] int  NOT NULL,
    [FirstName] nvarchar(50)  NOT NULL,
    [MiddleName] nvarchar(50)  NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [TelephoneNumber] nvarchar(50)  NULL,
    [TelephoneSpecialInstructions] nvarchar(max)  NULL,
    [Street] nvarchar(50)  NULL,
    [City] nvarchar(50)  NULL,
    [StateProvince] nvarchar(50)  NULL,
    [PostalCode] nvarchar(50)  NULL,
    [CountryRegion] nvarchar(50)  NULL,
    [HomeAddressSpecialInstructions] nvarchar(max)  NULL,
    [EMailAddress] nvarchar(128)  NULL,
    [EMailSpecialInstructions] nvarchar(max)  NULL,
    [EMailTelephoneNumber] nvarchar(50)  NULL,
    [rowguid] uniqueidentifier  NOT NULL,
    [ModifiedDate] datetime  NOT NULL
);
GO

-- Creating table 'vStateProvinceCountryRegions'
CREATE TABLE [dbo].[vStateProvinceCountryRegions] (
    [StateProvinceID] int  NOT NULL,
    [StateProvinceCode] nchar(3)  NOT NULL,
    [IsOnlyStateProvinceFlag] bit  NOT NULL,
    [StateProvinceName] nvarchar(50)  NOT NULL,
    [TerritoryID] int  NOT NULL,
    [CountryRegionCode] nvarchar(3)  NOT NULL,
    [CountryRegionName] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'database_firewall_rules'
CREATE TABLE [dbo].[database_firewall_rules] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(128)  NOT NULL,
    [start_ip_address] varchar(45)  NOT NULL,
    [end_ip_address] varchar(45)  NOT NULL,
    [create_date] datetime  NOT NULL,
    [modify_date] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [DepartmentID] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([DepartmentID] ASC);
GO

-- Creating primary key on [BusinessEntityID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([BusinessEntityID] ASC);
GO

-- Creating primary key on [BusinessEntityID], [DepartmentID], [ShiftID], [StartDate] in table 'EmployeeDepartmentHistories'
ALTER TABLE [dbo].[EmployeeDepartmentHistories]
ADD CONSTRAINT [PK_EmployeeDepartmentHistories]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [DepartmentID], [ShiftID], [StartDate] ASC);
GO

-- Creating primary key on [BusinessEntityID], [RateChangeDate] in table 'EmployeePayHistories'
ALTER TABLE [dbo].[EmployeePayHistories]
ADD CONSTRAINT [PK_EmployeePayHistories]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [RateChangeDate] ASC);
GO

-- Creating primary key on [JobCandidateID] in table 'JobCandidates'
ALTER TABLE [dbo].[JobCandidates]
ADD CONSTRAINT [PK_JobCandidates]
    PRIMARY KEY CLUSTERED ([JobCandidateID] ASC);
GO

-- Creating primary key on [ShiftID] in table 'Shifts'
ALTER TABLE [dbo].[Shifts]
ADD CONSTRAINT [PK_Shifts]
    PRIMARY KEY CLUSTERED ([ShiftID] ASC);
GO

-- Creating primary key on [AddressID] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([AddressID] ASC);
GO

-- Creating primary key on [AddressTypeID] in table 'AddressTypes'
ALTER TABLE [dbo].[AddressTypes]
ADD CONSTRAINT [PK_AddressTypes]
    PRIMARY KEY CLUSTERED ([AddressTypeID] ASC);
GO

-- Creating primary key on [BusinessEntityID] in table 'BusinessEntities'
ALTER TABLE [dbo].[BusinessEntities]
ADD CONSTRAINT [PK_BusinessEntities]
    PRIMARY KEY CLUSTERED ([BusinessEntityID] ASC);
GO

-- Creating primary key on [BusinessEntityID], [AddressID], [AddressTypeID] in table 'BusinessEntityAddresses'
ALTER TABLE [dbo].[BusinessEntityAddresses]
ADD CONSTRAINT [PK_BusinessEntityAddresses]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [AddressID], [AddressTypeID] ASC);
GO

-- Creating primary key on [BusinessEntityID], [PersonID], [ContactTypeID] in table 'BusinessEntityContacts'
ALTER TABLE [dbo].[BusinessEntityContacts]
ADD CONSTRAINT [PK_BusinessEntityContacts]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [PersonID], [ContactTypeID] ASC);
GO

-- Creating primary key on [ContactTypeID] in table 'ContactTypes'
ALTER TABLE [dbo].[ContactTypes]
ADD CONSTRAINT [PK_ContactTypes]
    PRIMARY KEY CLUSTERED ([ContactTypeID] ASC);
GO

-- Creating primary key on [CountryRegionCode] in table 'CountryRegions'
ALTER TABLE [dbo].[CountryRegions]
ADD CONSTRAINT [PK_CountryRegions]
    PRIMARY KEY CLUSTERED ([CountryRegionCode] ASC);
GO

-- Creating primary key on [BusinessEntityID], [EmailAddressID] in table 'EmailAddresses'
ALTER TABLE [dbo].[EmailAddresses]
ADD CONSTRAINT [PK_EmailAddresses]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [EmailAddressID] ASC);
GO

-- Creating primary key on [BusinessEntityID] in table 'Passwords'
ALTER TABLE [dbo].[Passwords]
ADD CONSTRAINT [PK_Passwords]
    PRIMARY KEY CLUSTERED ([BusinessEntityID] ASC);
GO

-- Creating primary key on [BusinessEntityID] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [PK_People]
    PRIMARY KEY CLUSTERED ([BusinessEntityID] ASC);
GO

-- Creating primary key on [BusinessEntityID], [PhoneNumber], [PhoneNumberTypeID] in table 'PersonPhones'
ALTER TABLE [dbo].[PersonPhones]
ADD CONSTRAINT [PK_PersonPhones]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [PhoneNumber], [PhoneNumberTypeID] ASC);
GO

-- Creating primary key on [PhoneNumberTypeID] in table 'PhoneNumberTypes'
ALTER TABLE [dbo].[PhoneNumberTypes]
ADD CONSTRAINT [PK_PhoneNumberTypes]
    PRIMARY KEY CLUSTERED ([PhoneNumberTypeID] ASC);
GO

-- Creating primary key on [StateProvinceID] in table 'StateProvinces'
ALTER TABLE [dbo].[StateProvinces]
ADD CONSTRAINT [PK_StateProvinces]
    PRIMARY KEY CLUSTERED ([StateProvinceID] ASC);
GO

-- Creating primary key on [BusinessEntityID], [FirstName], [LastName], [JobTitle], [EmailPromotion], [AddressLine1], [City], [StateProvinceName], [PostalCode], [CountryRegionName] in table 'vEmployees'
ALTER TABLE [dbo].[vEmployees]
ADD CONSTRAINT [PK_vEmployees]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [FirstName], [LastName], [JobTitle], [EmailPromotion], [AddressLine1], [City], [StateProvinceName], [PostalCode], [CountryRegionName] ASC);
GO

-- Creating primary key on [BusinessEntityID], [FirstName], [LastName], [JobTitle], [Department], [GroupName], [StartDate] in table 'vEmployeeDepartments'
ALTER TABLE [dbo].[vEmployeeDepartments]
ADD CONSTRAINT [PK_vEmployeeDepartments]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [FirstName], [LastName], [JobTitle], [Department], [GroupName], [StartDate] ASC);
GO

-- Creating primary key on [BusinessEntityID], [FirstName], [LastName], [Shift], [Department], [GroupName], [StartDate] in table 'vEmployeeDepartmentHistories'
ALTER TABLE [dbo].[vEmployeeDepartmentHistories]
ADD CONSTRAINT [PK_vEmployeeDepartmentHistories]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [FirstName], [LastName], [Shift], [Department], [GroupName], [StartDate] ASC);
GO

-- Creating primary key on [JobCandidateID], [ModifiedDate] in table 'vJobCandidates'
ALTER TABLE [dbo].[vJobCandidates]
ADD CONSTRAINT [PK_vJobCandidates]
    PRIMARY KEY CLUSTERED ([JobCandidateID], [ModifiedDate] ASC);
GO

-- Creating primary key on [JobCandidateID] in table 'vJobCandidateEducations'
ALTER TABLE [dbo].[vJobCandidateEducations]
ADD CONSTRAINT [PK_vJobCandidateEducations]
    PRIMARY KEY CLUSTERED ([JobCandidateID] ASC);
GO

-- Creating primary key on [JobCandidateID] in table 'vJobCandidateEmployments'
ALTER TABLE [dbo].[vJobCandidateEmployments]
ADD CONSTRAINT [PK_vJobCandidateEmployments]
    PRIMARY KEY CLUSTERED ([JobCandidateID] ASC);
GO

-- Creating primary key on [BusinessEntityID], [FirstName], [LastName], [rowguid], [ModifiedDate] in table 'vAdditionalContactInfoes'
ALTER TABLE [dbo].[vAdditionalContactInfoes]
ADD CONSTRAINT [PK_vAdditionalContactInfoes]
    PRIMARY KEY CLUSTERED ([BusinessEntityID], [FirstName], [LastName], [rowguid], [ModifiedDate] ASC);
GO

-- Creating primary key on [StateProvinceID], [StateProvinceCode], [IsOnlyStateProvinceFlag], [StateProvinceName], [TerritoryID], [CountryRegionCode], [CountryRegionName] in table 'vStateProvinceCountryRegions'
ALTER TABLE [dbo].[vStateProvinceCountryRegions]
ADD CONSTRAINT [PK_vStateProvinceCountryRegions]
    PRIMARY KEY CLUSTERED ([StateProvinceID], [StateProvinceCode], [IsOnlyStateProvinceFlag], [StateProvinceName], [TerritoryID], [CountryRegionCode], [CountryRegionName] ASC);
GO

-- Creating primary key on [id], [name], [start_ip_address], [end_ip_address], [create_date], [modify_date] in table 'database_firewall_rules'
ALTER TABLE [dbo].[database_firewall_rules]
ADD CONSTRAINT [PK_database_firewall_rules]
    PRIMARY KEY CLUSTERED ([id], [name], [start_ip_address], [end_ip_address], [create_date], [modify_date] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DepartmentID] in table 'EmployeeDepartmentHistories'
ALTER TABLE [dbo].[EmployeeDepartmentHistories]
ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Department_DepartmentID]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Departments]
        ([DepartmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeDepartmentHistory_Department_DepartmentID'
CREATE INDEX [IX_FK_EmployeeDepartmentHistory_Department_DepartmentID]
ON [dbo].[EmployeeDepartmentHistories]
    ([DepartmentID]);
GO

-- Creating foreign key on [BusinessEntityID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_Employee_Person_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[People]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BusinessEntityID] in table 'EmployeeDepartmentHistories'
ALTER TABLE [dbo].[EmployeeDepartmentHistories]
ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Employee_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[Employees]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BusinessEntityID] in table 'EmployeePayHistories'
ALTER TABLE [dbo].[EmployeePayHistories]
ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[Employees]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BusinessEntityID] in table 'JobCandidates'
ALTER TABLE [dbo].[JobCandidates]
ADD CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[Employees]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobCandidate_Employee_BusinessEntityID'
CREATE INDEX [IX_FK_JobCandidate_Employee_BusinessEntityID]
ON [dbo].[JobCandidates]
    ([BusinessEntityID]);
GO

-- Creating foreign key on [ShiftID] in table 'EmployeeDepartmentHistories'
ALTER TABLE [dbo].[EmployeeDepartmentHistories]
ADD CONSTRAINT [FK_EmployeeDepartmentHistory_Shift_ShiftID]
    FOREIGN KEY ([ShiftID])
    REFERENCES [dbo].[Shifts]
        ([ShiftID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeDepartmentHistory_Shift_ShiftID'
CREATE INDEX [IX_FK_EmployeeDepartmentHistory_Shift_ShiftID]
ON [dbo].[EmployeeDepartmentHistories]
    ([ShiftID]);
GO

-- Creating foreign key on [StateProvinceID] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_Address_StateProvince_StateProvinceID]
    FOREIGN KEY ([StateProvinceID])
    REFERENCES [dbo].[StateProvinces]
        ([StateProvinceID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Address_StateProvince_StateProvinceID'
CREATE INDEX [IX_FK_Address_StateProvince_StateProvinceID]
ON [dbo].[Addresses]
    ([StateProvinceID]);
GO

-- Creating foreign key on [AddressID] in table 'BusinessEntityAddresses'
ALTER TABLE [dbo].[BusinessEntityAddresses]
ADD CONSTRAINT [FK_BusinessEntityAddress_Address_AddressID]
    FOREIGN KEY ([AddressID])
    REFERENCES [dbo].[Addresses]
        ([AddressID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BusinessEntityAddress_Address_AddressID'
CREATE INDEX [IX_FK_BusinessEntityAddress_Address_AddressID]
ON [dbo].[BusinessEntityAddresses]
    ([AddressID]);
GO

-- Creating foreign key on [AddressTypeID] in table 'BusinessEntityAddresses'
ALTER TABLE [dbo].[BusinessEntityAddresses]
ADD CONSTRAINT [FK_BusinessEntityAddress_AddressType_AddressTypeID]
    FOREIGN KEY ([AddressTypeID])
    REFERENCES [dbo].[AddressTypes]
        ([AddressTypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BusinessEntityAddress_AddressType_AddressTypeID'
CREATE INDEX [IX_FK_BusinessEntityAddress_AddressType_AddressTypeID]
ON [dbo].[BusinessEntityAddresses]
    ([AddressTypeID]);
GO

-- Creating foreign key on [BusinessEntityID] in table 'BusinessEntityAddresses'
ALTER TABLE [dbo].[BusinessEntityAddresses]
ADD CONSTRAINT [FK_BusinessEntityAddress_BusinessEntity_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[BusinessEntities]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BusinessEntityID] in table 'BusinessEntityContacts'
ALTER TABLE [dbo].[BusinessEntityContacts]
ADD CONSTRAINT [FK_BusinessEntityContact_BusinessEntity_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[BusinessEntities]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BusinessEntityID] in table 'People'
ALTER TABLE [dbo].[People]
ADD CONSTRAINT [FK_Person_BusinessEntity_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[BusinessEntities]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ContactTypeID] in table 'BusinessEntityContacts'
ALTER TABLE [dbo].[BusinessEntityContacts]
ADD CONSTRAINT [FK_BusinessEntityContact_ContactType_ContactTypeID]
    FOREIGN KEY ([ContactTypeID])
    REFERENCES [dbo].[ContactTypes]
        ([ContactTypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BusinessEntityContact_ContactType_ContactTypeID'
CREATE INDEX [IX_FK_BusinessEntityContact_ContactType_ContactTypeID]
ON [dbo].[BusinessEntityContacts]
    ([ContactTypeID]);
GO

-- Creating foreign key on [PersonID] in table 'BusinessEntityContacts'
ALTER TABLE [dbo].[BusinessEntityContacts]
ADD CONSTRAINT [FK_BusinessEntityContact_Person_PersonID]
    FOREIGN KEY ([PersonID])
    REFERENCES [dbo].[People]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BusinessEntityContact_Person_PersonID'
CREATE INDEX [IX_FK_BusinessEntityContact_Person_PersonID]
ON [dbo].[BusinessEntityContacts]
    ([PersonID]);
GO

-- Creating foreign key on [CountryRegionCode] in table 'StateProvinces'
ALTER TABLE [dbo].[StateProvinces]
ADD CONSTRAINT [FK_StateProvince_CountryRegion_CountryRegionCode]
    FOREIGN KEY ([CountryRegionCode])
    REFERENCES [dbo].[CountryRegions]
        ([CountryRegionCode])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StateProvince_CountryRegion_CountryRegionCode'
CREATE INDEX [IX_FK_StateProvince_CountryRegion_CountryRegionCode]
ON [dbo].[StateProvinces]
    ([CountryRegionCode]);
GO

-- Creating foreign key on [BusinessEntityID] in table 'EmailAddresses'
ALTER TABLE [dbo].[EmailAddresses]
ADD CONSTRAINT [FK_EmailAddress_Person_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[People]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BusinessEntityID] in table 'Passwords'
ALTER TABLE [dbo].[Passwords]
ADD CONSTRAINT [FK_Password_Person_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[People]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BusinessEntityID] in table 'PersonPhones'
ALTER TABLE [dbo].[PersonPhones]
ADD CONSTRAINT [FK_PersonPhone_Person_BusinessEntityID]
    FOREIGN KEY ([BusinessEntityID])
    REFERENCES [dbo].[People]
        ([BusinessEntityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PhoneNumberTypeID] in table 'PersonPhones'
ALTER TABLE [dbo].[PersonPhones]
ADD CONSTRAINT [FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID]
    FOREIGN KEY ([PhoneNumberTypeID])
    REFERENCES [dbo].[PhoneNumberTypes]
        ([PhoneNumberTypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID'
CREATE INDEX [IX_FK_PersonPhone_PhoneNumberType_PhoneNumberTypeID]
ON [dbo].[PersonPhones]
    ([PhoneNumberTypeID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------