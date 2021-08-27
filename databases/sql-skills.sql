INSERT INTO artist (name, artist_id)
VALUES ('Zach', 191919);

INSERT INTO artist (name, artist_id)
VALUES ('Harry', 292929);

INSERT INTO artist (name, artist_id)
VALUES ('Potter', 393939);

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT (first_name, last_name) FROM employee WHERE city = 'Calgary';

SELECT * FROM employee WHERE reports_to = 2;

SELECT COUNT (city) FROM employee WHERE city = 'Lethbridge';

SELECT COUNT (billing_country) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total >= 5;

SELECT COUNT (total) FROM invoice WHERE total < 5;

SELECT SUM(total) from invoice;

SELECT *
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT a.title, r.name
FROM album a
JOIN artist r ON r.artist_id = r.artist_id;

-- Extra credit 

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT COUNT(billing_state) FROM invoice WHERE billing_state IN ('CA','TX', 'AZ');

SELECT AVG(total) FROM invoice;