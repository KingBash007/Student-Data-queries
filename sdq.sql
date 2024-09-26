-- Create the student table if it does not exist
create table student(
roll_num text primary KEY,
name text not null, 
address text,
phone text,
age integer
);
-- Insert sample data into the students table
insert into student(roll_num, name, address, phone, age) VALUES
  ('1', 'Ram', 'Delhi', '*****', 18),
  ('2', 'Ramesh', 'Gurgaon', '*****', 18),
  ('3', 'Sujit', 'Rohtak', '*****', 20),
  ('4', 'Suresh', 'Delhi', '*****', 18),
  ('5', 'Aman', 'Rohtak', '*****', 20),
  ('6', 'Harsh', 'Gurgaon', '*****', 18);

-- Select all records from the student table
SELECT * FROM student;

-- Query students who are 18 years old and live in delhi
SELECT * FROM student
WHERE age = 18 AND address= 'Delhi';

-- Query student named Ram or Sujit
SELECT * FROM student
WHERE name = 'Ram' OR name = 'Ahmad';

-- Query student aged 18 and named Ram or Ramesh
SELECT * FROM student
WHERE age = 18 AND (name = 'Ram' OR name = 'Ramesh');
