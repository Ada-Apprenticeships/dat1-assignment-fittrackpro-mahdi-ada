.open fittrackpro.db
.mode column

-- 7.1 
SELECT staff_id, first_name,last_name,position AS role
FROM staff 


-- 7.2 
SELECT staff.staff_id as trainer_id, staff.first_name ||' '|| staff.last_name AS trainer_name, COUNT(*) AS session_count 
FROM staff
JOIN personal_training_session
ON staff.staff_id=personal_training_session.staff_id
WHERE session_date BETWEEN '2025-01-20' AND DATE('2025-01-20','+30 days') AND session_count>=1
GROUP BY trainer_id

--finish this off