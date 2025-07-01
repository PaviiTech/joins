# 🔗 SQL Joins Practice — Customers & Orders

## 🎯 Objective
To understand and apply different types of **SQL JOINs** (INNER, LEFT, RIGHT, FULL) by working with two related tables: `Customers` and `Orders`.

---

## 🛠 Tools Used
- 💻 MySQL Workbench / DB Browser for SQLite
- 💾 SQL Language (MySQL or SQLite compatible)

---

## 🧱 Tables Used

### 1. `Customers`
| Column     | Type         |
|------------|--------------|
| CustomerID | INT (PK)     |
| Name       | VARCHAR(100) |
| City       | VARCHAR(50)  |

### 2. `Orders`
| Column     | Type         |
|------------|--------------|
| OrderID    | INT (PK)     |
| CustomerID | INT (FK)     |
| Product    | VARCHAR(100) |
| Amount     | DECIMAL      |

---

## 🔗 Relationships

- Each **Customer** can place **many Orders** → one-to-many relationship
- `CustomerID` is the foreign key in `Orders` referencing `Customers`

---

## 📂 Project Files

