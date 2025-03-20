create database universidade;

USE Universidade;

CREATE TABLE Estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    curso VARCHAR(100),
    idade INT,
    nota_final DECIMAL(5, 2)
);

INSERT INTO Estudantes (nome, curso, idade, nota_final) VALUES
('João Silva', 'Engenharia', 22, 8.5),
('Maria Oliveira', 'Medicina', 24, 9.2),
('Pedro Costa', 'Engenharia', 21, 7.8),
('Ana Souza', 'Direito', 23, 6.5),
('Carlos Pereira', 'Engenharia', 20, 8.0);

SELECT * FROM Estudantes;

SELECT * FROM Estudantes WHERE curso = 'Engenharia';

UPDATE Estudantes SET nota_final = 9.0 WHERE id = 1;


DELETE FROM Estudantes WHERE id = 2;


SELECT COUNT(*) AS total_estudantes FROM Estudantes;


SELECT AVG(nota_final) AS media_notas FROM Estudantes;

DROP TABLE Estudantes;
DROP DATABASE Universidade;


SELECT DISTINCT curso FROM Estudantes;

SELECT * FROM Estudantes WHERE idade > 21;

SELECT * FROM Estudantes ORDER BY nome ASC;

SELECT * FROM Estudantes WHERE nota_final = (SELECT MAX(nota_final) FROM Estudantes);

SELECT * FROM Estudantes WHERE nota_final = (SELECT MIN(nota_final) FROM Estudantes);

SELECT nome, curso FROM Estudantes ORDER BY curso ASC;

SELECT curso, COUNT(*) AS total_estudantes FROM Estudantes GROUP BY curso;

UPDATE Estudantes SET curso = 'Arquitetura' WHERE id = 3;

DELETE FROM Estudantes WHERE curso = 'Engenharia';

SELECT * FROM Estudantes WHERE nota_final > (SELECT AVG(nota_final) FROM Estudantes);

