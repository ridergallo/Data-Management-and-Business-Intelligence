CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN

	UPDATE dc
	SET [first_name] = sc.[first_name]
	   ,[last_name] = sc.[last_name]
	   ,[email] = sc.[email]
	FROM [dbo].[DimCustomer] dc
	INNER JOIN [staging].[customer] sc ON (dc.[customer_sk]=sc.[customer_sk])
END
GO