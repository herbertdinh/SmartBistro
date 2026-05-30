CREATE DATABASE IF NOT EXISTS smartbistro;
USE smartbistro;

CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(150),
  phone VARCHAR(30)
);

CREATE TABLE menu_items (
  item_id INT AUTO_INCREMENT PRIMARY KEY,
  item_name VARCHAR(100) NOT NULL,
  category VARCHAR(50),
  price DECIMAL(8,2) NOT NULL,
  is_available BOOLEAN DEFAULT TRUE
);

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  table_number INT,
  customer_id INT,
  order_status VARCHAR(30) DEFAULT 'pending',
  total_amount DECIMAL(10,2),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  item_id INT,
  quantity INT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);

CREATE TABLE reservations (
  reservation_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  reservation_date DATE,
  reservation_time TIME,
  guests INT,
  status VARCHAR(30) DEFAULT 'confirmed',
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE inventory (
  inventory_id INT AUTO_INCREMENT PRIMARY KEY,
  item_name VARCHAR(100) NOT NULL,
  quantity DECIMAL(10,2),
  threshold DECIMAL(10,2),
  unit VARCHAR(20)
);
