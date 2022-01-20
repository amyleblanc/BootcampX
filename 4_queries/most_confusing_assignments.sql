SELECT assignment_id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(assignment_id) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignment_id, name, day, chapter
ORDER BY total_requests DESC;
