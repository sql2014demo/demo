CREATE TABLE [dbo].[DimProductSubcategory] (
    [ProductSubcategoryKey]         INT            NOT NULL,
    [ProductSubcategoryLabel]       NVARCHAR (100) NULL,
    [ProductSubcategoryName]        NVARCHAR (50)  NOT NULL,
    [ProductSubcategoryDescription] NVARCHAR (100) NULL,
    [ProductCategoryKey]            INT            NULL,
    [ImageURL]                      NVARCHAR (512) NULL,
    [ETLLoadID]                     INT            NULL,
    [LoadDate]                      DATETIME       NULL,
    [UpdateDate]                    DATETIME       NULL
);

