/******************************************/
/*   DatabaseName = churn_db   */
/*   TableName = customer_churn1   */
/******************************************/
CREATE TABLE `customer_churn1` (
  `CustomerId` int DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `CreditScore` int DEFAULT NULL,
  `Geography` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Tenure` int DEFAULT NULL,
  `Balance` float DEFAULT NULL,
  `NumOfProducts` int DEFAULT NULL,
  `HasCrCard` int DEFAULT NULL,
  `IsActiveMember` int DEFAULT NULL,
  `EstimatedSalary` float DEFAULT NULL,
  `Exited` int DEFAULT NULL,
  `original` int NOT NULL DEFAULT '0',
  UNIQUE KEY `CustomerId` (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;

/******************************************/
/*   DatabaseName = churn_db   */
/*   TableName = customer_churn2   */
/******************************************/
CREATE TABLE `customer_churn2` (
  `CustomerId` int DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `CreditScore` int DEFAULT NULL,
  `Geography` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Age` float DEFAULT NULL,
  `Tenure` int DEFAULT NULL,
  `Balance` float DEFAULT NULL,
  `NumOfProducts` int DEFAULT NULL,
  `HasCrCard` int DEFAULT NULL,
  `IsActiveMember` int DEFAULT NULL,
  `EstimatedSalary` float DEFAULT NULL,
  `Exited` int DEFAULT NULL,
  `original` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3
;
