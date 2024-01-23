-- 1
SELECT  
	f.Nome , 
	f.Ano 
from Filmes f 

-- 2
SELECT  
	f.Nome , 
	f.Ano,
	f.Duracao 
from Filmes f
order by Ano 

-- 3
SELECT  
	f.Nome , 
	f.Ano ,
	f.Duracao 
from Filmes f
WHERE f.Id = 28

-- 4
SELECT  
	f.Nome , 
	f.Ano ,
	f.Duracao 
from Filmes f
WHERE f.Ano = 1997

-- 5
SELECT  
	f.Nome , 
	f.Ano ,
	f.Duracao 
from Filmes f
WHERE f.Ano > 2000

-- 6
SELECT  
	f.Nome , 
	f.Ano ,
	f.Duracao 
from Filmes f
WHERE f.Duracao > 100 
and f.Duracao  < 150
order by f.Duracao 

-- 7
SELECT  
	f.Ano ,
	COUNT(f.duracao) Quantidade 
	
from Filmes f
group by f.Ano
ORDER by Quantidade DESC 

-- 8
SELECT
	a.Id ,
	a.PrimeiroNome,
	a.UltimoNome ,
	a.Genero 
from Atores a 
WHERE a.Genero = 'M'

-- 9
SELECT
	a.Id ,
	a.PrimeiroNome,
	a.UltimoNome ,
	a.Genero 
from Atores a 
WHERE a.Genero = 'F'
ORDER BY a.PrimeiroNome 

-- 10
SELECT 
	f.Nome , g.Genero  
FROM Filmes f 
inner join FilmesGenero fg on f.Id = fg.IdFilme 
INNER JOIN Generos g on g.Id = fg.IdGenero 

-- 11
SELECT 
	f.Nome , g.Genero  
FROM Filmes f 
inner join FilmesGenero fg on f.Id = fg.IdFilme 
INNER JOIN Generos g on g.Id = fg.IdGenero 
WHERE  g.Genero = 'Mistério'

-- 12
SELECT 
	f.Nome ,
	a.PrimeiroNome ,
	a.UltimoNome ,
	ef.Papel 
FROM Filmes f 
inner join FilmesGenero fg on f.Id = fg.IdFilme 
INNER JOIN Generos g on g.Id = fg.IdGenero 
INNER JOIN ElencoFilme ef on ef.IdFilme = f.Id 
INNER JOIN Atores a on a.Id = ef.IdAtor 