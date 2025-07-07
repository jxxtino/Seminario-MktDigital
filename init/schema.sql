CREATE TABLE IF NOT EXISTS 'Costumers' (
    costumer_id INT AUTO_INCREMENT PRIMARY KEY,
    costumer_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS 'Transactions' (
    id INT AUTO_INCREMENT PRIMARY KEY,
    costumer_id TEXT NOT NULL,
    occurs_at DATETIME,
    product_id TEXT NOT NULL,
    quantity INT,
    price DECIMAL (10,2),
    payment_method VARCHAR(50),
    payment_status INTEGER,   
    FOREIGN KEY (costumer_id) REFERENCES Costumers(costumer_id)
);

CREATE TABLE IF NOT EXISTS 'MarketingEvents' (
    id INT AUTO_INCREMENT PRIMARY KEY,
    costumer_id TEXT NOT NULL,
    occurs_at DATETIME,
    chanel VARCHAR(50),
    campaign VARCHAR(100),
    cost_campaign DECIMAL(10, 2),
    n_visualizations INT,
    n_clicks INT,  
    n_new_costumers INT,
    FOREIGN KEY (costumer_id) REFERENCES Costumers(costumer_id)
);
