CREATE TABLE [dbo].[DimCustomer] (
    [customer_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimCustomer PRIMARY KEY,
    [customer_id] INT           NOT NULL,
    [first_name]  VARCHAR (200) NULL,
    [last_name]   VARCHAR (200) NULL,
    [email]       VARCHAR (350) NULL
);
GO