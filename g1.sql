DELETE FROM MOVIE_ACTOR WHERE ActorId IN ( SELECT ActorId FROM ACTOR WHERE Name LIKE "Tom%");

