/*
Matching Transactions
*/

SELECT

t.TransactionID,

t.Amount,

s.SettlementAmount,

CASE

WHEN t.Amount=s.SettlementAmount

THEN 'Matched'

ELSE 'Mismatch'

END Status

FROM Transactions t

JOIN Settlement s

ON t.TransactionID=s.TransactionID;

------------------------------------------------

/*
Missing Settlement
*/

SELECT

t.TransactionID

FROM Transactions t

LEFT JOIN Settlement s

ON t.TransactionID=s.TransactionID

WHERE s.TransactionID IS NULL;

------------------------------------------------

/*
Amount Difference
*/

SELECT

t.TransactionID,

t.Amount,

s.SettlementAmount,

t.Amount-s.SettlementAmount Difference

FROM Transactions t

JOIN Settlement s

ON t.TransactionID=s.TransactionID;
