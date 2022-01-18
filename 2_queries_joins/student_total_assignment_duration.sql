SELECT SUM (duration) as total_duration
FROM assignment_submissions LEFT JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';
