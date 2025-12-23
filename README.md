# 🚗 Vehicle Rental System (Database Design & SQL)

A simplified **Vehicle Rental System** database project focusing on **ERD design**, **relational modeling**, and **SQL queries** based on real-world business logic.

---

## 🔗 Project Links

- **GitHub Repo:** [https://github.com/tareqferdous/Database-Design-SQL-Assignment]
- **ERD Link:** [https://drawsql.app/teams/tareq-9/diagrams/vehicle-rental-system]
- **Viva Video Link:** [https://drive.google.com/file/d/1WSj5z8_HzcOP-SU71x4olExKAJotITsi/view?usp=sharing]

---

## 🎯 Objectives

- Design ERD with **1–1, 1–Many, and Many–1** relationships
- Understand and apply **Primary Keys** and **Foreign Keys**
- Write SQL queries using:
  - `JOIN`
  - `EXISTS / NOT EXISTS`
  - `WHERE`
  - `GROUP BY` and `HAVING`

---

## 🗄️ Database Design

### Tables

- **Users**

  - Stores user information (Admin / Customer)
  - Email must be unique

- **Vehicles**

  - Stores vehicle details and availability status
  - Registration number must be unique

- **Bookings**
  - Links users and vehicles
  - Stores rental dates, booking status, and total cost

---

## 🔗 Relationships

- **User → Bookings** : One-to-Many
- **Bookings → Vehicle** : Many-to-One
- Each booking connects **one user** and **one vehicle**

📌 ERD designed using **Draw SQL** with PK, FK, cardinality, and status fields.

---

## 🧪 SQL Queries Implemented

1. **INNER JOIN**  
   Retrieve booking information with customer name and vehicle name

2. **NOT EXISTS**  
   Find vehicles that have never been booked

3. **WHERE Clause**  
   Retrieve available vehicles of a specific type (e.g. car)

4. **GROUP BY & HAVING**  
   Find vehicles with more than 2 bookings

---

## 🎤 Viva / Theory Topics

- What is a foreign key and why it is important
- Difference between WHERE and HAVING
- What is a primary key and its characteristics
- Difference between INNER JOIN and LEFT JOIN

---

## 🛠️ Technologies Used

- SQL (PostgreSQL)
- Drawsql (ERD Design)

---

## ✅ Conclusion

This project demonstrates a clear understanding of relational database design, ERD modeling, and core SQL concepts required for backend and database-driven applications.

---

**Author:** Tareq Ferdous  
**Category:** Database Design & SQL Assignment
