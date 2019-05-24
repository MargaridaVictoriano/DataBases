SELECT M.Title, SUM(S.Charge) as profit
FROM MOVIE M, MOVIE_GENRE MG, GENRE G, STREAM S
WHERE M.MovieId = MG.MovieId
AND G.GenreId = MG.GenreId
AND G.Label = 'Action'
AND S.MovieId = M.MovieId
GROUP BY M.Title
ORDER BY profit DESC, M.Title ASC
LIMIT 20;
