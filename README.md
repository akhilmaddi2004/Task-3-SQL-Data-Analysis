# ✅ **Task 3: SQL for Data Analysis (Using SQLite3 in VS Code)**

## 📌 **Overview**

This project completes **Task 3 of the Data Analyst Internship**, focusing on performing real SQL-based data analysis using **SQLite3** inside **VS Code**.
A complete mini e-commerce database was created from scratch, populated with real sample data, queried with analytical SQL, and optimized using views and indexes.

This task demonstrates practical database skills needed in real analytics jobs.

---

# 🗂️ **Project Structure**

```
Task-3-SQL-Data-Analysis/
│
├── database/
│   ├── ecommerce.db
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   ├── order_items.csv
│
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── task3.sql
│
├── screenshots/
│   ├── create_query.png
│   ├── queries.png
│   ├── view.png


---

# 🏗️ **What I Did in This Task**

### ✔ **1. Set up SQLite environment**

* Installed SQLite extension in VS Code
* Created a new database file: `ecommerce.db`
* Connected VS Code to the database

### ✔ **2. Designed database schema**

Created 4 core tables using `create_tables.sql`:

* 👤 `customers`
* 📦 `products`
* 🧾 `orders`
* 🛒 `order_items`

Ensured:

* Primary keys
* Foreign key references
* Clean relational structure

### ✔ **3. Inserted dataset**

Loaded sample ecommerce data using `insert_data.sql`.
Inserted:

* 5 customers
* 5 products
* 5 orders
* 5 order items

This created a complete mini database suitable for SQL analysis.

### ✔ **4. Performed analytical SQL queries**

Inside `task3.sql`, wrote all SQL required for the internship task:

* `SELECT`, `WHERE`, `ORDER BY`
* `GROUP BY` with aggregates like `SUM()`
* `INNER JOIN`, `LEFT JOIN`
* Subqueries for spending analysis
* Views for reusable analytics
* Index creation for query optimization

### ✔ **5. Captured screenshots of all outputs**

All query outputs saved:

* create_query.png
* queries.png
* view.png

### ✔ **6. Organized everything in a clean GitHub repo**

Structured all files professionally and wrote this detailed README.

---

# 📊 **Key SQL Operations Performed**

### 🔍 1. **Filtering + Sorting**

```
SELECT product_name, category
FROM products
WHERE category = 'Electronics'
ORDER BY product_name ASC;
```

### 📈 2. **Revenue by Category**

```
SELECT category, SUM(price * quantity) AS total_revenue
FROM products
JOIN order_items USING(product_id)
GROUP BY category;
```

### 🔗 3. **INNER JOIN**

```
SELECT o.order_id, c.customer_name, o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;
```

### 🡸 4. **LEFT JOIN**

```
SELECT c.customer_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
```

### 🧠 5. **Subquery**

```
SELECT customer_name, total_spent
FROM (
    SELECT c.customer_name, SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
) AS t;
```

### 🪟 6. **View Creation**

```
CREATE VIEW revenue_summary AS
SELECT p.category,
       SUM(oi.quantity * oi.price) AS revenue
FROM products p
JOIN order_items oi USING(product_id)
GROUP BY p.category;
```

### 🚀 7. **Index Optimization**

```
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
```

---

# 📥 **How to Run the Project (Step-by-Step)**

### **1. Open VS Code**

### **2. Install extensions**

* SQLite Viewer
* SQLTools + SQLTools SQLite Driver

### **3. Run table creation**

Open `create_tables.sql` → Select all → Right-click → **Run Query**

### **4. Run insert queries**

Open `insert_data.sql` → Run Query

### **5. Run analytical queries**

Open `task3.sql` → Run Query block-by-block
Take screenshots.

### **6. Verify database**

Use:

```
SELECT * FROM customers;
```

to ensure data loaded correctly.

---

# 📸 **Screenshots Included**

All executed queries have screenshots stored here:

```
/screenshots
```

Examples:

* `query1.png` → SELECT + WHERE
* `query2.png` → GROUP BY
* `join-inner.png` → INNER JOIN
* `join-left.png` → LEFT JOIN
* `subquery.png` → Customer spending analysis
* `view.png` → Created view
* `index.png` → Created index

---

# 🎯 **Learning Outcomes**

By completing this project, I learned:

### ✔ How to design a relational database

### ✔ How to load real datasets into SQLite

### ✔ How to write analytical SQL queries

### ✔ How joins work in real business use cases

### ✔ How to build subqueries for deeper analysis

### ✔ How to create views for reusable reporting

### ✔ How indexes improve query performance

### ✔ How to structure a clean GitHub project
