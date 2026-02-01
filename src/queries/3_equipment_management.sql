.open fittrackpro.db
.mode column

-- 3.1 
SELECT equipment_id, name, next_maintenance_date
FROM equipment
WHERE next_maintenance_date BETWEEN '2025-01-01' AND date('2025-01-01','+30 days');


-- 3.2 
SELECT type as equipment_type, count(type) as count
FROM equipment
GROUP BY type;

-- 3.3 
SELECT type AS equipment_type, avg(julianday('now') - julianday(purchase_date)) AS avg_age_days -- Is this till current day time or till next maintenance date?
FROM equipment
GROUP BY type;


