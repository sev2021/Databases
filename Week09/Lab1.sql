-- Week 9 Lab
-- Task One 
-- Create a sub query that will retrieve the postcode from property for rent where the owner has the phone number 0141-943-1728 

USE dreamhome;
SELECT * FROM propertyforrent WHERE ownerNO = (SELECT ownerNO FROM privateowner WHERE telNo = '0141-943-1728');

-- Task Two 
-- Create a sub query that will retrieve the full name of the assistant from staff where the branch postcode is G11 9QX 

USE dreamhome;
SELECT CONCAT(fname, lname) AS 'Full name' FROM staff 
  WHERE position='Assistant' AND branchNo = 
  (SELECT branchNo FROM branch WHERE postcode='G11 9QX');

-- Task Three 
-- Create a view that will display the property number postcode and type from properties for rent. 
-- Query the view 3 times using different queries and screenshot the results 

-- Task Four  
-- Create a view that will display all details except gender from the staff table where the branch all of the following 4, 7 and 2 

-- Task Five 
-- Try and create a view based on a sub query. Use any two tables of your choice for this 

-- Task Six 
-- Save and upload the lab to the provided Moodle link. The solution will be supplied to you in class to compare your answers to.
