CREATE DATABASE ABC_Computer;USE ABC_Computer;

CREATE TABLE 
Computer (
  SerialNumber INT PRIMARY KEY NOT NULL,
  Make VARCHAR(50)NOT NULL,
  Model VARCHAR(50)NOT NULL,
  ProcessorType VARCHAR(50)NOT NULL,
  ProcessorSpeed FLOAT,
  MainMemory VARCHAR(50)NOT NULL,
  DiskSize VARCHAR(50)NOT NULL);

INSERT INTO Computer VALUES (SerialNumber, Make, Model, ProcessorType, ProcessorSpeed, MainMemory, DiskSize)
(9871234, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871245, 'HP', 'Pavilion 500-210qe', 'Intel i5-4531', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871256, 'HP', 'Pavilion 500-210qe', 'Intel i5-4532', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871267, 'HP', 'Pavilion 500-210qe', 'Intel i5-4533', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871278, 'HP', 'Pavilion 500-210qe', 'Intel i5-4534', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(9871289, 'HP', 'Pavilion 500-210qe', 'Intel i5-4535', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(6541001, 'DELL', 'OptiPlex 902', 'Intel i7-4770', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(6541002, 'DELL', 'OptiPlex 902', 'Intel i7-4771', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(6541003, 'DELL', 'OptiPlex 902', 'Intel i7-4772', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(6541004, 'DELL', 'OptiPlex 902', 'Intel i7-4773', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(6541005, 'DELL', 'OptiPlex 902', 'Intel i7-4774', 3.00, '6.0 Gbytes', '1.0 Tbytes'),
(6541006, 'DELL', 'OptiPlex 902', 'Intel i7-4775', 3.00, '6.0 Gbytes', '1.0 Tbytes'),

SELECT * FROM Computer WHERE Model = 'Pavilion 500-210qe';
SELECT * FROM Computer WHERE Model = 'OptiPlex 902';

ALTER TABLE Computer ADD Graphics TEXT(40) NOT NULL DEFAULT 'Integrated Intel HD Graphics 4600';

ALTER TABLE Computer DROP COLUMN ProcessorSpeed;

SELECT * INTO OUTFILE 'ABC Computer.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM Computer;