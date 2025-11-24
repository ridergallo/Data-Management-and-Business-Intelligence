CREATE PROCEDURE [dbo].[DW_MergeDimAuthor]
AS
BEGIN

	UPDATE dc
	SET [author_name] = sc.[author_name]
	FROM [dbo].[DimAuthor] dc
	INNER JOIN [staging].[author] sc ON (dc.[author_sk]=sc.[author_sk])
END
GO