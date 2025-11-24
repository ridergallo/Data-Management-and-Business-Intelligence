CREATE PROCEDURE [dbo].[GetCustOrderChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN

	SELECT ord.order_id
	      ,ord.order_date
		  ,ord.customer_id
		  ,ord.dest_address_id
		  ,ord.shipping_method_id
		  ,ori.line_id
		  ,ori.book_id
		  ,ori.price
		  ,OrderDateKey = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,ord.[order_date]))
						  + CASE 
								WHEN DATEPART(MONTH,ord.[order_date]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ord.[order_date]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ord.[order_date]))
							END
						  + CASE 
								WHEN DATEPART(DAY,ord.[order_date]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ord.[order_date]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,ord.[order_date]))
							END))
	FROM [dbo].[cust_order] ord
	INNER JOIN [dbo].[order_line] ori ON (ord.order_id = ori.order_id)
	WHERE (ord.[rowversion] > CONVERT(ROWVERSION,@startRow) AND ord.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (ori.[rowversion] > CONVERT(ROWVERSION,@startRow) AND ori.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO
