-- Summarize the transaction amounts by supplierid
-- 'HAVING' is specifically used for filtering aggregated data
SELECT SupplierID, SUM(TransactionAmount) AS TotalTransactionAmount
  FROM [WideWorldImporters].[Purchasing].[SupplierTransactions]
  -- WHERE TotalTransactionAmount > 0 -- 
 GROUP BY SupplierID
 HAVING SUM(TransactionAmount) > 0 -- HAVING is like a WHERE for aggregated data
 ORDER BY TotalTransactionAmount DESC;

 -- Calculate Quantity for each Package Type from the InvoiceLines table
    -- Also output the PackageTypeName from the Warehouse.PackageTypes table
SELECT pt.PackageTypeName,il.PackageTypeId, SUM(il.Quantity) AS TotalQuantity
 from [WideWorldImporters].[Sales].[InvoiceLines] AS il
 JOIN  [WideWorldImporters].[Warehouse].[PackageTypes] AS pt
    ON pt.PackageTypeId = il.PackageTypeId
 GROUP BY pt.PackageTypeName, il.PackageTypeId

 -- From supplier transactions, get the count of all transactions for every supplierId
 -- Additional condition - The transaction amount must be greater than 850
 SELECT Count(*) as transactionCountGreaterThan850, sc.SupplierId
  FROM [WideWorldImporters].[Purchasing].[SupplierTransactions] AS sc
  Where sc.TransactionAmount > 850.00
  GROUP BY sc.SupplierId
