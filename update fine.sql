update fine 
set sum_fine=sum_fine*2 where name = any (select name 
from (select name, number_plate, violation 
from fine group by name, number_plate, violation 
having count(*)=2) as x) and number_plate= any 
(select number_plate from (select name, number_plate, violation
        from fine group by name, number_plate, violation 
          having count(*)=2) as xx) 
and date_payment is null; 
select * from fine