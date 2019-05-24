SELECT R.Name,G.Label, SUM(S.Charge) AS 'Valor Cobrado', SUM(M.Duration) AS 'Duracao'
FROM REGION R, GENRE G, STREAM S, MOVIE M, MOVIE_GENRE MG, CUSTOMER C, COUNTRY CY
WHERE M.MovieId = MG.MovieId AND MG.GenreId = G.GenreId AND M.MovieId = S.MovieId AND S.CustomerId = C.CustomerId AND C.Country = CY.Name AND CY.RegionId = R.RegionId GROUP BY R.Name, G.Label ORDER BY R.Name, G.Label;
