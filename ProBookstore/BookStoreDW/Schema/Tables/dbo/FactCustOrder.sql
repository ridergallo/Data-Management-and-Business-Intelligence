CREATE TABLE [dbo].[FactCustOrder] (
    [order_id]           INT  NOT NULL,
    [order_date_sk]      INT  NOT NULL,
    [customer_sk]        INT  NOT NULL,
    [shipping_method_sk] INT  NOT NULL,
    [dest_address_sk]    INT  NOT NULL

);
GO

ALTER TABLE [dbo].[FactCustOrder] ADD CONSTRAINT [PK_FactCustOrder] PRIMARY KEY ([order_id] ASC);
GO
ALTER TABLE [dbo].[FactCustOrder] ADD CONSTRAINT [FK_DimDate_OrderDate] FOREIGN KEY([order_date_sk]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO
ALTER TABLE [dbo].[FactCustOrder] ADD CONSTRAINT [FK_DimAddress] FOREIGN KEY ([dest_address_sk]) REFERENCES [dbo].[DimAddress] ([address_sk]);
GO
ALTER TABLE [dbo].[FactCustOrder] ADD CONSTRAINT [FK_DimCustomer] FOREIGN KEY ([customer_sk]) REFERENCES [dbo].[DimCustomer] ([customer_sk]);
GO
ALTER TABLE [dbo].[FactCustOrder] ADD CONSTRAINT [FK_DimShippingMethod] FOREIGN KEY ([shipping_method_sk]) REFERENCES [dbo].[DimShippingMethod] ([method_sk])
GO
