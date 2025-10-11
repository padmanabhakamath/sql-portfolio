-- Summarize the transaction amounts by supplierid
-- 'HAVING' is specifically used for filtering aggregated data
SELECT SupplierID, SUM(TransactionAmount) AS TotalTransactionAmount
  FROM [WideWorldImporters].[Purchasing].[SupplierTransactions]
  -- WHERE TotalTransactionAmount > 0 -- 
 GROUP BY SupplierID
 HAVING SUM(TransactionAmount) > 0 -- HAVING is like a WHERE for aggregated data
 ORDER BY TotalTransactionAmount DESC;