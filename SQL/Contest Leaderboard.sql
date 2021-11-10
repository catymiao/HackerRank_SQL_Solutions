select * from (
select a.hacker_id, h.name, sum(maxscore) sumscore from (
select s.hacker_id, challenge_id, max(score) maxscore from submissions s
group by hacker_id, challenge_id )a
INNER JOIN hackers h
on a.hacker_id = h.hacker_id 
group by hacker_id, name)b
where sumscore <> 0 
order by sumscore desc, hacker_id asc
