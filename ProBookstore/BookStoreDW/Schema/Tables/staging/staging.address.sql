CREATE TABLE [staging].[address] (
    [address_sk] [int] NOT NULL,
    [address_id]    INT           NOT NULL,
    [street_number] VARCHAR (10)  NULL,
    [street_name]   VARCHAR (200) NULL,
    [city]          VARCHAR (100) NULL,
    [country_sk]    INT           NULL
);
GO