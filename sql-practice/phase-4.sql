-- Events 1 - 7
-- Add employees
INSERT INTO employees
    (first_name, last_name, department, role)
    VALUES
        ('Michael', 'Scott', 'Management', 'Regional Manager'),
        ('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager'),
        ('Jim', 'Halpert', 'Sales', 'Sales Representative'),
        ('Pam', 'Beesly', 'Reception', 'Receptionist'),
        ('Kelly', 'Kapoor', 'Product Oversight', 'Customer Service Representative'),
        ('Angela', 'Martin', 'Accounting', 'Head of Accounting'),
        ('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff');


-- Event 8
-- Roy and Pam romance
INSERT INTO romance
    (person1, person2)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Roy'),
        (SELECT id FROM employees WHERE first_name = 'Pam'));


-- Event 9
-- Ryan Howard hired to Reception as Temp
INSERT INTO employees
    (first_name, last_name, department, role)
    VALUES
        ('Ryan', 'Howard', 'Reception', 'Temp');


-- Event 10
-- Onsite office party with budget of $100.00
INSERT INTO parties
    (budget, is_onsite)
    VALUES
        (100.00, 1);


-- Event 11
-- Dwight review score 3.3
INSERT INTO reviews
    (employee_id, score)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Dwight'),
        3.3);


-- Event 12
-- Jim review score 4.2
INSERT INTO reviews
    (employee_id, score)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Jim'),
        4.2);


-- Event 13
-- Change Dwight's review score to 9.0
UPDATE reviews
    SET score = 9.0
    WHERE employee_id =
    (SELECT id FROM employees WHERE first_name = 'Dwight');


-- Event 14
-- Change Jim's review score to 9.3
UPDATE reviews
    SET score = 9.3
    WHERE employee_id =
    (SELECT id FROM employees WHERE first_name = 'Jim');


-- Event 15
-- Change Jim's role to 'Assistant Regional Manager'
UPDATE employees
    SET role = 'Assistant Regional Manager'
    WHERE first_name = 'Jim';


-- Event 16
-- Change Ryan's department to 'Sales'
-- Change Ryan's role to 'Sales Representative'
UPDATE employees
    SET department = 'Sales',
        role = 'Sales Representative'
    WHERE first_name = 'Ryan';


-- Event 17
-- Onsite office party with budget of $200.00
INSERT INTO parties
    (budget, is_onsite)
    VALUES
        (200.00, 1);


-- Event 18
-- Angela and Dwight romance
INSERT INTO romance
    (person1, person2)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Angela'),
        (SELECT id FROM employees WHERE first_name = 'Dwight'));


-- Event 19
-- Angela review score 6.2
INSERT INTO reviews
    (employee_id, score)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Angela'),
        6.2);


-- Event 20
-- Ryan and Kelly romance
INSERT INTO romance
    (person1, person2)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Ryan'),
        (SELECT id FROM employees WHERE first_name = 'Kelly'));


-- Event 21
-- Onsite office party with budget of $50.00
INSERT INTO parties
    (budget, is_onsite)
    VALUES
        (50.00, 1);


-- Event 22
-- Jim moves. Change relationship and reviews
DELETE FROM reviews
    WHERE employee_id =
        (SELECT id FROM employees WHERE first_name = 'Jim');

DELETE FROM employees
    WHERE first_name = 'Jim';


-- Event 23
-- Roy and Pam romance ends
DELETE FROM romance
    WHERE person1 =
        (SELECT id FROM employees WHERE first_name = 'Roy');


-- Event 24
-- Pam review score 7.6
INSERT INTO reviews
    (employee_id, score)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Pam'),
        7.6);


-- Event 25
-- Dwight review score 8.7
INSERT INTO reviews
    (employee_id, score)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Dwight'),
        8.7);


-- Event 26
-- Ryan quits. Change relationship and reviews
DELETE FROM romance
    WHERE person1 =
        (SELECT id FROM employees WHERE first_name = 'Ryan');

DELETE FROM employees
    WHERE first_name = 'Ryan';


-- Event 27
-- Jim moves back to 'Sales' as 'Sales Representative'
INSERT INTO employees
    (first_name, last_name, department, role)
    VALUES
        ('Jim', 'Halpert', 'Sales', 'Sales Representative');


-- Event 28
-- Karen transfers to 'Sales' as 'Sales Representative'
INSERT INTO employees
    (first_name, last_name, department, role)
    VALUES
        ('Karen', 'Filippelli', 'Sales', 'Sales Representative');


-- Event 29
-- Karen and Jim romance
INSERT INTO romance
    (person1, person2)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Karen'),
        (SELECT id FROM employees WHERE first_name = 'Jim'));


-- Event 30
-- Onsite office party with budget of $120.00
INSERT INTO parties
    (budget, is_onsite)
    VALUES
        (120.00, 1);


-- Event 31
-- Change last party to offsite with budget of $300.00
UPDATE parties
    SET budget = 300.00,
        is_onsite = 0
    WHERE id =
        (SELECT id FROM parties
            ORDER BY id DESC
            LIMIT 1);


-- Event 32
-- Karen and Jim romance ends
DELETE FROM romance
    WHERE person1 =
        (SELECT id FROM employees
            WHERE first_name = 'Karen');


-- Event 33
-- Pam and Jim romance
INSERT INTO romance
    (person1, person2)
    VALUES
        ((SELECT id FROM employees WHERE first_name = 'Pam'),
        (SELECT id FROM employees WHERE first_name = 'Jim'));
