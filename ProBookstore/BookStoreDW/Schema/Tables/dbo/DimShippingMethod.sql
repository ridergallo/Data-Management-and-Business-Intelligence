CREATE TABLE [dbo].[DimShippingMethod] (
    [method_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimShippingMethod PRIMARY KEY,
    [method_id]   INT            NOT NULL,
    [method_name] VARCHAR (100)  NULL,
    [cost]        DECIMAL (6, 2) NULL
);
GO