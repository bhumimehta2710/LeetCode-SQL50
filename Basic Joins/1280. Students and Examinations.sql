# Write your MySQL query statement below
SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.student_id) AS attended_exams
FROM Students AS s
INNER JOIN Subjects AS sub
LEFT JOIN Examinations as e
ON (s.student_id = e.student_id AND sub.subject_name = e.subject_name)
GROUP BY s.student_id, sub.subject_name
ORDER BY student_id, subject_name;

-- Used 'Inner Join' between 'students and 'subjects' to get student-subject pairs. Then used 'Left Join'  with 'Examinations' to include information about exams taken by each student in each subject.
-- Then grouped the results using ' student_id' and ' subject_name'. Used 'Count' to count the number of times a student appeared in the examinations for specific subject.
-- Ordered the results by 'student_id' and 'student_name'
