/* Euclidean Distance between two points P1(a,b), P2(c,d)

/*
MySQL Syntax
*/
SELECT Round(SQRT(power(max(lat_n)-MIN(lat_N),2) + power(MAX(long_w)-MIN(Long_w),2)),4) FROM STATION 



/*
MS SQL Server Syntax
*/
SELECT cast(round(SQRT(square(max(lat_n)-MIN(lat_N)) + square(MAX(long_w)-MIN(Long_w))),4) as numeric(18,4)) FROM STATION 
