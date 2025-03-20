CREATE TABLE Alunos (

id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100) NOT NULL, email VARCHAR(100) UNIQUE NOT NULL, data_nascimento DATE NOT NULL, curso VARCHAR(100) NOT NULL, nota FLOAT );


INSERT INTO Alunos (nome, email, data_nascimento, curso, nota) VALUES ('João Silva', 'joao@email.com', '2000-05-15', 'Engenharia', 8.5), ('Maria Souza', 'maria@email.com', '1998-09-22', 'Medicina', 9.2), ('Carlos Pereira', 'carlos@email.com', '2001-03-10', 'Direito', 7.8), ('Ana Oliveira', 'ana@email.com', '1999-07-19', 'Engenharia', 6.9);


SELECT * FROM Alunos;

SELECT * FROM Alunos WHERE id = 1;


UPDATE Alunos

SET curso = 'Ciência da Computação', nota = 9.0 WHERE id = 1;


DELETE FROM Alunos WHERE id = 3;


DELETE FROM Alunos;

DROP TABLE Alunos;



DROP DATABASE Escola;



SELECT COUNT(*) AS total_alunos FROM Alunos;




SELECT SUM(nota) AS soma_notas FROM Alunos;



SELECT AVG(nota) AS media_notas FROM Alunos;


SELECT MAX(nota) AS nota_maxima FROM Alunos;


SELECT MIN (nota) AS nota_minima FROM Alunos;
