CREATE TABLE [dbo].[DimAddressStatus] (
    [address_status_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimAddressStatus PRIMARY KEY,
    [status_id]      INT          NOT NULL,
    [address_status] VARCHAR (30) NULL
);

