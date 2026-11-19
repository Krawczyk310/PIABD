CREATE DATABASE moja_baza
CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;

USE moja_baza;

CREATE TABLE uczniowie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL
);

INSERT INTO uczniowie (imie, nazwisko) VALUES
('Anna', 'Kowalska'),
('Jan', 'Nowak'),
('Piotr', 'Wisniewski');
