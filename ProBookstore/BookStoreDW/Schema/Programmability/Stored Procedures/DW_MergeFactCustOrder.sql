CREATE PROCEDURE [dbo].[DW_MergeFactCustOrder]
AS
BEGIN

	UPDATE dc
	SET [book_sk] = sc.[book_sk]
	   ,[customer_sk] = sc.[customer_sk]
	   ,[address_sk] = sc.[address_sk]
       ,[shipping_method_sk] = sc.[shipping_method_sk]
	   ,[order_date_sk] = sc.[order_date_sk]
       ,[price] = sc.[price]
	FROM [dbo].[FactCustOrder] dc
	INNER JOIN [staging].[custOrder] sc ON (dc.[order_id] = sc.[order_id] AND dc.[order_id] = sc.[order_id])
END
GO
