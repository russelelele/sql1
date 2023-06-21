UPDATE 
    fine, payment
SET 
    fine.date_payment = payment.date_payment,
    fine.sum_fine = if(Datediff(payment.date_payment,payment.date_violation)<=20,fine.sum_fine/ 2, fine.sum_fine)  
WHERE fine.number_plate=payment.number_plate and fine.violation=payment.violation and fine.name=payment.name and fine.date_payment is null ;
 
 Select * from fine 