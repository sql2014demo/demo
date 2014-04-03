
CREATE VIEW [dbo].[vProductOrders]
AS

SELECT dbo.ProductOrders.TransactionKey, dbo.ProductOrders.DateTimeStamp, dbo.DimProduct.ProductName, 
                      dbo.DimProductCategory.ProductCategoryName, dbo.ProductOrders.Quantity, dbo.ProductOrders.Price, 
                      dbo.DimCustomer.FirstName + ' ' + dbo.DimCustomer.LastName AS CustomerName
FROM         dbo.ProductOrders INNER JOIN
                      dbo.DimProduct ON dbo.ProductOrders.ProductKey = dbo.DimProduct.ProductKey INNER JOIN
                      dbo.DimCustomer ON dbo.ProductOrders.CustomerKey = dbo.DimCustomer.CustomerKey INNER JOIN
                      dbo.DimProductSubcategory ON dbo.DimProduct.ProductSubcategoryKey = dbo.DimProductSubcategory.ProductSubcategoryKey INNER JOIN
                      dbo.DimProductCategory ON dbo.DimProductSubcategory.ProductCategoryKey = dbo.DimProductCategory.ProductCategoryKey

