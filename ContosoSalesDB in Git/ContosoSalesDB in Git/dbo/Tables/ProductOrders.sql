CREATE TABLE [dbo].[ProductOrders] (
    [TransactionKey] INT      IDENTITY (1, 1) NOT NULL,
    [ProductKey]     INT      NULL,
    [OrderDateKey]   DATETIME NULL,
    [CustomerKey]    INT      NULL,
    [Quantity]       INT      NULL,
    [Price]          MONEY    NULL,
    [DateTimeStamp]  DATETIME NULL,
    CONSTRAINT [PK_ProductOrders] PRIMARY KEY CLUSTERED ([TransactionKey] ASC)
);

