DELETE FROM STREAM
WHERE YEAR(StreamDate)=2018 AND MONTH(StreamDate) = 2 AND Charge < 6;
