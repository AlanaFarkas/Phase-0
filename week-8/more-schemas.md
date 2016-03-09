![one-to-one relationship](https://github.com/AlanaFarkas/Phase-0/blob/master/week-8/imgs/one-to-one-relationship.png)

#To explain a one-to-one relationship, a grandfather has created two tables: one for his daughters, and one for his grandchildren. His daughters' ID is the primary key. This primary key is connected to a foreign key in the grandchildrens' table for the mother attribute. A grandchild can only have one mother.

![many-to-many relationship](https://github.com/AlanaFarkas/Phase-0/blob/master/week-8/imgs/many-to-many-relationship.png)

#Reflect:

#What is a one-to-one database?
A one-to-one database connects values that could only have one other related pair value. For example, a person only has one passport ID number, one social security number, and one drivers' license number and so the relationship between a person and these numbers would be one-to-one. 

#When would you use a one-to-one database? (Think generally, not in terms of the example you created).
A one-to-one database could be used when creating a table for student_names and another for student_birthdays. Each student only has one birthday.

#What is a many-to-many database?
A many-to-many database is created when any number of one table's rows can be connected to any number of different tables' rows. So a group of students from one school can visit several museums on field trips throughout the year, and several museums can welcome many different school groups to visit throughout the year.  

#When would you use a many-to-many database? (Think generally, not in terms of the example you created).
An elementary school has a table of student_names and another for emergency_contact_numbers. The elementary school may educate sets of siblings from the same family who are in different grades, but may share the same two or more emergency contact numbers (one for their mother, one for their father, their doctor, etc). Many students may have many emergency contact numbers. 

#What is confusing about database schemas? What makes sense?
Reading schemas, one-to-many databases, and many-to-many databases make sense to me. One-to-one databases sort of makes sense but, echoing a lot of the same sentiments found in many of the articles I've read for this challenge, it's hard to imagine a situation where a one-to-one database would be necessary. Also, I'm still trying to get 100% straight on identifying primary keys and foreign keys. 