CREATE TABLE [staging].[shippingMethod] (
    [method_sk] [int] NOT NULL,
    [method_id]   INT            NOT NULL,
    [method_name] VARCHAR (100)  NULL,
    [cost]        DECIMAL (6, 2) NULL
);
GO