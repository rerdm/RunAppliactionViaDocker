USE mydatabase;

CREATE TABLE IF NOT EXISTS input_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    input_text VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
