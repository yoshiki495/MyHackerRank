select 
case
when a>=b+c or b>=a+c or c>=a+b then 'Not A Triangle'
when a=b and b=c and not (a>=b+c or b>=a+c or c>=a+b) then 'Equilateral'
when a=b or b=c or a=c and not (a=b and b=c) and not (a>=b+c or b>=a+c or c>=a+b) then 'Isosceles'
else 'Scalene'
end
from triangles;