WITH ProcessDuration AS (
    SELECT
        machine_id,
        process_id,
        timestamp AS end_timestamp,
        (SELECT timestamp FROM Activity WHERE machine_id = a.machine_id AND process_id = a.process_id AND activity_type = 'start') AS start_timestamp
    FROM Activity a
    WHERE activity_type = 'end'
)
SELECT
    machine_id,
    ROUND(AVG(end_timestamp - start_timestamp), 3) AS processing_time
FROM ProcessDuration
GROUP BY machine_id;

-- The 'ProcessDuration' CTE calculates the 'start' and 'end' timestamps for each process based on the 'Activity' table. It filters for activity_type = 'end' and uses a subquery to find the corresponding start timestamp for each end record.
-- The next query calculates the difference between end_timestamp and start_timestamp for each process, representing the processing duration. It then rounds the average processing time to 3 decimal places.
-- Then the results are grouped by machine_id to determine the average processing time for each machine.
