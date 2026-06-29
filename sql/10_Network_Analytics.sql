/*
Settlement by Network
*/

SELECT

Network,

SUM(SettlementAmount)

FROM vw_Reconciliation

GROUP BY Network;

------------------------------------------------

/*
Approval Rate
*/

SELECT

Network,

ROUND(

100.0*

SUM(CASE WHEN Status='Approved'
THEN 1 ELSE 0 END)

/COUNT(*),2)

ApprovalRate

FROM Transactions

GROUP BY Network;
