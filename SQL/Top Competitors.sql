SELECT B.hacker_id,H.name FROM (
SELECT hacker_id, count(distinct challenge_id) total FROM(
SELECT  S.hacker_id, S.challenge_id
FROM Submissions S
LEFT JOIN Challenges C
ON S.challenge_id = C.challenge_id 
LEFT JOIN Difficulty D 
ON C.difficulty_level = D.difficulty_level
where S.score =D.score)A
GROUP BY hacker_id 
Having count(distinct challenge_id)>1)B 
LEFT JOIN Hackers H
on B.hacker_id = H.hacker_id 
order by total desc, hacker_id asc
