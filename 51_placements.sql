SELECT s.name
FROM students s
JOIN Friends f ON s.ID=f.ID
JOIN Packages p1 ON s.ID=p1.ID
JOIN Packages p2 ON f.friend_ID=P2.ID
WHERE p2.salary > p1.salary
ORDER BY p2.salary;