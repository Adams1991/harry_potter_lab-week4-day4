DROP TABLE houses;
DROP TABLE hogwart_students;

CREATE TABLE houses (
  id serial4 PRIMARY KEY,
  name varchar(255),
  logo varchar(255)
);

CREATE TABLE hogwart_students (
  id serial4 PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  house_id INT4 REFERENCES houses(id),
  age int2
);
