-- Insert Addresses
INSERT INTO address (street, city, state, zip_code) VALUES
('123 Main St', 'Springfield', 'IL', '62704'),
('456 Oak Ave', 'Dayton', 'OH', '45410'),
('789 Pine Rd', 'Boulder', 'CO', '80302'),
('321 Maple Dr', 'Austin', 'TX', '73301'),
('654 Elm St', 'Seattle', 'WA', '98101');

-- Insert Runners
INSERT INTO runner (first_name, last_name, phone_number, age, gender, address_id) VALUES
('John', 'Doe', '1234567890', 30, 'Male', 1),
('Jane', 'Smith', '2345678901', 27, 'Female', 2),
('Mike', 'Johnson', '3456789012', 35, 'Male', 3),
('Emily', 'Davis', '4567890123', 22, 'Female', 4),
('Robert', 'Brown', '5678901234', 40, 'Male', 5);

-- Insert Races
INSERT INTO race (name, distance, date, elevation, address_id) VALUES
('Colonial Safari', 5000, '2025-09-01', 200, 1),
('Bushwack Run', 10000, '2025-09-15', 350, 2),
('The Trek', 42195, '2025-10-01', 500, 3);

-- Insert Race Prizes (linked to race_id)
INSERT INTO race_prize (race_id, first_prize, second_prize, third_prize) VALUES
(1, 1000, 500, 250),
(2, 2000, 1000, 500),
(3, 5000, 2500, 1000);

-- Insert Registrations
INSERT INTO registration (runner_id, race_id, date) VALUES
(1, 1, '2025-08-15'),
(1, 3, '2025-09-05'),
(1, 2, '2025-08-18'),
(2, 1, '2025-08-16'),
(3, 2, '2025-08-20'),
(4, 2, '2025-08-21'),
(5, 3, '2025-08-25');

-- Insert Shoes
INSERT INTO shoe (runner_id, brand, size, model, year, purchase_date) VALUES
(1, 'Nike', 10.5, 'ZoomX', 2024, '2024-06-01'),
(2, 'Adidas', 8.5, 'Ultraboost', 2023, '2023-03-15'),
(3, 'Asics', 9.0, 'Gel-Kayano', 2025, '2025-01-10'),
(4, 'Brooks', 7.5, 'Ghost', 2024, '2024-09-20'),
(5, 'New Balance', 11.0, 'FuelCell', 2023, '2023-12-05');

-- Insert Race Positions
INSERT INTO race_positions (race_id, position, runner_id, race_time) VALUES
(1, 1, 1, '00:17:30'),
(1, 2, 2, '00:18:45'),
(2, 1, 3, '00:36:15'),
(2, 2, 4, '00:38:00'),
(3, 1, 5, '03:12:30');
