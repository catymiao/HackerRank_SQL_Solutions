/*
Enter your MS SQL Server query here.
*/

SELECT cast(round(lat_n,4) as numeric(18,4)) FROM (
SELECT lat_n, RANK() OVER (order by LAT_N desc) as RANK FROM STATION 
)a
where rank = (SELECT CASE WHEN count(*)%2 != 0 THEN (count(*)+1)*0.5
                     ELSE count(*)*0.5 END FROM station)
