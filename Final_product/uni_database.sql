CREATE TABLE university (
   uni_name VARCHAR(100),
   uni_id int PRIMARY KEY,
   tuition DECIMAL(8,2),
   state VARCHAR(2)
 );

CREATE TABLE MD_HBCU (
    uni_id int PRIMARY KEY,
    uni_name VARCHAR(100),
    uni_code VARCHAR(10),
    city VARCHAR(100),
	FOREIGN KEY (uni_id) REFERENCES university(uni_id)
);

CREATE TABLE DC_HBCU (
  uni_id int PRIMARY KEY,
  uni_name VARCHAR(100),
  uni_code VARCHAR(10),
  city VARCHAR(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id)
);

CREATE TABLE VA_HBCU (
  uni_id  int PRIMARY KEY,
  uni_name VARCHAR(100),
  uni_code VARCHAR(10),
  city VARCHAR(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id)
);
CREATE TABLE uni_major(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);
CREATE TABLE Major (
  uni_id int,
  major_id int, 
  major varchar(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id),
  FOREIGN KEY (major_id) REFERENCES uni_major(id)
 );
CREATE TABLE university (
   uni_name VARCHAR(100),
   uni_id int PRIMARY KEY,
   tuition DECIMAL(8,2),
   state VARCHAR(2)
 );

CREATE TABLE MD_HBCU (
    uni_id int PRIMARY KEY,
    uni_name VARCHAR(100),
    uni_code VARCHAR(10),
    city VARCHAR(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id)
);

CREATE TABLE DC_HBCU (
  uni_id int PRIMARY KEY,
  uni_name VARCHAR(100),
  uni_code VARCHAR(10),
  city VARCHAR(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id)
);

CREATE TABLE VA_HBCU (
  uni_id  int PRIMARY KEY,
  uni_name VARCHAR(100),
  uni_code VARCHAR(10),
  city VARCHAR(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id)
);
CREATE TABLE uni_major(
  id INT PRIMARY KEY,
  name VARCHAR(100)
);
CREATE TABLE Major (
  uni_id int ,
  major_id int, 
  major varchar(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id),
  FOREIGN KEY (major_id) REFERENCES uni_major(id)
 );

INSERT INTO university (uni_name, uni_id, tuition, state)
VALUES 
  ('Bowie State University', 2062, 25316.00, 'MD'), 
  ('Morgan State University', 2083, 25735.00, 'MD'),
  ('University of Maryland Eastern Shore', 2106, 26554.00, 'MD'),
  ('Coppin State University', 2068, 22836.00, 'MD'),
  ('Howard University', 1448, 51450.00, 'DC'),
  ('University of District of Columbia', 7015, 28119.00, 'DC'),
  ('Hampton University', 3714, 46048.00, 'VA'),
  ('Virginia State University', 3764, 24173.00, 'VA'),
  ('Norfolk State University', 3765, 26710.00, 'VA'),
  ('Virginia Union University', 3766, 30591.00, 'VA');
INSERT INTO MD_HBCU (uni_name, city, uni_code, uni_id)
VALUES 
    ('Bowie State University', 'Bowie', 'BSU', 002062),
    ('Coppin State University', 'Baltimore', 'CSU', 002068),
    ('Morgan State University', 'Baltimore', 'MSU', 002083),
    ('University of Maryland Eastern Shore', 'Princess Anne', 'UMES', 002106);

INSERT INTO DC_HBCU (uni_name, city, uni_code, uni_id)
VALUES 
    ('Howard University', 'DC', 'HU', 001448),
    ('University of District of Columbia', 'DC', 'UDC', 007015);


    INSERT INTO VA_HBCU (uni_name, city, uni_code, uni_id)
VALUES 
    ('Hampton University', 'Hampton', 'HU', 003714),
    ('Virginia State University', 'Petersburg', 'VSU', 003764),
    ('Norfolk State University', 'Norfolk', 'NSU', 003765),
    ('Virginia Union University', 'Richmond', 'VUU', 003766);


