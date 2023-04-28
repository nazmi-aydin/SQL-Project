use info_project_group4;

-- List of campaigned products
SELECT product_name AS 'Product Name', campaign_id AS 'Campaign ID' FROM PRODUCT
WHERE campaign_id IN (SELECT campaign_id FROM CAMPAIGN WHERE campaign_id != 0);

-- List of products from different brands
Select product_name 'Product Name', product_price AS 'Product Price', product_weight 'Product Weight (gr)', brand_id AS "Brand ID"
FROM PRODUCT;

-- List of top selling products and their brands
SELECT brand_name AS 'Brand Name', sum(line_units) AS 'Number of product sold', product_name AS 'Product Name' FROM LINE
JOIN PRODUCT ON LINE.product_id = PRODUCT.product_id
JOIN BRAND ON PRODUCT.brand_id = BRAND.brand_id
GROUP BY brand_name, product_name
ORDER BY sum(line_units) DESC
LIMIT 5;

-- List of salaries of all employees
SELECT emp_id AS "Employee ID", emp_fname 'First Name', emp_lname AS 'Last Name', SALARY.sal_id AS "Salary ID", sal_amount AS 'Salary Amounts'
FROM EMPLOYEE
JOIN SALARY ON EMPLOYEE.sal_id = SALARY.sal_id;

-- The procedure that allows adding a new record to the BILL table table and list all the records
DROP PROCEDURE IF EXISTS add_bill;

DELIMITER $$

CREATE PROCEDURE add_bill(
BILL_ID VARCHAR(30),
BILL_TYPE VARCHAR(30),
BILL_AMOUNT VARCHAR(30),
SHOP_ID VARCHAR(30)
)
BEGIN

INSERT INTO BILLS VALUES (BILL_ID, BILL_TYPE, BILL_AMOUNT, SHOP_ID);

SELECT * FROM BILLS;

END$$
DELIMITER ;

-- Adding Internet bill to the BILL table
CALL add_bill('1237897','Internet', '200.05','2');

-- List od average product prices by brand categories
SELECT BRAND_CATEGORY AS 'Categories', ROUND(AVG(PRODUCT_PRICE),2) AS 'Average Product Price' FROM BRAND
JOIN PRODUCT ON BRAND.BRAND_ID = PRODUCT.BRAND_ID
GROUP BY BRAND_CATEGORY;

-- Function that categorizes by calculating the number of months worked by each employee
DROP FUNCTION IF EXISTS EMPLOYEE_EXP;

DELIMITER $$

CREATE FUNCTION EMPLOYEE_EXP(id INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
	DECLARE emplevel VARCHAR(20);
    DECLARE month_count INT;
    SET month_count = (SELECT TIMESTAMPDIFF(MONTH,  EMP_HIREDATE, CURDATE())  FROM EMPLOYEE WHERE EMP_ID = id GROUP BY EMP_ID);
    IF(month_count>7) THEN
		SET emplevel = 'EXPERIENCED';
	ELSEIF (month_count>3) THEN
		SET emplevel = 'INTERMEDIATE';
	ELSE
		SET emplevel = 'ROOKIE';
	END IF;
    
    RETURN emplevel;

END $$

DELIMITER ;

-- Let's see which employees matched which group
SELECT EMP_ID AS "Employee ID", EMP_FNAME AS 'First Name', EMP_LNAME AS 'Last Name', EMPLOYEE_EXP(EMP_ID) AS 'Employee Level',EMP_HIREDATE AS 'HIREDATE' FROM EMPLOYEE;

-- Average, maximum and minimum salaries given by our company
SELECT ROUND(AVG(Amount),2) AS 'Average Salary', MAX(Amount) AS 'Maximum Salary', MIN(Amount) AS 'Minimum Salary'
FROM (SELECT emp_id, salary.sal_id, sal_amount AS 'Amount' FROM employee
JOIN SALARY ON EMPLOYEE.SAL_ID = SALARY.SAL_ID) AS EMPSAL;

-- Creating triggers that makes upper case 'Customer_Fname' and 'Customer_Lname' when inserting new values in CUSTOMER TABLE
DROP TRIGGER IF EXISTS upper_name;

CREATE TRIGGER upper_name
BEFORE INSERT ON CUSTOMER
FOR EACH ROW
SET NEW.customer_fname = UPPER(NEW.customer_fname), NEW.customer_lname = UPPER(NEW.customer_lname);

-- Let's insert new values and check
INSERT INTO CUSTOMER VALUES('11001', 'kamil', 'bakır', 'No:25/8 İstanbul',	'(825) 351-0986',	'Home');

SELECT CUSTOMER_FNAME AS 'FIRST NAME', CUSTOMER_LNAME AS 'LAST NAME' FROM CUSTOMER;

-- Topt 5 products with the most money inflows
SELECT LINE_ID, LINE_PRICE, PRODUCT_NAME FROM LINE
JOIN PRODUCT ON LINE.PRODUCT_ID = PRODUCT.PRODUCT_ID
ORDER BY LINE_PRICE DESC
LIMIT 5;


