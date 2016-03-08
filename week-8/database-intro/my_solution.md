<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 8.4-branch
=======

>>>>>>> 8cfc97bbbf6ec21babcda7baf0178cdf1cc490ea
1. SELECT * FROM states;       

2. SELECT * FROM regions;

3. SELECT state_name, population FROM states;  

4. SELECT state_name, population FROM states ORDER BY population DESC; 

5. SELECT state_name FROM states WHERE region_id=7;

6. SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

7. SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;  

9. SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

10. SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON regions.id=states.region_id ORDER BY region_name;
<<<<<<< HEAD
<<<<<<< HEAD
           
=======
=======
>>>>>>> 8cfc97bbbf6ec21babcda7baf0178cdf1cc490ea

![table image](https://github.com/AlanaFarkas/Phase-0/blob/master/week-8/database-intro/connected_tables.png)



Reflection

What are databases for?

Databases are a way to group and access sets of data.

What is a one-to-many relationship?

An example of a one-to-many relationship can be found in say, families -- each child has one mother but one mother can have more than one child. The mother has a one-to-many relationship with her children.

What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique identifier for a record of data and typically refers to fields in a tables' column. A foreign key is an data in a different table that refers to the primary key of another table.

How can you select information out of a SQL database? What are some general guidelines for that?

SQL language has its own special syntax. SQUL commands are written in ALL CAPS and commands end with a semicolon. So to select all data from a table called 'examples' would be written this way: SELECT * FROM examples;
           
<<<<<<< HEAD
>>>>>>> 8.4-branch
=======
>>>>>>> 8cfc97bbbf6ec21babcda7baf0178cdf1cc490ea
