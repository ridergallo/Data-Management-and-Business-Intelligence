CREATE TABLE [staging].[custOrder] (
    [line_id]               INT  NOT NULL,
    [order_id]              INT  NOT NULL,
    [book_sk]               INT  NOT NULL,
    [customer_sk]           INT  NOT NULL,
    [address_sk]            INT  NOT NULL,
    [shipping_method_sk]    INT  NOT NULL,
    [order_date_sk]         INT  NOT NULL,
    [price]                 DECIMAL (5, 2) NULL

);
GO