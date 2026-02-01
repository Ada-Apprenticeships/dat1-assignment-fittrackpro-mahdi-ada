.open fittrackpro.db
.mode column

-- 4.1 
SELECT class_schedule.class_id,name AS class_name, first_name||' '||last_name AS instructor_name
FROM class_schedule
JOIN classes
ON class_schedule.class_id=classes.class_id 
JOIN staff
ON class_schedule.staff_id=staff.staff_id;

-- 4.2 


-- 4.3 


-- 4.4 


-- 4.5 


-- 4.6 

