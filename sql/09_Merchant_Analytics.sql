/*
Top Merchants
*/

SELECT

m.MerchantName,

COUNT(*) Transactions,

SUM(t.Amount) Amount

FROM Transactions t

JOIN Merchants m

ON t.MerchantID=m.MerchantID

GROUP BY

m.MerchantName

ORDER BY Amount DESC;

------------------------------------------------

/*
Settlement by Merchant
*/

SELECT

MerchantName,

SUM(SettlementAmount)

FROM vw_Reconciliation

GROUP BY MerchantName;
