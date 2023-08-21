-- Event 1
-- New customer Rachel
INSERT INTO customers (name, phone)
    VALUES ('Rachel', 1111111111);


-- Event 2
-- Rachel purchases 1 coffee
UPDATE customers
    SET points = points + 1
    WHERE name = 'Rachel';

INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 3
-- New customers Monica and Pheobe
INSERT INTO customers (name, email, phone)
    VALUES
        ('Monica', 'monica@friends.show', 2222222222),
        ('Phoebe', 'phoebe@friends.show', 3333333333);


-- Event 4
-- Phoebe purchases 3 coffees
UPDATE customers
    SET points = points + 3
    WHERE name = 'Phoebe';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 5
-- Rachel purchases 4 coffees
UPDATE customers
    SET points = points + 4
    WHERE name = 'Rachel';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;

-- Monica purchases 4 coffees
UPDATE customers
    SET points = points + 4
    WHERE name = 'Monica';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 6
-- Monica wants her point total
SELECT points FROM customers WHERE name = 'Monica';


-- Event 7
-- Rachel wants her point total
SELECT points FROM customers WHERE name = 'Rachel';

-- If she has enough points, redeem for 1 coffee
UPDATE customers
    SET points = points - 10
    WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed) VALUES (1);


-- Event 8
-- New customers Joey, Chandler, Ross
INSERT INTO customers (name, email)
    VALUES
        ('Joey', 'joey@friends.show'),
        ('Chandler', 'chandler@friends.show'),
        ('Ross', 'ross@friends.show');


-- Event 9
-- Ross purchases 6 coffees
UPDATE customers
    SET points = points + 6
    WHERE name = 'Ross';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 10
-- Monica purchases 3 coffees
UPDATE customers
    SET points = points + 3
    WHERE name = 'Monica';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 11
-- Phoebe wants her point total
SELECT points FROM customers WHERE name = 'Phoebe';

-- If she has enough points, redeem for 1 coffee
-- If not, Phoebe purchases 1 coffee
UPDATE customers
    SET points = points + 1
    WHERE name = 'Phoebe';

INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 12
-- Ross demands a refund for his last two coffees
-- Delete Ross's orders and not anyone else's

-- Without connecting orders to customers?
DELETE FROM coffee_orders WHERE id = 18;

DELETE FROM coffee_orders WHERE id = 19;

-- Update his points to reflect the refunded purchases
UPDATE customers
    SET points = points - 1
    WHERE name = 'Ross';

UPDATE customers
    SET points = points - 1
    WHERE name = 'Ross';


-- Event 13
-- Joey purchases 2 coffees
UPDATE customers
    SET points = points + 2
    WHERE name = 'Joey';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 14
-- Monica wants her point total
SELECT points FROM customers WHERE name = 'Monica';

-- If she has enough points, redeem for 1 coffee
UPDATE customers
    SET points = points - 10
    WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed) VALUES (1);


-- Event 15
-- Chandler wants to delete his loyalty account
DELETE FROM customers WHERE name = 'Chandler';


-- Event 16
-- Ross wants his point total
SELECT points FROM customers WHERE name = 'Ross';

-- If he has enough points, redeem for 1 coffee
-- If not, Ross purchases 1 coffee
UPDATE customers
    SET points = points + 1
    WHERE name = 'Ross';

INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 17
-- Joey wants his point total
SELECT points FROM customers WHERE name = 'Joey';

-- If he has enough points, redeem for 1 coffee
-- If not, Joey purchases 1 coffee
UPDATE customers
    SET points = points + 1
    WHERE name = 'Joey';

INSERT INTO coffee_orders DEFAULT VALUES;


-- Event 18
-- Phoebe wants to change her email
UPDATE customers
    SET email = 'p_as_in_phoebe@friends.show'
    WHERE name = 'Phoebe';
