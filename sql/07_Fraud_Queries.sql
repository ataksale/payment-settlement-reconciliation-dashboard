/*
High Risk Transactions
*/

SELECT *

FROM Fraud

WHERE RiskScore>80;

------------------------------------------------

/*
Fraud Summary
*/

SELECT

FraudType,

COUNT(*)

FROM Fraud

GROUP BY FraudType;
