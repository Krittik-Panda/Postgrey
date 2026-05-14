/*ROLLUP is used with GROUP BY to create:

subtotals
grand totals

Automatically.

Instead of writing multiple queries.

*/

SELECT
    c.cust_name,
    SUM(oi.quantity) AS total_quantity
FROM ord_items oi
JOIN orders o
ON oi.ord_id = o.ord_id
JOIN customers c
ON o.cust_id = c.cust_id
JOIN products p
ON oi.p_id = p.p_id
GROUP BY ROLLUP(c.cust_name)
ORDER BY SUM(oi.quantity);

/*Your query groups the data customer-wise and calculates the total quantity of products ordered by each customer.


GROUP BY ROLLUP(c.cust_name)


means PostgreSQL first creates normal groups for every customer:

* Sham → 2
* Raju → 3
* Paul → 6

Then `ROLLUP` automatically adds one extra row at the end:

| cust_name | total_quantity |
| --------- | -------------- |
| NULL      | 11             |

This `NULL` row represents the **grand total** of all customers combined.

So the result means:

* Sham ordered total quantity 2
* Raju ordered total quantity 3
* Paul ordered total quantity 6
* Overall total quantity of all orders = 11

Without `ROLLUP`, you would only get customer-wise totals.
With `ROLLUP`, PostgreSQL also gives the final overall total automatically.
*/




--------------------------------------------------------------------------


SELECT
    c.cust_name,
    p.p_name,
    SUM(oi.quantity) AS total_quantity
FROM ord_items oi
JOIN orders o
ON oi.ord_id = o.ord_id
JOIN customers c
ON o.cust_id = c.cust_id
JOIN products p
ON oi.p_id = p.p_id
GROUP BY ROLLUP(c.cust_name, p.p_name)
ORDER BY total_quantity;



/*This query groups the data in two levels:

* customer-wise
* product-wise

GROUP BY ROLLUP(c.cust_name, p.p_name)


First, PostgreSQL shows the detailed data for each customer and product combination:

| cust_name | p_name | total_quantity |
| --------- | ------ | -------------- |
| Raju      | Laptop | 1              |
| Raju      | Cable  | 2              |

This means:

* Raju ordered 1 Laptop
* Raju ordered 2 Cables

Then `ROLLUP` automatically adds subtotal rows for each customer:

| cust_name | p_name | total_quantity |
| --------- | ------ | -------------- |
| Raju      | NULL   | 3              |

Here `NULL` in `p_name` means:

> total quantity of all products ordered by Raju

Similarly for other customers.

Finally, PostgreSQL adds one last row:

| cust_name | p_name | total_quantity |
| --------- | ------ | -------------- |
| NULL      | NULL   | 11             |

This represents the grand total quantity of all products ordered by all customers combined.

So this query gives:

1. product-wise totals per customer
2. subtotal per customer
3. overall grand total

all in one query automatically.
*/