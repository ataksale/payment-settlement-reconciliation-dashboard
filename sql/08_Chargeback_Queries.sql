/*
Chargeback Summary
*/

SELECT

ReasonCode,

COUNT(*) Cases,

SUM(Amount)

FROM Chargeback

GROUP BY ReasonCode;

------------------------------------------------

SELECT *

FROM Chargeback

WHERE Status='Pending';
