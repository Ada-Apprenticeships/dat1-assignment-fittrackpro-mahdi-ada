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
SELECT classes.class_id,classes.name,class_schedule.start_time, class_schedule.end_time, (classes.capacity-COUNT(class_attendance.member_id) ) AS available_spots 
FROM class_schedule
JOIN classes
ON class_schedule.class_id=classes.class_id
LEFT JOIN class_attendance --This ensures even if we don't have any attendance the query will still work and not forget about this class
ON class_schedule.schedule_id=class_attendance.schedule_id
WHERE start_time LIKE '2025-02-01%' 
GROUP BY class_schedule.schedule_id
-- 4.3 
INSERT INTO class_attendance(class_attendance_id,schedule_id,member_id,attendance_status)
VALUES ()

-- 4.4 


-- 4.5 


-- 4.6 

