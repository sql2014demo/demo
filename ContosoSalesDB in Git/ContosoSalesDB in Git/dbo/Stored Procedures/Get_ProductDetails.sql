

CREATE PROC [dbo].[Get_ProductDetails]
	@ProductKey int = 338
AS
BEGIN
/** Returns product details, given ProductKey **/
	SELECT ProductName, BrandName, Manufacturer, UnitPrice, ImageURL
	FROM DimProduct
	WHERE ProductKey = @ProductKey
END

