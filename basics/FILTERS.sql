-- simplest where clause
-- select all people WITH not null hASHEDPASSWORD
SELECT *
  FROM [WideWorldImporters].[Application].[People]
  where HashedPassword is not null

-- select all people with preferredName with a ph in them
SELECT *
  FROM [WideWorldImporters].[Application].[People]
  WHERE PreferredName LIKE '%ph%'