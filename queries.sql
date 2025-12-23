CREATE TABLE
  users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password varchar(50) NOT NULL,
    phone VARCHAR(15),
    role VARCHAR(20) NOT NULL CHECK (role IN ('Admin', 'Customer'))
  );


CREATE TABLE
  vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type
      VARCHAR(20) NOT NULL CHECK (
        type
          IN ('car', 'bike', 'truck')
      ),
      model INT NOT NULL,
      registration_number VARCHAR(20) NOT NULL UNIQUE,
      rental_price DECIMAL(10, 2) NOT NULL,
      status VARCHAR(20) NOT NULL CHECK (status IN ('available', 'rented', 'maintenance'))
  );


CREATE TABLE
  bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users (user_id),
    vehicle_id INT REFERENCES vehicles (vehicle_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('pending', 'confirmed', 'completed')),
    total_cost DECIMAL(10, 2) NOT NULL
  );


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