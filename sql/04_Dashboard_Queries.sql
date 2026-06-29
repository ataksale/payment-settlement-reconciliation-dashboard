-- Total Transactions

SELECT COUNT(*) TotalTransactions
FROM Transactions;

------------------------------------------------

-- Total Settlement

SELECT SUM(SettlementAmount)
FROM Settlement;

------------------------------------------------

-- Approved Transactions

SELECT COUNT(*)
FROM Transactions
WHERE Status='Approved';

------------------------------------------------

-- Declined Transactions

SELECT COUNT(*)
FROM Transactions
WHERE Status='Declined';

------------------------------------------------

-- Settlement Success %

SELECT

ROUND(

100.0*

SUM(CASE WHEN SettlementStatus='Settled'
THEN 1 ELSE 0 END)

/COUNT(*),2)

AS SettlementSuccess

FROM Settlement;
