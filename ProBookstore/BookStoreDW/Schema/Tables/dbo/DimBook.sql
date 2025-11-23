CREATE TABLE [dbo].[DimBook] (
    [book_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimBook PRIMARY KEY,
    [book_id]               INT NOT NULL,
    [title]                 VARCHAR (400) NULL,
    [isbn13]                VARCHAR (13)  NULL,
    [language_name]         VARCHAR (50) NULL,
    [publisher_name]        VARCHAR (400) NULL,
    [publication_date]      DATE          NULL,
    [num_pages]             INT  NULL
);
GO