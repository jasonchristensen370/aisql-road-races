-- Enable foreign keys
PRAGMA foreign_keys = ON;

-- Address table
CREATE TABLE address (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    street TEXT NOT NULL,
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    zip_code TEXT NOT NULL  -- ZIPs may have leading 0s
);

-- Runner table
CREATE TABLE runner (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone_number TEXT NOT NULL, -- Use TEXT to preserve formatting/leading zeros
    age INTEGER NOT NULL,
    gender TEXT NOT NULL CHECK (gender IN ('Male', 'Female')),
    address_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES address(id)
);

-- Race table
CREATE TABLE race (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(30) NOT NULL,
    distance INTEGER NOT NULL,
    date DATE NOT NULL,
    elevation INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES address(id)
);

-- Registration table
CREATE TABLE registration (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    runner_id INTEGER NOT NULL,
    race_id INTEGER NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (runner_id) REFERENCES runner(id),
    FOREIGN KEY (race_id) REFERENCES race(id)
);

-- Shoe table
CREATE TABLE shoe (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    runner_id INTEGER NOT NULL,
    brand TEXT NOT NULL,
    size REAL NOT NULL,  -- SQLite doesn't enforce DECIMAL precision
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
    purchase_date DATE NOT NULL,
    FOREIGN KEY (runner_id) REFERENCES runner(id)
);

-- Race prize table
CREATE TABLE race_prize (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER NOT NULL,
    first_prize INTEGER NOT NULL,
    second_prize INTEGER NOT NULL,
    third_prize INTEGER NOT NULL,
    FOREIGN KEY (race_id) REFERENCES race(id)
);

-- Race positions table
CREATE TABLE race_positions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    race_id INTEGER NOT NULL,
    position INTEGER NOT NULL,
    runner_id INTEGER NOT NULL,
    race_time TIME NOT NULL,
    FOREIGN KEY (race_id) REFERENCES race(id),
    FOREIGN KEY (runner_id) REFERENCES runner(id)
);
