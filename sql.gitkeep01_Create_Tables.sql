This consists of sample SQL queries to pull the data
/*
====================================================
Project : Payment Settlement Reconciliation Dashboard
Author  : Your Name
Purpose : Create database tables
====================================================
*/

CREATE TABLE Merchants
(
    MerchantID VARCHAR(20) PRIMARY KEY,
    MerchantName VARCHAR(100),
    Country VARCHAR(50),
    SettlementCycle VARCHAR(10),
    PSP VARCHAR(100),
    Acquirer VARCHAR(100),
    Status VARCHAR(20)
);

CREATE TABLE Transactions
(
    TransactionID VARCHAR(30) PRIMARY KEY,
    MerchantID VARCHAR(20),
    Network VARCHAR(30),
    CardType VARCHAR(30),
    BIN VARCHAR(10),
    Amount DECIMAL(18,2),
    Currency VARCHAR(10),
    TransactionDate DATETIME,
    AuthorizationCode VARCHAR(20),
    ResponseCode VARCHAR(5),
    Status VARCHAR(20)
);

CREATE TABLE Settlement
(
    SettlementID VARCHAR(30) PRIMARY KEY,
    TransactionID VARCHAR(30),
    SettlementDate DATE,
    SettlementAmount DECIMAL(18,2),
    SettlementCurrency VARCHAR(10),
    SettlementStatus VARCHAR(20),
    SettlementCycle VARCHAR(10)
);

CREATE TABLE Fraud
(
    FraudID VARCHAR(30),
    TransactionID VARCHAR(30),
    RiskScore INT,
    FraudType VARCHAR(50),
    Status VARCHAR(20)
);

CREATE TABLE Chargeback
(
    ChargebackID VARCHAR(30),
    TransactionID VARCHAR(30),
    ReasonCode VARCHAR(20),
    Amount DECIMAL(18,2),
    ChargebackDate DATE,
    Status VARCHAR(20)
);
