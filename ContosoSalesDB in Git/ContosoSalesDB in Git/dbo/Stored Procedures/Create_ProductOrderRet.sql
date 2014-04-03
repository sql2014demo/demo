

CREATE PROC [dbo].[Create_ProductOrderRet]
	@ProductKey int = 1,
	@CustomerKey int = 1,
	@Quantity int = 1,
	@Result varchar(255) output
AS
BEGIN

DECLARE @now as datetime, @Today as DateTime, @Price as money

SELECT @now = GETDATE()
SELECT @Today = cast('12/1/2011' as datetime)
SELECT @Result = 'Error'

SELECT @Price = P.UnitPrice * @Quantity
FROM DimProduct P 
WHERE P.ProductKey = @ProductKey

INSERT INTO [dbo].[ProductOrders] (ProductKey, OrderDateKey, CustomerKey, Quantity, Price, DateTimeStamp)
VALUES (
	@ProductKey,
	@Today,
	@CustomerKey,
	@Quantity,
	@Price, 
	@now
	)

-- Return value for confirmation
SELECT @Result = 'Order placed successfully. Order processed by server: ' + @@SERVERNAME

END


