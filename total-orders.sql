CREATE TABLE Customers ( customer_id INT, customer_name VARCHAR(50) ); 
INSERT INTO Customers (customer_id, customer_name) VALUES (1, 'John'), (2, 'Alice'), (3, 'Mike'), (4, 'Emily'), (5, 'David');
SELECT * FROM Customers;
CREATE TABLE Orders ( order_id INT, customer_id INT, order_date DATE );
INSERT INTO Orders (order_id, customer_id, order_date) VALUES (1, 1, '2022-01-01'), (2, 2, '2022-02-05'), (3, 1, '2022-03-15'), (4, 3, '2022-04-20'), (5, 4, '2022-05-10');
SELECT * FROM Orders;

-- solution
SELECT customers.customer_id, customers.customer_name, COUNT(orders.order_id) AS total_orders
FROM Customers customers
LEFT JOIN Orders orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_name;
