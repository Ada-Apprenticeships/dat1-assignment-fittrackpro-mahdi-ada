.open fittrackpro.db
.mode column

-- 6.1 
INSERT INTO attendance(attendance_id,member_id,location_id,check_in_time)
VALUES (4,7,1,'2025-02-14 16:30:00');
--check if i was meant to get NULL for check_out_time
-- 6.2 
SELECT DATE(check_in_time) AS visit_date,check_in_time,check_out_time
FROM attendance
WHERE attendance.member_id=5
ORDER BY visit_date;
-- 6.3 


-- 6.4 

