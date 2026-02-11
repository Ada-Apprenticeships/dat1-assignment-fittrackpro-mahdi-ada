.open fittrackpro.db
.mode column

-- 5.1 
SELECT memberships.member_id,members.first_name,members.last_name,memberships.type AS membership_type,memberships.start_date AS join_date
FROM memberships
JOIN members 
ON memberships.member_id=members.member_id
WHERE memberships.status= 'Active';

-- 5.2 


-- 5.3 

