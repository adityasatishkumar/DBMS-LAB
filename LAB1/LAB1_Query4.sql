use INSURANCE;
SELECT COUNT(DISTINCT driver_id) FROM accident, participated
WHERE accident.report_num = participated.report_num
AND accident_date LIKE '2008%'; 