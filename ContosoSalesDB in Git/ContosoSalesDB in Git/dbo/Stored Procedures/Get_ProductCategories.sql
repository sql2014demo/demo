
CREATE PROC [dbo].[Get_ProductCategories]
AS
BEGIN
/** Returns all product categories and image thumbnails **/
	SELECT ProductCategoryKey, ProductCategoryName, ImageURL
	FROM DimProductCategory
END

