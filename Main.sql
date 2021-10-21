/* Sequnce Function */
CREATE SEQUENCE MySequence
START WITH 1
INCREMENT BY 1

DECLARE @CUSTOMER TABLE
(
ID int NOT NULL PRIMARY KEY,
FullName nvarchar(100) NOT NULL
);
INSERT @CUSTOMER (ID, FullName)
VALUES (NEXT VALUE FOR MySequence, 'KUMAR'),
(NEXT VALUE FOR MySequence, 'ONKAR'),
(NEXT VALUE FOR MySequence, 'ANIKET');


SELECT * FROM @CUSTOMER
 

 /* Trigger Function */
CREATE TRIGGER TriVendors ON VENDOR
AFTER INSERT AS
BEGIN
UPDATE VENDOR SET VENDOR_CITY='TAMIL NADU' where VENDOR_CITY ='BANGALORE'
END

insert into vendor values(1,'sff','fa','fafa','BANGALORE',1346597)
select * from vendor



/* Left Outer Join  */

select  product_name,stock from Product_Details left outer join store on product_details.store_id=store.store_id
where store.store_id<500


/* Procedure  */
Create procedure p1
as
SELECT ENAME,SALARY FROM EMPLOYEE where SALARY >15000
go
--execute
exec P1


/* Cross Join */

 SELECT Orders.cust_id
      customname ,
       address FROM customer
     CROSS JOIN ORDERS



/* Views */
CREATE VIEW EMPDATAV1
AS
SELECT ENAME,SALARY FROM [dbo].[EMPLOYEE]

SELECT * FROM EMPDATAV1



/*  Group by , order by & having*/
select sum(salary) SUM_SALARY,dept from employee 
group by dept
having dept like 'IT'
order by dept asc


/* RANK */
SELECT
    product_id,
    product_name,
    discount,
    RANK () OVER (
        ORDER BY discount DESC
    ) price_rank
FROM
    product_details;
 



/* CTE */
with ROWCTE as
(
SELECT DEPT,salary
FROM EMPLOYEE where salary >20000)

SELECT * FROM ROWCTE