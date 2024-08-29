SELECT name, population, area
FROM World 
WHERE area >= 3000000 OR population >= 25000000;

-- In this problem, we are looking for countries which are either large in area or population from the World table. 
-- Using the 'WHERE' clause, it filter the results on these criteria and 'OR' operator allows me to include countries that meet either or both of these conditions.
