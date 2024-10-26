# wholesale-system-managament-database

Here's a summary and key points for the SQL code, suitable for a GitHub README or documentation:

---

### eCommerce Database Structure and Operations

This SQL script creates and populates tables for an eCommerce database, managing key entities like **buyers**, **stock**, **customers**, **payments**, and **profit calculations**. Below is an outline of the operations and data management processes:

#### 1. Database and Table Setup
- **Buyer**: Stores buyer details (e.g., `buyer_id`, `buyer_name`, `contact_info`, `address`).
- **Stock**: Manages inventory, tracking items (`item_name`, `quantity`, etc.) and linking them to `supplier_id` (foreign key to Buyer).
- **Customer**: Contains customer information (`customer_id`, `customer_name`, etc.).
- **Payment**: Tracks payment details for each customer (`payment_id`, `customer_id`, `amount_paid`, `payment_status`, and `payment_date`), linked to the `Customer` table.
- **ProfitCalculation**: Calculates monthly profits, storing fields like `month`, `total_sales`, `total_cost`, and `profit`.

#### 2. Inserting Sample Data
Sample entries for each table are provided to simulate real-world eCommerce transactions:
- `Buyer` table with entries for suppliers.
- `Stock` table with inventory records, tied to supplier IDs.
- `Customer` table with customer details.
- `Payment` table with payment status and amounts.
- `ProfitCalculation` table with a sample profit calculation for October.

#### 3. Data Retrieval
- **Retrieve Stock and Supplier Details**: Joins `Stock` and `Buyer` tables to list item names, quantities, and respective suppliers.
- **Retrieve Pending Payments**: Joins `Payment` and `Customer` tables, displaying unpaid transactions only.

#### 4. Profit Calculation and Updates
- **Monthly Profit Display**: Selects the `month` and `profit` for a specific period.
- **Updating Profit Calculations**: Adjusts `total_sales` and `total_cost` values after new transactions, recalculating profit in `ProfitCalculation`.

#### 5. Safe Updates Mode
- Safe updates are toggled off temporarily to allow modification of records, then re-enabled for security.

--- 

This structure organizes inventory, suppliers, customers, payments, and monthly profit tracking in a straightforward relational database. The script includes insertions and updates, along with SQL commands for retrieving specific data and ensuring safe data manipulation.
![Screenshot 2024-10-24 202400](https://github.com/user-attachments/assets/49b4a481-cac0-46bd-a98e-130c6048bb44)
![Screenshot 2024-10-24 202424](https://github.com/user-attachments/assets/d1719c7e-3970-482a-af41-278e8a214d9e)
![Screenshot 2024-10-24 202517](https://github.com/user-attachments/assets/ea427a7c-be93-46c6-8f8d-84d50f4f4ecc)
