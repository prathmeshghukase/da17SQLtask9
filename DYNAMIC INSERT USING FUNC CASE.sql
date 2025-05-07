CREATE OR REPLACE FUNCTION cusines_f(
    cust_id INT,
    chief INT,
    waiter INT,
    tableno INT,
    dish TEXT,
    qty INT,
    restaurantid INT
)
RETURNS VARCHAR AS $$
DECLARE
    cusine VARCHAR;                      
BEGIN
    cusine := CASE 
        WHEN dish = 'Spring roll' THEN 'Chinese'
        WHEN dish = 'Panner tikka' THEN 'Indian'
        WHEN dish = 'Pasta' THEN 'Italian'
        WHEN dish = 'Tacos' THEN 'Mexican'
        WHEN dish = 'Nachos' THEN 'Mexican'
        WHEN dish = 'Pizza' THEN 'Italian'
        WHEN dish = 'Manchurian' THEN 'Chinese'
        WHEN dish = 'Green Curry' THEN 'Thai'
        WHEN dish = 'Lobster' THEN 'Seafood'
        ELSE 'Invalid input given'
    END;

   
    INSERT INTO orders(cust_id, chief, waiter, tableno, dish, qty, restaurantid, cusine) 
    VALUES (cust_id, chief, waiter, tableno, dish, qty, restaurantid, cusine);

    RETURN cusine;
END;
$$ LANGUAGE plpgsql;


SELECT cusines_f(10, 10, 10, 1, 'Green Curry', 2, 3) ;

SELECT cusines_f(10, 10, 10, 1, 'Manchurian', 1, 2) ;