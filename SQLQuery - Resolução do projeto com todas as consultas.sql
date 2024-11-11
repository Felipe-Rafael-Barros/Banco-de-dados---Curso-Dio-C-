-- 1 Consulta:
SELECT
Nome,
Ano
FROM Filmes

-- 2 Consulta:

SELECT
Nome,
Ano,Duracao
FROM Filmes
ORDER By Ano


-- 3 Consulta

SELECT
Nome,
Ano,Duracao
FROM Filmes
WHERE Nome= 'De Volta para o Futuro'
ORDER By Ano

-- 4 Consulta


SELECT
Nome,
Ano,Duracao
FROM Filmes
WHERE Ano= 1997
ORDER By Ano

-- 5 Consulta


SELECT
Nome,
Ano,Duracao
FROM Filmes
WHERE Ano> 2000


-- 6 Consulta


SELECT
Nome,
Ano,Duracao
FROM Filmes
WHERE Duracao >100 AND Duracao<150
ORDER By Duracao

-- 7 Consulta


SELECT
Ano,
COUNT (*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 Consulta
SELECT
*
FROM Atores
WHERE Genero ='M'

-- 9 Consulta

SELECT
*
FROM Atores
WHERE Genero ='F'
ORDER BY PrimeiroNome 

-- 10 Consulta

SELECT
Filmes.Nome,
Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


-- 11 Consulta

SELECT
Filmes.Nome,
Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- 12 Consulta

SELECT
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
FROM Atores
INNER JOIN ElencoFilme ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
