CREATE TABLE [dbo].[DimOrderStatus] (
    [order_status_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimOrderStatus PRIMARY KEY,
    [status_id]    INT          NOT NULL,
    [status_value] VARCHAR (20) NULL
);
GO