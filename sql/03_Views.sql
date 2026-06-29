/*
Settlement Reconciliation View
*/

CREATE VIEW vw_Reconciliation
AS

SELECT

t.TransactionID,

m.MerchantName,

t.Network,

t.Amount,

s.SettlementAmount,

CASE

WHEN t.Amount=s.SettlementAmount

THEN 'Matched'

ELSE 'Mismatch'

END AS ReconciliationStatus

FROM Transactions t

JOIN Settlement s

ON t.TransactionID=s.TransactionID

JOIN Merchants m

ON t.MerchantID=m.MerchantID;
