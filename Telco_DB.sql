## creating a data base
CREATE DATABASE telco_customers_churn;
USE telco_customers_churn;
## Tables based on the Telco_customers_churn data set 


## Table strecture for table ' Location'

CREATE TABLE `location` (
  `customer_id` varchar(50) NOT NULL PRIMARY KEY,
  `country` varchar(50),
  `state` varchar(50),
  `city` varchar(50),
  `zip_code` varchar(50) ,
  `latitude` varchar(50),
  `longitude` varchar(50) 
);
select * from location;

## dumping data into the table 'location'

INSERT INTO  location (`customer_id`, `country`, `state`, `city`,`zip_code`,`latitude`,`longitude`) VALUES
('3668-QPYBK', 'United States', 'California', 'Los Angeles','90003','33.964131','-118.272783'),
('9237-HQITU', 'United States', 'California', 'Los Angeles','90004','33.644954','-118.325648'),
('9305-CDSKC', 'United States', 'California', 'Los Angeles','90005','33.785326','-118.985126'),
('7892-POOKP', 'United States', 'California', 'Beverly Hills','90006','34.624986','-118.156985'),
('0280-XJGEX', 'United States', 'California', 'Huntington Park','90007','34.932164','-118.459365'),
('4190-MFLUW', 'United States', 'California', 'Inglewood','90008','34.785365','-118.265856'),
('8779-QRDMV', 'United States', 'California', 'Beverly Hills','90023','34.459365','-118.256489'),
('1066-JKSGK', 'United States', 'California', 'Marina Del Rey','90021','33.459635','-118.126548'),
('6467-CHFZW', 'United States', 'California', 'Huntington Park','90029','33.659865','-118.659865'),
('8665-UTDHZ', 'United States', 'California', 'Lynwood','90025','33.369258','-118.456985');

------------------------------------------------------------------------------------------------
## Table strecture for table ' customer_personal_details'

CREATE TABLE `customer_personal_details` (
  `customer_id` varchar(50) NOT NULL,
  `gender` varchar(50),
  `senior_citizen` varchar(50),
  `partner` varchar(50),
  `dependents` varchar(50),
  `mobil` varchar(50),
  FOREIGN  KEY (`customer_id`) REFERENCES  telco_customers_churn.location(`customer_id`)
);
select * from customer_personal_details;

## dumping data into the table 'customer_personal_details'

INSERT INTO `customer_personal_details` (`customer_id`, `gender`, `senior_citizen`, `partner`,`dependents`,`mobil`) VALUES
('3668-QPYBK', 'male', 'no', 'yes','yes','yes'),
('9237-HQITU', 'male', 'no', 'yes','yes','yes'),
('9305-CDSKC', 'female', 'yes', 'no','yes','no'),
('7892-POOKP', 'female', 'no', 'no','no','yes'),
('0280-XJGEX', 'male', 'no', 'yes','yes','no'),
('4190-MFLUW', 'female', 'no', 'no','no','yes'),
('8779-QRDMV', 'female', 'yes', 'yes','no','no'),
('1066-JKSGK', 'male', 'no', 'no','yes','yes'),
('6467-CHFZW', 'female', 'yes', 'yes','yes','yes'),
('8665-UTDHZ', 'male', 'yes', 'no','no','no');

 ------------------------------------------------





 
 ## Table strecture for table ' online_services'


CREATE TABLE `online_services` (
  `customer_id` varchar(50) NOT NULL,
  `internet` varchar(50),
  `security` varchar(50),
  `backup` varchar(50),
  `device_protection` varchar(50),
  `tech_support` varchar(50),
  `streaming` varchar(50),
  FOREIGN  KEY (`customer_id`) REFERENCES  telco_customers_churn.location(`customer_id`)
);
select * from online_services;
## dumping data into the table 'online_services'

