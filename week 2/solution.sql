/* problem 1 */

SELECT 
    p.product_name, 
    s.year, 
    s.price
FROM Sales s
INNER JOIN Product p 
    ON s.product_id = p.product_id;

 /* problem 2*/

SELECT EmployeeUNI.unique_id AS unique_id, Employees.name AS name
FROM Employees 
LEFT JOIN EmployeeUNI 
ON Employees.id = EmployeeUNI.id;

/* problem 3 */

SELECT 
    v.customer_id, 
    COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t 
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;


/* problem 4 */

SELECT W1.id
FROM Weather W1
INNER JOIN Weather W2
ON DATEDIFF(W1.recordDate, W2.recordDate) = 1
WHERE W1.temperature > W2.temperature;

/* problem 5 */

SELECT Employees.emp_id,Employees.emp_name,COALESCE(Departments.dept_name, 'Unassigned') AS dept_name
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id;

/* problem 6 */

SELECT Products.product_id,Products.product_name,Suppliers.supplier_name
FROM Products
LEFT JOIN Suppliers
ON Products.supplier_id = Suppliers.supplier_id
WHERE Products.product_name LIKE '%Phone%';

/* problem 7 */

SELECT 
    CONCAT(Customers.first_name, ' ', Customers.last_name) AS "FirstName LastName",
    Orders.order_id,
    Orders.order_date,  
    Orders.amount
FROM Customers
FULL JOIN Orders
ON Customers.customer_id = Orders.customer_id;