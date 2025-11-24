CREATE PROCEDURE [dbo].[DW_MergeDimBook]
AS
BEGIN

	UPDATE dc
	SET [title] = sc.[title]
	   ,[isbn13] = sc.[isbn13]
	   ,[author_name] = sc.[author_name]
	   ,[language_code] = sc.[language_code]
	   ,[language_name] = sc.[language_name]
	   ,[publisher_name] = sc.[publisher_name]
	   ,[publication_date] = sc.[publication_date]
	   ,[num_pages] = sc.[num_pages]
	FROM [dbo].[DimBook] dc
	INNER JOIN [staging].[book] sc ON (dc.[book_sk]=sc.[book_sk])
END
GO