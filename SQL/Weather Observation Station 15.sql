/*
Enter your MySQL query here.
*/

SELECT round(long_w,4)
FROM STATION 
WHERE lat_n = (select MAX(lat_n) from station where lat_n <137.2345)
