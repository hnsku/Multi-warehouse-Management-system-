# Multi-Warehouse Management System | Salesforce WMS

A scalable Salesforce solution for managing inventory across multiple warehouse locations, automating stock transfers, and providing real-time inventory visibility.

Built to solve real-world supply chain challenges for enterprise businesses.

### 🎯 Business Problem Solved
Companies operating with multiple warehouses face issues like stock-outs in one location while overstocking in another, no real-time tracking, and manual transfer errors. This system centralizes warehouse operations.

### 🚀 Key Features

**1. Multi-Warehouse Inventory Model**
- Custom Objects: `Warehouse__c`, `Inventory__c`, `Stock_Transfer__c`, `Product__c`
- Real-time quantity tracking per warehouse location
- Lookup & Master-Detail relationships for data integrity

**2. Stock Transfer Automation**
- **Apex Triggers & Classes:** Auto-deducts stock from source warehouse & adds to destination on transfer approval.
- **Approval Process:** Manager approval required for inter-warehouse transfers > 500 units.
- **Batch Apex:** Nightly job to flag low-stock products and send email alerts.

**3. Lightning Web Components (LWC)**
- `warehouseDashboard`: CEO-level dashboard with total stock value, warehouse-wise stock chart, and low-stock alerts.
- `stockTransfer`: User-friendly component to initiate stock transfers with real-time available quantity check.
- `inventoryLocator`: Search any product and see in which warehouses it is available instantly.

**4. Advanced Automation**
- **Flows:** Auto-create Purchase Order when stock goes below reorder point.
- **Validation Rules:** Prevent negative inventory and self-transfers (Source != Destination).
- **Reports:** Warehouse Efficiency, Transfer History, Aging Stock Report.

### 🛠️ Tech Stack
- **Platform:** Salesforce Platform
- **Backend:** Apex (Triggers, Handlers, Batch Apex), SOQL, SOSL
- **Frontend:** Lightning Web Components (LWC), JavaScript, SLDS
- **Automation:** Lightning Flow, Approval Process
- **Security:** Profiles, Permission Sets, Sharing Rules (Warehouse-wise access)

### 🏗️ Data Model