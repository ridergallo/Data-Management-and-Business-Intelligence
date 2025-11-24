CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN

	UPDATE dc
	SET [street_number] = sc.[street_number]
	   ,[street_name] = sc.[street_name]
	   ,[city] = sc.[city]
	   ,[country_name] = sc.[country_name]
	FROM [dbo].[DimAddress] dc
	INNER JOIN [staging].[address] sc ON (dc.[address_sk]=sc.[address_sk])
END
GO