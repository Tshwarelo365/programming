CREATE DATABASE Software_Data;

USE Software_Data;
CREATE TABLE Users (
	User_Id INT PRIMARY KEY NOT NULL,
    User_Pass VARCHAR(20) NOT NULL

);
-- SELECT * FROM Node_1;
CREATE TABLE Node_1 (
	id INT AUTO_INCREMENT PRIMARY KEY,
    User_Id INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    light_intensity DECIMAL(3,2) NOT NULL,
    CONSTRAINT fk_User_Id_Node1 FOREIGN KEY (User_Id) REFERENCES Users(User_Id)
);



CREATE TABLE Node_2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    User_Id INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    light_intensity DECIMAL(3,2) NOT NULL,
    CONSTRAINT fk_User_Id_Node2 FOREIGN KEY (User_Id) REFERENCES Users(User_Id)
);
-- INSERT INTO Users (User_Id, USer_Pass) VALUES (221967575, 12345);

CREATE TABLE Node_3 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    User_Id INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    light_intensity DECIMAL(3,2) NOT NULL,
    CONSTRAINT fk_User_Id_Node3 FOREIGN KEY (User_Id) REFERENCES Users(User_Id)
    
);

CREATE TABLE Node_4 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    User_Id INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    light_intensity DECIMAL(3,2) NOT NULL,
    CONSTRAINT fk_User_Id_Node4 FOREIGN KEY (User_Id) REFERENCES Users(User_Id)
);

-- DROP DATABASE Software_Data;