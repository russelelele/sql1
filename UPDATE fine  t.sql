UPDATE fine AS f, traffic_violation AS tv SET f.sum_fine = IF (f.sum_fine IS Null, tv.sum_fine, f.sum_fine) WHERE f.violation = tv.violation; 
Select * from fine