INSERT INTO uni_major (id, name)
VALUES
(1, 'Computer Science'),
(2, 'Cybersecurity Focus'),
(3, 'Data Science'),
(4, 'Cyber Operations Engineering'),
(5, 'Software Engineering'),
(6, 'Cloud Computing'),
(7, 'Bioinformatics'),
(8, 'Advanced Computing'),
(9, 'Computer Science, Business Focus'),
(10, 'Applied Computer Science'),
(11, 'Cybersecurity Engineering'),
(12, 'Computer Engineering'),
(13, 'Computer Science and Engineering'),
(14, 'Information Technology'),
(15, 'Cybersecurity'),
(16, 'Computer Science and Engineering with a Specialization in Computer Science'),
(17, 'Computer Information Systems'),
(18, 'Information Logistics Technology'),
(19, 'Computer Engineering Technology'),
(20, 'Computer Science - Computer Engineering Track'),
(21, 'Computer Science - Cybersecurity Track'),
(22, 'Computer Science - Software Engineering Track'),
(23, 'Computer Science - Standard Track'),
(24, 'Computer Science - IA Track'),
(25, 'Computer Information Systems and Computer Science'),
(26, 'Cybersecurity - Minor in Account'),
(27, 'Cybersecurity - Digital Forensics'),
(28, 'Cybersecurity - Finance and Banking'),
(29, 'Cybersecurity - Mathematics'),
(30, 'Cybersecurity - Minor in Account'),
(31, 'Mathematics with Computer Science'),
(32, 'Natural Science with Computer Science');

INSERT INTO Major (uni_id, major_id, major) VALUES 
-- MD Schools
(002062, 1, 'Computer Science'), -- BSU
(002062, 2, 'Computer Science - Cybersecurity Focus'),
(002062, 3, 'Data Science'),
(002062, 4, 'Cyber Operations Engineering'),
(002062, 5, 'Software Engineering'),
(002083, 1, 'Computer Science'), -- MSU
(002083, 6, 'Cloud Computing'),
(002083, 7, 'Bioinformatics'),
(002083, 8, 'Advanced Computing'), 
(002106, 1, 'Computer Science'), -- UMES
(002106, 9, 'Computer Science, Business Focus'), 
(002106, 10, 'Applied Computer Science'), 
(002068, 1, 'Computer Science'), -- CSU
(002068, 11, 'Cybersecurity Engineering'),
(002068, 3, 'Data Science'),

-- DC Majors
(001448, 1, 'Computer Science'), -- HU 
(001448, 12, 'Computer Engineering'),
(007015, 1, 'Computer Science'), -- UDC
(007015, 13, 'Computer Science and Engineering'),
(007015, 14, 'Information Technology'),
(007015, 15, 'Cybersecurity'),
(007015, 16, 'Computer Science and Engineering with a Specialization in Computer Science'),

-- VA Majors
(003714, 1, 'Computer Science'), -- HU
(003714, 15, 'Cybersecurity'),
(003714, 17, 'Computer Information Systems'),
(003764, 12, 'Computer Engineering'),
(003764, 1, 'Computer Science'),
(003764, 18, 'Information Logistics Technology'),
(003764, 15, 'Cybersecurity'),
(003764, 17, 'Computer Information Systems'),
(003765, 19, 'Computer Engineering Technology'),
(003765, 24, 'Computer Science -- IA'),
(003765, 20, 'Computer Science - Computer Engineering Track'),
(003765, 21, 'Computer Science - Cybersecurity Track'),
(003765, 22, 'Computer Science - Sofware Engineering Track'),
(003765, 23, 'Computer Science - Standard Track'),
(003766, 25, 'Computer Information Systems and Computer Science'),
(003766, 26, 'Cybersecurity - Minor in Account'),
(003766, 27, 'Cybersecurity - Digital Forensics'),
(003766, 28, 'Cybersecurity - Finance and Banking'),
(003766, 29, 'Cybersecurity - Mathematics'),
(003766, 30, 'Cybersecurity - Minor in Account'),
(003766, 31, 'Mathematics with Computer Science'),
(003766, 32, 'Natural Science with Computer Science');


