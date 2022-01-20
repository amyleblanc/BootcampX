WITH total_cohort_duration as

 (SELECT sum(completed_at-started_at) as total_duration
  FROM assistance_requests
  JOIN students on students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration)

SELECT avg(total_duration) as average_total_duration
FROM total_cohort_duration;