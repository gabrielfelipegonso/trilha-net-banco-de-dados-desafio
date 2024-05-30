SELECT nome,ano FROM Filmes

--2 
SELECT nome,ano,duracao FROM Filmes
ORDER BY ano
--3
SELECT * FROM Filmes
WHERE nome='De volta para o futuro'
--4
SELECT * FROM Filmes
WHERE ano =1997
--5
SELECT * FROM Filmes
WHERE ano > 2000
--6
SELECT * FROM Filmes
WHERE duracao > 100 AND duracao<150
--7
SELECT ano, COUNT(*) quantidade FROM Filmes
GROUP BY ano
ORDER BY SUM(duracao) DESC;
--8
SELECT PrimeiroNome, UltimoNome, Genero FROM atores
WHERE Genero = 'M'
--9
SELECT PrimeiroNome, UltimoNome, Genero FROM atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--10
SELECT Filmes.nome AS nome_filme, Generos.Genero AS nome_genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.id;


--11
SELECT Filmes.nome AS nome_filme, Generos.Genero AS nome_genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.id
WHERE Generos.Genero= 'Mistério'
--12
SELECT Filmes.Nome AS Nome_filme, ATORES.PrimeiroNome AS PrimeiroNome_ator, ATORES.UltimoNome AS UltimoNome_ator, ElencoFilme.Papel AS Papel_ator
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdFilme = Atores.Id