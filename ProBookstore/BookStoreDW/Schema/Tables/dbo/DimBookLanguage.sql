CREATE TABLE [dbo].[DimBookLanguage] (
    [language_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimBookLanguage PRIMARY KEY,
    [language_id]   INT          NOT NULL,
    [language_code] VARCHAR (8)  NULL,
    [language_name] VARCHAR (50) NULL
);

