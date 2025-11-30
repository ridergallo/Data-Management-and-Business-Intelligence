CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN

	select c.[customer_id]
		  ,c.[first_name]
		  ,c.[last_name]
		  ,c.[email]
		  ,a.[street_name]
		  ,a.[street_number]
		  ,a.city
		  ,co.country_name
		  ,adds.address_status
	  FROM [dbo].[customer] c
	LEFT JOIN (select customer_id, max(address_id) as address_id
			  from [dbo].[customer_address] 
			group by customer_id) cam ON (c.customer_id = cam.customer_id)
	LEFT JOIN [dbo].[customer_address] ca ON (ca.customer_id = cam.customer_id and ca.address_id = cam.address_id)
	LEFT JOIN [dbo].[address_status] adds ON (ca.status_id = adds.status_id)
	LEFT JOIN [dbo].[address] a ON (ca.address_id = a.address_id)
	LEFT JOIN [dbo].[country] co on (a.country_id = co.country_id)
  WHERE (c.[rowversion] > CONVERT(ROWVERSION,@startRow) AND c.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (ca.[rowversion] > CONVERT(ROWVERSION,@startRow) AND ca.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (adds.[rowversion] > CONVERT(ROWVERSION,@startRow) AND adds.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (a.[rowversion] > CONVERT(ROWVERSION,@startRow) AND a.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (co.[rowversion] > CONVERT(ROWVERSION,@startRow) AND co.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO