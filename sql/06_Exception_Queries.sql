/*
Pending Settlement
*/

SELECT *

FROM Settlement

WHERE SettlementStatus='Pending';

------------------------------------------------

/*
Settlement Exception
*/

SELECT *

FROM Settlement

WHERE SettlementStatus='Exception';

------------------------------------------------

/*
Duplicate Transaction
*/

SELECT

TransactionID,

COUNT(*)

FROM Transactions

GROUP BY TransactionID

HAVING COUNT(*)>1;
