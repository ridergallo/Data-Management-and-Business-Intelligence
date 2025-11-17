CREATE TABLE [dbo].[DimPublisher] (
    [publisher_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimPublisher PRIMARY KEY,
    [publisher_id]   INT           NOT NULL,
    [publisher_name] VARCHAR (400) NULL
);

