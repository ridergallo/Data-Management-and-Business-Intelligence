CREATE TABLE [staging].[book] (
    [book_sk]               INT NOT NULL,
    [book_id]               INT NOT NULL,
    [title]                 VARCHAR (400) NULL,
    [isbn13]                VARCHAR (13)  NULL,
    [author_name]           VARCHAR (400) NULL,
    [language_code]         VARCHAR (8)  NULL,
    [language_name]         VARCHAR (50) NULL,
    [publisher_name]        VARCHAR (400) NULL,
    [publication_date]      DATE          NULL,
    [num_pages]             INT  NULL
);
GO