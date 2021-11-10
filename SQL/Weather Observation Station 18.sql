/*
Manhattan Distance between two points P1(a,b), P2(c,d)
*/
SELECT round(abs(MAX(lat_N) - MIN(lat_N))+abs(MAX(long_w)-MIN(Long_w)),4) FROM STATION 
