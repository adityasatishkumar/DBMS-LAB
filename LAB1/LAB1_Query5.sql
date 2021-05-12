use INSURANCE;
SELECT COUNT(report_num) FROM car, participated 
WHERE car.reg_num = participated.reg_num
AND model='Lancer';

