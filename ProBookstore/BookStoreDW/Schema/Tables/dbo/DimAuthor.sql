CREATE TABLE [dbo].[DimAuthor] (
    [author_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimAuthor PRIMARY KEY,
    [author_id]   INT           NOT NULL,
    [author_name] VARCHAR (400) NULL
);
GO