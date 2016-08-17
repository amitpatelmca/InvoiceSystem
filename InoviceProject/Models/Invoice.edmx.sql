
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/17/2016 14:24:26
-- Generated from EDMX file: C:\TestProject\Assignment2-InvoiceSystem-master\InoviceProject\Models\Invoice.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [200275793];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_category_order_master]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[order_master] DROP CONSTRAINT [FK_category_order_master];
GO
IF OBJECT_ID(N'[dbo].[FK_order_AspNetUsers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[order_master] DROP CONSTRAINT [FK_order_AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[FK_order_customer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[order_master] DROP CONSTRAINT [FK_order_customer];
GO
IF OBJECT_ID(N'[dbo].[FK_order_master_detail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[order_detail] DROP CONSTRAINT [FK_order_master_detail];
GO
IF OBJECT_ID(N'[dbo].[FK_product_category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[product_information] DROP CONSTRAINT [FK_product_category];
GO
IF OBJECT_ID(N'[dbo].[FK_product_order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[order_detail] DROP CONSTRAINT [FK_product_order];
GO
IF OBJECT_ID(N'[dbo].[FK_product_order_master]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[order_master] DROP CONSTRAINT [FK_product_order_master];
GO
IF OBJECT_ID(N'[dbo].[FK_product_supplier]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[product_information] DROP CONSTRAINT [FK_product_supplier];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[category_information]', 'U') IS NOT NULL
    DROP TABLE [dbo].[category_information];
GO
IF OBJECT_ID(N'[dbo].[customer_information]', 'U') IS NOT NULL
    DROP TABLE [dbo].[customer_information];
GO
IF OBJECT_ID(N'[dbo].[order_detail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[order_detail];
GO
IF OBJECT_ID(N'[dbo].[order_master]', 'U') IS NOT NULL
    DROP TABLE [dbo].[order_master];
GO
IF OBJECT_ID(N'[dbo].[product_information]', 'U') IS NOT NULL
    DROP TABLE [dbo].[product_information];
GO
IF OBJECT_ID(N'[dbo].[supplier_information]', 'U') IS NOT NULL
    DROP TABLE [dbo].[supplier_information];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'category_information'
CREATE TABLE [dbo].[category_information] (
    [ID] decimal(10,0) IDENTITY(1,1) NOT NULL,
    [DESCRIPTION] varchar(50)  NULL,
    [CATEGORY_NAME] varchar(20)  NULL
);
GO

-- Creating table 'customer_information'
CREATE TABLE [dbo].[customer_information] (
    [CUSTOMER_ID] decimal(10,0) IDENTITY(1,1) NOT NULL,
    [CUSTOMER_LASTNAME] varchar(30)  NULL,
    [CUSTOMER_FIRSTNAME] varchar(30)  NULL,
    [ADDRESS] varchar(50)  NULL,
    [CITY] varchar(20)  NULL,
    [PROVINCE] char(2)  NULL,
    [POSTAL_CODE] varchar(10)  NULL,
    [USER_NAME] varchar(30)  NULL,
    [PASSWORD] varchar(30)  NULL,
    [USERTYPE] char(1)  NOT NULL
);
GO

-- Creating table 'order_detail'
CREATE TABLE [dbo].[order_detail] (
    [ORDER_ID] decimal(10,0)  NOT NULL,
    [PRODUCT_ID] decimal(10,0)  NOT NULL,
    [QUANTITY] int  NULL,
    [UNIT_PRICE] decimal(8,0)  NULL
);
GO

-- Creating table 'order_master'
CREATE TABLE [dbo].[order_master] (
    [ORDER_ID] decimal(10,0) IDENTITY(1,1) NOT NULL,
    [CUSTOMER_ID] decimal(10,0)  NULL,
    [ORDER_DATE] datetime  NULL,
    [SHIPPING_FIRSTNAME] varchar(50)  NULL,
    [SHIPPING_LASTNAME] varchar(50)  NULL,
    [SHIPPING_ADDRESS] varchar(50)  NULL,
    [SHIPPING_CITY] varchar(50)  NULL,
    [SHIPPING_STATE] varchar(50)  NULL,
    [SHIPPING_POSTAL_CODE] nchar(10)  NULL,
    [USER_ID] nvarchar(128)  NULL,
    [PRODUCT_ID] decimal(10,0)  NULL,
    [QUANTITY] int  NULL,
    [UNIT_PRICE] decimal(8,0)  NULL,
    [CATEGORY_ID] decimal(10,0)  NULL
);
GO

-- Creating table 'product_information'
CREATE TABLE [dbo].[product_information] (
    [PRODUCT_ID] decimal(10,0) IDENTITY(1,1) NOT NULL,
    [NAME] varchar(50)  NULL,
    [SUPPLIER_ID] decimal(10,0)  NULL,
    [CATEGORY_ID] decimal(10,0)  NULL,
    [QUANTITY] int  NULL,
    [UNIT_PRICE] decimal(10,2)  NULL
);
GO

-- Creating table 'supplier_information'
CREATE TABLE [dbo].[supplier_information] (
    [SUPPLIER_ID] decimal(10,0) IDENTITY(1,1) NOT NULL,
    [ADDRESS] varchar(50)  NULL,
    [CITY] varchar(50)  NULL,
    [STATE] varchar(50)  NULL,
    [POSTAL_CODE] nchar(10)  NULL,
    [COUNTRY] varchar(50)  NULL,
    [SUPPLIER_NAME] varchar(50)  NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'category_information'
ALTER TABLE [dbo].[category_information]
ADD CONSTRAINT [PK_category_information]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [CUSTOMER_ID] in table 'customer_information'
ALTER TABLE [dbo].[customer_information]
ADD CONSTRAINT [PK_customer_information]
    PRIMARY KEY CLUSTERED ([CUSTOMER_ID] ASC);
GO

-- Creating primary key on [ORDER_ID], [PRODUCT_ID] in table 'order_detail'
ALTER TABLE [dbo].[order_detail]
ADD CONSTRAINT [PK_order_detail]
    PRIMARY KEY CLUSTERED ([ORDER_ID], [PRODUCT_ID] ASC);
GO

-- Creating primary key on [ORDER_ID] in table 'order_master'
ALTER TABLE [dbo].[order_master]
ADD CONSTRAINT [PK_order_master]
    PRIMARY KEY CLUSTERED ([ORDER_ID] ASC);
GO

-- Creating primary key on [PRODUCT_ID] in table 'product_information'
ALTER TABLE [dbo].[product_information]
ADD CONSTRAINT [PK_product_information]
    PRIMARY KEY CLUSTERED ([PRODUCT_ID] ASC);
GO

-- Creating primary key on [SUPPLIER_ID] in table 'supplier_information'
ALTER TABLE [dbo].[supplier_information]
ADD CONSTRAINT [PK_supplier_information]
    PRIMARY KEY CLUSTERED ([SUPPLIER_ID] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CATEGORY_ID] in table 'product_information'
ALTER TABLE [dbo].[product_information]
ADD CONSTRAINT [FK_product_category]
    FOREIGN KEY ([CATEGORY_ID])
    REFERENCES [dbo].[category_information]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_product_category'
CREATE INDEX [IX_FK_product_category]
ON [dbo].[product_information]
    ([CATEGORY_ID]);
GO

-- Creating foreign key on [CUSTOMER_ID] in table 'order_master'
ALTER TABLE [dbo].[order_master]
ADD CONSTRAINT [FK_order_customer]
    FOREIGN KEY ([CUSTOMER_ID])
    REFERENCES [dbo].[customer_information]
        ([CUSTOMER_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_order_customer'
CREATE INDEX [IX_FK_order_customer]
ON [dbo].[order_master]
    ([CUSTOMER_ID]);
GO

-- Creating foreign key on [ORDER_ID] in table 'order_detail'
ALTER TABLE [dbo].[order_detail]
ADD CONSTRAINT [FK_order_master_detail]
    FOREIGN KEY ([ORDER_ID])
    REFERENCES [dbo].[order_master]
        ([ORDER_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PRODUCT_ID] in table 'order_detail'
ALTER TABLE [dbo].[order_detail]
ADD CONSTRAINT [FK_product_order]
    FOREIGN KEY ([PRODUCT_ID])
    REFERENCES [dbo].[product_information]
        ([PRODUCT_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_product_order'
CREATE INDEX [IX_FK_product_order]
ON [dbo].[order_detail]
    ([PRODUCT_ID]);
GO

-- Creating foreign key on [SUPPLIER_ID] in table 'product_information'
ALTER TABLE [dbo].[product_information]
ADD CONSTRAINT [FK_product_supplier]
    FOREIGN KEY ([SUPPLIER_ID])
    REFERENCES [dbo].[supplier_information]
        ([SUPPLIER_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_product_supplier'
CREATE INDEX [IX_FK_product_supplier]
ON [dbo].[product_information]
    ([SUPPLIER_ID]);
GO

-- Creating foreign key on [USER_ID] in table 'order_master'
ALTER TABLE [dbo].[order_master]
ADD CONSTRAINT [FK_order_AspNetUsers]
    FOREIGN KEY ([USER_ID])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_order_AspNetUsers'
CREATE INDEX [IX_FK_order_AspNetUsers]
ON [dbo].[order_master]
    ([USER_ID]);
GO

-- Creating foreign key on [PRODUCT_ID] in table 'order_master'
ALTER TABLE [dbo].[order_master]
ADD CONSTRAINT [FK_product_order_master]
    FOREIGN KEY ([PRODUCT_ID])
    REFERENCES [dbo].[product_information]
        ([PRODUCT_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_product_order_master'
CREATE INDEX [IX_FK_product_order_master]
ON [dbo].[order_master]
    ([PRODUCT_ID]);
GO

-- Creating foreign key on [CATEGORY_ID] in table 'order_master'
ALTER TABLE [dbo].[order_master]
ADD CONSTRAINT [FK_category_order_master]
    FOREIGN KEY ([CATEGORY_ID])
    REFERENCES [dbo].[category_information]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_category_order_master'
CREATE INDEX [IX_FK_category_order_master]
ON [dbo].[order_master]
    ([CATEGORY_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------