DELETE FROM customer_churn1 WHERE Age IS NULL OR IsActiveMember IS NULL OR HasCrCard IS NULL;
DELETE FROM customer_churn2 WHERE id IS NULL 
OR CustomerId IS NULL
OR Surname IS NULL
OR CreditScore IS NULL
OR Geography IS NULL
OR Gender IS NULL
OR Age IS NULL
OR Tenure IS NULL
OR Balance IS NULL
OR NumOfProducts IS NULL
OR HasCrCard IS NULL
OR IsActiveMember IS NULL
OR EstimatedSalary IS NULL
OR Exited IS NULL;

DELETE FROM customer_churn1 
WHERE RowNumber NOT IN (
  SELECT MIN(RowNumber) 
  FROM customer_churn1 
  GROUP BY CustomerId
);
DELETE FROM customer_churn2 
WHERE id NOT IN (
  SELECT MIN(id) 
  FROM customer_churn2
  GROUP BY CustomerId
);

ALTER TABLE customer_churn1 DROP COLUMN RowNumber;
ALTER TABLE customer_churn1 ADD original INT NOT NULL DEFAULT 0;
ALTER TABLE customer_churn2 DROP COLUMN id;
ALTER TABLE customer_churn2 ADD original INT NOT NULL DEFAULT 1;

SELECT * FROM customer_churn1
UNION ALL
SELECT * FROM customer_churn2;

