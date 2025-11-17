CREATE TABLE [dbo].[FactBook] (
    [book_id]               INT NOT NULL,
    [title]                 VARCHAR (400) NULL,
    [isbn13]                VARCHAR (13)  NULL,
    [language_sk]           INT  NOT NULL,
    [num_pages]             INT   NULL,
    [publication_date_sk]   INT  NOT NULL,
    [publisher_sk]          INT  NOT NULL

);
GO

ALTER TABLE [dbo].[FactBook] ADD CONSTRAINT [PK_FactBook] PRIMARY KEY ([book_id] ASC);
GO
ALTER TABLE [dbo].[FactBook] ADD CONSTRAINT [FK_DimBookLanguage] FOREIGN KEY ([language_sk]) REFERENCES [dbo].[DimBookLanguage] ([language_sk]);
GO
ALTER TABLE [dbo].[FactBook] ADD CONSTRAINT [fk_DimPublisher] FOREIGN KEY ([publisher_sk]) REFERENCES [dbo].[DimPublisher] ([publisher_sk]);
GO
ALTER TABLE [dbo].[FactBook] ADD CONSTRAINT [FK_DimDate_PublicationDate] FOREIGN KEY([publication_date_sk]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO