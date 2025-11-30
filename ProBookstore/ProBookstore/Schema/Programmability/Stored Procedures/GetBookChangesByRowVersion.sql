CREATE PROCEDURE [dbo].[GetBookChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN

    SELECT b.[book_id]
          ,b.[title]
          ,b.[isbn13]
          ,a.[author_name] 
          ,bl.[language_code]
          ,bl.[language_name]
          ,p.[publisher_name]
          ,b.[publication_date]
          ,b.[num_pages]
        FROM [dbo].[book] b
    INNER JOIN [dbo].[book_language] bl ON b.language_id = bl.language_id
    INNER JOIN [dbo].[publisher] p ON b.publisher_id = p.publisher_id
    LEFT JOIN (select book_id, max(author_id) as author_id, max(rowversion) as rowversion 
                  from [dbo].[book_author] group by book_id) ba ON b.book_id = ba.book_id
    LEFT JOIN [dbo].[author] a ON ba.author_id = a.author_id
    WHERE (b.[rowversion] > CONVERT(ROWVERSION,@startRow) AND b.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (bl.[rowversion] > CONVERT(ROWVERSION,@startRow) AND bl.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (p.[rowversion] > CONVERT(ROWVERSION,@startRow) AND p.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (ba.[rowversion] > CONVERT(ROWVERSION,@startRow) AND ba.[rowversion] <= CONVERT(ROWVERSION,@endRow))
  OR (a.[rowversion] > CONVERT(ROWVERSION,@startRow) AND a.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO
