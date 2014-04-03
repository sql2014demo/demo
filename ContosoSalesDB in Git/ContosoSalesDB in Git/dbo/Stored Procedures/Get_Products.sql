

CREATE PROC [dbo].[Get_Products]
	@ProductSubCategoryKey int = 15
AS
BEGIN
/** Returns products and image thumbnails for a given product sub-category (Id).
*** Default product sub-category is "Laptops" (id = 15) **/
	SELECT ProductKey, ProductName, UnitPrice, ImageURL
	FROM DimProduct
	WHERE ProductSubCategoryKey = @ProductSubCategoryKey
END

