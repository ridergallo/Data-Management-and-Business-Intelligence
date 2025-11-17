CREATE TABLE [dbo].[DimAddress] (
    [address_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimAddress PRIMARY KEY,
    [address_id]    INT           NOT NULL,
    [street_number] VARCHAR (10)  NULL,
    [street_name]   VARCHAR (200) NULL,
    [city]          VARCHAR (100) NULL,
    [country_sk]    INT           NULL
);

