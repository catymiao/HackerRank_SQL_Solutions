SELECT doctor , professor, singer, actor 
FROM
(select ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) RowNumber, * FROM OCCUPATIONS) tb1
PIVOT
(
min(name) for occupation in (doctor, professor, singer, actor))as tab2
