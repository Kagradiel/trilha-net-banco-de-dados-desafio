--1 

SELECT Nome, Ano FROM Filmes

--2

SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano

--3

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano >= 2000

--6

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7 O desafio pede para ordenar pela duração
-- Mas na verdade devia ser pedido a quantidade para dar o resultado mostrado

SELECT 
	Ano, 
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 o desafio pede pra retornar primeiro e ultimo nome 
-- mas na imagem exemplo mostra genero e ID
-- fiz oq foi pedido e nao de acordo com o exemplo

SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM Atores
WHERE Genero = 'M'

--9 Contem um erro similar ao de cima

SELECT 
	PrimeiroNome, 
	UltimoNome 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes
ON FilmesGenero.IdFilme = Filmes.Id

--11

SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes
ON FilmesGenero.IdFilme = Filmes.Id
WHERE Genero = 'Mistério'

--12

SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Atores
ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes
ON ElencoFilme.IdFilme = Filmes.Id