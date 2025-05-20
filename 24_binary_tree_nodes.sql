SELECT N,
    CASE 
    WHEN P is null THEN 'Root'
    WHEN N NOT IN(SELECT DISTINCT P FROM BST 
          WHERE P IS NOT NULL)THEN 'Leaf'
    ELSE 'Inner'
    END AS node_type
FROM BST
ORDER BY N;