INSERT INTO online_services (`customer_id`,`internet`, `security`, `backup`, `device_protection`,`tech_support`,`streaming`) VALUES
('3668-QPYBK', 'DLS', 'no', 'yes','yes','yes','yes'),
('9237-HQITU', 'DLS', 'no', 'yes','yes','yes','no'),
('9305-CDSKC', 'fiber_optic', 'yes', 'no','yes','no','no'),
('7892-POOKP', 'fiber_optic', 'no', 'no','no','yes','yes'),
('0280-XJGEX', 'DLS', 'no', 'yes','yes','no','yes'),
('4190-MFLUW', 'fiber_optic', 'no', 'no','no','yes','yes'),
('8779-QRDMV', 'DLS', 'yes', 'yes','no','no','no'),
('1066-JKSGK', 'fiber_optic', 'no', 'no','yes','yes','yes'),
('6467-CHFZW', 'fiber_optic', 'yes', 'yes','yes','yes','no'),
('8665-UTDHZ', 'fiber_optic', 'yes', 'no','no','no','yes');

-----------------------------------------------------------

## Table strecture for table ' payments'


CREATE TABLE `payments` (
  `customer_id` varchar(50) NOT NULL,
  `Payment_Method` varchar(50),
  `Paperless_Billing` varchar(50),
  `Monthly_Charges` varchar(50),
  `Total_Charges` varchar(50),
   FOREIGN  KEY (`customer_id`) REFERENCES  telco_customers_churn.location(`customer_id`)
);
select * from payments;

## dumping data into the table 'payments'

INSERT INTO payments (`customer_id`,`Payment_Method`, `Paperless_Billing`, `Monthly_Charges`, `Total_Charges`) VALUES
('3668-QPYBK', 'Mailed_check', 'no', '54.36','180.65'),
('9237-HQITU', 'Electronic_check', 'no', '99.45','356.26'),
('9305-CDSKC', 'Bank_transfer(automatic)', 'yes', '85.63','298.36'),
('7892-POOKP', 'Credit_card(automatic)', 'no', '100.78','390.25'),
('0280-XJGEX', 'Mailed_check', 'no', '79.15','246.25'),
('4190-MFLUW', 'Mailed_check', 'no', '94.56','312.36'),
('8779-QRDMV', 'Bank_transfer(automatic)', 'yes', '104.93','398.15'),
('1066-JKSGK', 'Mailed_check', 'no', '89.98','278.36'),
('6467-CHFZW', 'Credit_card(automatic)', 'yes', '71.12','225.69'),
('8665-UTDHZ', 'Electronic_check', 'yes', '89.36','314.25');

-----------------------------------------------------------

## Table strecture for table ' churn_details'


CREATE TABLE `churn_details` (
  `customer_id` varchar(50) NOT NULL,
  `churn_lable` varchar(50),
  `Churn_Value` varchar(50) ,
  `Churn_Score` varchar(50),
  `CLTV` varchar(50),
  `Churn_Reason` varchar(50),
  FOREIGN  KEY (`customer_id`) REFERENCES  telco_customers_churn.location(`customer_id`)
);
select * from churn_details;

## dumping data into the table 'churn_details'

INSERT INTO churn_details (`customer_id`,`churn_lable`, `Churn_Value`, `Churn_Score`, `CLTV`,`Churn_Reason`) VALUES
('3668-QPYBK', 'yes', '1', '85','6554','moved'),
('9237-HQITU', 'yes', '1', '79','3566','Price_too_high'),
('9305-CDSKC', 'yes', '1', '83','2986','Competitor_had_better_devices'),
('7892-POOKP', 'yes', '1', '78','3905','moved'),
('0280-XJGEX', 'yes', '1', '79','2465','Product_dissatisfaction'),
('4190-MFLUW', 'yes', '1', '94','3126','Competitor_had_better_devices'),
('8779-QRDMV', 'yes', '1', '63','3985','moved'),
('1066-JKSGK', 'yes', '1', '89','2786','Service_dissatisfaction'),
('6467-CHFZW', 'yes', '1', '71','2259','Network_reliability'),
('8665-UTDHZ', 'yes', '1', '63','3145','Competitor_had_better_devices');

----------------------------------------------------------






