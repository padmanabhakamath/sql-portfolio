-- 
-- For Sales.Invoice, Prepare the following table
   -- Get the packedByPerson Name, PackedByPersonid and an array of DeliverInstructions for that person.
-- TRICKY ISSUE : SQL server no longer supports ARRAY_AGG
SELECT
	ap.FullName,
	si.PackedByPersonID,
	STRING_AGG(CAST(si.DeliveryInstructions as NVARCHAR(MAX)), '--') as something
from Application.people ap 
JOIN Sales.Invoices si on si.PackedByPersonID = ap.PersonID
GROUP BY ap.FullName, si.PackedByPersonID