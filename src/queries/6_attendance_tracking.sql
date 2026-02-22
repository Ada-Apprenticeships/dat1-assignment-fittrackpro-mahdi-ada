.open fittrackpro.db
.mode column

-- 6.1 
INSERT INTO attendance(attendance_id,member_id,location_id,check_in_time)
VALUES (4,7,1,'2025-02-14 16:30:00');
--check if i was meant to get NULL for check_out_time
-- 6.2 
SELECT DATE(check_in_time) AS visit_date,attendance.check_in_time,attendance.check_out_time
FROM attendance
WHERE attendance.member_id=5
ORDER BY visit_date;

-- 6.3 
SELECT 
    CASE STRFTIME('%w',check_in_time)
    WHEN '0' THEN 'Sunday'
    WHEN '1' THEN 'Monday'
    WHEN '2' THEN 'Tuesday'
    WHEN '3' THEN 'Wednesday'
    WHEN '4' THEN 'Thursday'
    WHEN '5' THEN 'Friday'
    WHEN '6' THEN 'Saturday'
    END AS day_of_week,
    COUNT(*) AS visit_count 
FROM attendance
GROUP BY day_of_week
ORDER BY visit_count DESC
LIMIT 1;
-- 6.4 
SELECT locations.name AS location_name,COUNT(attendance.location_id)/ (SELECT COUNT(DISTINCT DATE(check_in_time)) FROM attendance) AS avg_daily_attendance --Had to do a sub query due to the maths error that would occur when doing 0/0 for Suburban Wellness 
FROM locations 
LEFT JOIN attendance
ON locations.location_id=attendance.location_id
GROUP BY locations.name;
--get help on this the output is giving 0 and 0 which shouldn't be the case 
