/*
Insert Sample Merchant Data
*/

INSERT INTO Merchants VALUES
('M001','ABC Retail','India','T+1','Stripe','Acquirer A','Active'),
('M002','XYZ Mart','India','T+2','Adyen','Acquirer A','Active'),
('M003','Travel Hub','India','T+1','Fiserv','Acquirer B','Active');

/*
Insert Sample Transactions
*/

INSERT INTO Transactions VALUES
('TX10001','M001','Visa','Credit','412345',2500,'INR',
GETDATE(),'AUTH001','00','Approved');

INSERT INTO Settlement VALUES
('SET1001','TX10001',GETDATE(),2500,'INR','Settled','T+1');
