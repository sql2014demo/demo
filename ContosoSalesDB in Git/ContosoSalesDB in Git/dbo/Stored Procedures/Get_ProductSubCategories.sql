

CREATE PROC [dbo].[Get_ProductSubCategories]
	@ProductCategoryKey int = 3
AS
BEGIN
/** Returns product subcategories and image thumbnails for a given product category (Id).
*** Default product category is "Computers" (id = 3) **/
	SELECT ProductSubCategoryKey, ProductCategoryKey, ProductSubCategoryName, ImageURL
	FROM DimProductSubCategory
	WHERE ProductCategoryKey = @ProductCategoryKey
END

