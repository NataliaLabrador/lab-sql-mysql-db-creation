-- Bonus Challenge - Updating and Deleting Database Records
-- Connect the Database
USE lab_mysql;

DELETE FROM cars
	WHERE id = 6;
    
-- Select everything from cars table            
SELECT *
FROM cars;