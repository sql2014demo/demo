CREATE TABLE [dbo].[DimProductCategory] (
    [ProductCategoryKey]         INT            NOT NULL,
    [ProductCategoryLabel]       NVARCHAR (100) NULL,
    [ProductCategoryName]        NVARCHAR (30)  NOT NULL,
    [ProductCategoryDescription] NVARCHAR (50)  NOT NULL,
    [ImageURL]                   NVARCHAR (512) NULL,
    [ETLLoadID]                  INT            NULL,
    [LoadDate]                   DATETIME       NULL,
    [UpdateDate]                 DATETIME       NULL
);

