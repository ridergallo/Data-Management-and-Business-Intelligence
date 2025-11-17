CREATE TABLE [dbo].[DimCountry] (
    [country_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimCountry PRIMARY KEY,
    [country_id]   INT           NOT NULL,
    [country_name] VARCHAR (200) NULL
);

