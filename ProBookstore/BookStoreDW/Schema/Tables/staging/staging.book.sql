CREATE TABLE [staging].[book] (
    [book_id]               INT NOT NULL,
    [title]                 VARCHAR (400) NULL,
    [isbn13]                VARCHAR (13)  NULL,
    [language_sk]           INT  NOT NULL,
    [num_pages]             INT   NULL,
    [publication_date_sk]   INT  NOT NULL,
    [publisher_sk]          INT  NOT NULL

);
GO