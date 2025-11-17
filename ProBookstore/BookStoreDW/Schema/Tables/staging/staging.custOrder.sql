CREATE TABLE [staging].[custOrder] (
    [order_id]           INT  NOT NULL,
    [order_date_sk]      INT  NOT NULL,
    [customer_sk]        INT  NOT NULL,
    [shipping_method_sk] INT  NOT NULL,
    [dest_address_sk]    INT  NOT NULL

);
GO