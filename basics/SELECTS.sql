-- Select 1000
SELECT TOP (1000) *
  FROM [WideWorldImporters].[Sales].[InvoiceLines]

-- Select Distinct
SELECT DISTINCT [StockItemID]
  FROM [WideWorldImporters].[Sales].[InvoiceLines]

-- Select LIMIT with distinct
-- SQL Server does not support LIMIT, but you can use TOP with DISTINCT
SELECT DISTINCT TOP (10) [InvoiceId],[StockItemID]
    FROM [WideWorldImporters].[Sales].[InvoiceLines]

