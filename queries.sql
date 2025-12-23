-- Query 1
SELECT
  b.booking_id,
  u.name AS customer_name,
  v.name AS vehicle_name,
  b.start_date,
  b.end_date,
  b.status
FROM
  bookings AS b
  INNER JOIN users AS u ON b.user_id = u.user_id
  INNER JOIN vehicles AS v ON b.vehicle_id = v.vehicle_id;

-- Query 2
SELECT
  *
FROM
  vehicles AS v
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      bookings b
    WHERE
      b.vehicle_id = v.vehicle_id
  );

-- Query 3
SELECT
  *
FROM
  vehicles
WHERE
type
  = 'car'
  AND status = 'available';

-- Query 4
select
  v.name AS vehicle_name, count(b.booking_id) as total_bookings
from
  bookings AS b
  JOIN vehicles AS v ON b.vehicle_id = v.vehicle_id
group by
  v.name HAVING COUNT(b.booking_id) > 2;