select f.X, f.Y 
from Functions as f
join Functions as f2 
on f.X = f2.Y and f.Y = f2.X

group by f.X, f.Y
having count(f.X) > 1 or f.X < f.Y
order by f.X;
