.open fittrackpro.db
.mode column

-- 5.1 
SELECT memberships.member_id,members.first_name,members.last_name,memberships.type AS membership_type,members.join_date
FROM memberships
LEFT JOIN members
ON memberships.member_id=members.member_id
WHERE memberships.status='Active';

-- 5.2 
SELECT memberships.type AS membership_type,AVG((strftime('%s', attendance.check_out_time)-strftime('%s',attendance.check_in_time))/60) AS avg_visit_duration_minutes
FROM memberships
JOIN attendance
ON memberships.member_id=attendance.member_id
GROUP BY memberships.type;


-- 5.3 
SELECT memberships.member_id,members.first_name,members.last_name,members.email,memberships.end_date
FROM memberships
LEFT JOIN members
ON memberships.member_id=members.member_id
WHERE memberships.end_date LIKE '2025%';
--there is something wrong with the member_id stuff--> try locally if it still doesnt work contact dan