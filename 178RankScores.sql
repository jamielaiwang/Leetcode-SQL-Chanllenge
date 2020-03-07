#Take above table as example, there are six scores, 3.50, 3.65, 4.00, 3.85, 4.00 and 3.65. 
#The distinct scores are 3.50, 3.65, 3.85 and 4.00. 
#For a score of 4.00, only 4.00 ≥ 4.00, so the rank is 1. 
#Similarly, for a score of 3.65, 4.00 ≥ 3.65, 3.85 ≥ 3.65, 3.65 ≥ 3.65, therefore, the rank is 3.

select s.Score, count(t.Score) as Rank from
(select distinct Score from Scores) as t, Scores as s  #we need to get all distinct scores, t
where s.Score<= t.Score
group by s.Id             #
order by s.Score DESC;