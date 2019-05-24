UPDATE STREAM S SET S.Charge = S.Charge + 1.5 WHERE S.MovieId IN  (SELECT M.MovieId FROM MOVIE M, CUSTOMER C, COUNTRY CY, REGION R WHERE M.MovieId = S.MovieId AND S.CustomerId = C.CustomerId AND C.Country = CY.Name AND CY.RegionId = R.RegionId AND M.Duration >= 180 AND R.Name = 'Europe');

