SELECT M.Title, COUNT(S.StreamId) AS NStreams FROM MOVIE M, STREAM S WHERE M.MovieId = S.MovieId GROUP BY M.Title ORDER BY NStreams DESC, M.Title ASC;

