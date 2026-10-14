CREATE DATABASE IF NOT EXISTS food_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE food_db;

-- 1. ตารางเก็บข้อมูลอาหารหลัก (Food)
CREATE TABLE IF NOT EXISTS foods (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_th VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. ตารางเก็บวัตถุดิบ/สูตรอาหาร (Recipe) ที่ผูกกับ Food
CREATE TABLE IF NOT EXISTS recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    food_id INT NOT NULL,
    recipe_name VARCHAR(255) NOT NULL,
    quantity FLOAT NOT NULL,
    unit_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (food_id) REFERENCES foods(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
