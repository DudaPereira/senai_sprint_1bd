USE Filmes;

SELECT * FROM Generos;

SELECT * FROM Filmes;

--	Inner JOIN 
--  AS (ALIAS)
SELECT Filmes.idFilmes, Filmes.Titulo, Generos.Nome AS Genero FROM Filmes
INNER JOIN Generos -- Tabela 2
ON Filmes.idGenero = Generos.idGenero;

--	LEFT JOIN 
SELECT Filmes.idFilmes, Filmes.Titulo, Generos.Nome AS Genero FROM Filmes
LEFT JOIN Generos -- Tabela 2
ON Filmes.idGenero = Generos.idGenero;

--	RIGHT JOIN 
SELECT Filmes.idFilmes, Filmes.Titulo, Generos.Nome AS Genero FROM Filmes
RIGHT JOIN Generos -- Tabela 2
ON Filmes.idGenero = Generos.idGenero;