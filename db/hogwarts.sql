DROP TABLE hogwart_students;

CREATE TABLE hogwart_students (
  id serial4 PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  house varchar(255),
  age int2
);
