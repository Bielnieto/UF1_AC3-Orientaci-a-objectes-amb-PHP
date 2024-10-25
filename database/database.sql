CREATE DATABASE IF NOT EXISTS galeria_fotos;
USE galeria_fotos;

-- Taula de Fotos
CREATE TABLE fotos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titol VARCHAR(255) NOT NULL,
    descripcio TEXT,
    nom_fitxer VARCHAR(255) NOT NULL,
    data_pujada DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Taula de Comentaris
CREATE TABLE comentaris (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_foto INT NOT NULL,
    comentari TEXT NOT NULL,
    autor VARCHAR(100),
    data_comentari DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_foto) REFERENCES fotos(id) ON DELETE CASCADE
);
