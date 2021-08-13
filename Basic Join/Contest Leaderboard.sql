select h.hacker_id,h.name,sum(m.score) as total_score
from (select s.hacker_id,s.challenge_id,MAX(s.score) as score
from Submissions s
GROUP BY s.hacker_id,s.challenge_id) as m
JOIN  Hackers as  h
ON h.hacker_id=m.hacker_id
GROUP BY h.hacker_id,h.name
HAVING total_score>0
ORDER BY total_score desc,h.hacker_id;
