Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- Create my_table2
CREATE TABLE my_table2(
    id INT,
    description VARCHAR(255) NOT NULL
);

-- Insert data into my_table2
INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

#1
ALTER TABLE my_table change column name full_name varchar(100) not null;

#2
Alter  table my_table modify age bigint not null;

#3
ALTER table my_table add column email varchar(100) not null;

#4
ALTER table my_table add middle_name varchar(50) after full_name;

#5
ALTER table my_table add emp_rank int first;

#6
ALTER TAble my_table modify created_at datetime;

#7
ALTER table my_table2 modify description text;

#8
ALTER table my_table modify full_name varchar(100) null;

#9
ALTER table my_table add primary key(id);

#10
ALTER TABLE my_table
DROP COLUMN middle_name;

#11
ALTER TABLE my_table
RENAME COLUMN email to  email_add;

#12
ALTER table my_table modify age TINYINT null;

#13
ALTER TABLE my_table2
ADD CONSTRAINT fk_id
FOREIGN KEY (id) REFERENCES my_table(id);

#14
ALTER  table my_table2 drop foreign key fk_id;

#15
ALTER  table my_table modify full_name varchar(200);

#16
drop table my_table2;

#17
ALTER TABLE my_table2
DROP FOREIGN KEY fk_id;

#18
ALTER  table my_table drop primary key;

#19
ALTER table my_table drop column age;

#20
drop database ddl_commands;