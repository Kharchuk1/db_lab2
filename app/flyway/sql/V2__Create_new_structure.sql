DROP TABLE IF EXISTS subject;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS institution;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS test;

CREATE TABLE subject(
  subject_id SERIAL PRIMARY KEY, 
  subject_name VARCHAR(40)
);


CREATE TABLE location(
  location_id SERIAL PRIMARY KEY,
  region_name VARCHAR(80),
  area_name VARCHAR(50),
  territory_name VARCHAR(50),
  CONSTRAINT locations_unique UNIQUE (region_name, area_name, territory_name)
);


CREATE TABLE institution(
  institution_id SERIAL PRIMARY KEY,
  institution_name TEXT,
  institution_parent TEXT, 
  location_id INT,
  CONSTRAINT institutions_unique UNIQUE (institution_name, institution_parent, location_id)
);

CREATE TABLE student(
  student_id VARCHAR(36) PRIMARY KEY,
  birth INT2 NOT NULL,
  sex VARCHAR(15) NOT NULL,
  status VARCHAR(100) NOT NULL,
  profile VARCHAR(50), 
  language VARCHAR(20), 
  year VARCHAR,
  location_id INT,
  institution_id INT
);


CREATE TABLE test(
  subject_id INT,
  student_id VARCHAR(36),
  test_status VARCHAR(30),
  zno_grade NUMERIC(10, 2),
  dpa_grade INT2,
  test_grade INT2,
  dpa_level VARCHAR(30),
  year INT2,
  institution_id INT,
  PRIMARY KEY (subject_id, student_id)
);

ALTER TABLE test
ADD CONSTRAINT subject_fk 
FOREIGN KEY (subject_id) 
REFERENCES subject (subject_id);

ALTER TABLE institution
ADD CONSTRAINT location_fk 
FOREIGN KEY (location_id) 
REFERENCES location (location_id);

ALTER TABLE student
ADD CONSTRAINT institution_fk
FOREIGN KEY (institution_id) 
REFERENCES institution (institution_id);

ALTER TABLE student
ADD CONSTRAINT location_fk
FOREIGN KEY (location_id) 
REFERENCES location (location_id);

ALTER TABLE test
ADD CONSTRAINT student_fk
FOREIGN KEY (student_id) 
REFERENCES student (student_id);

ALTER TABLE test
ADD CONSTRAINT institution_fk
FOREIGN KEY (institution_id) 
REFERENCES institution (institution_id);