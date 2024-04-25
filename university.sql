 CREATE TABLE university (
   uni_name VARCHAR(100),
   uni_id int PRIMARY KEY,
   major VARCHAR(50),
   major_id int,
   tuition DECIMAL(8,2),
   state VARCHAR(2)
 );


CREATE TABLE MD_HBCU (
    uni_id int PRIMARY KEY,
    uni_name VARCHAR(100),
    uni_code VARCHAR(10),
    city VARCHAR(100)
);

CREATE TABLE DC_HBCU (
  uni_id int PRIMARY KEY,
  uni_name VARCHAR(100),
  uni_code VARCHAR(10),
  city VARCHAR(100)
);

CREATE TABLE VA_HBCU (
  uni_id int PRIMARY KEY,
  uni_name VARCHAR(100),
  uni_code VARCHAR(10),
  city VARCHAR(100)
);

CREATE TABLE Major (
  uni_id int PRIMARY KEY,
  major_id int, -- FOREIGN KEY,
  major varchar(100)
);

CREATE TABLE Q_Form (
  q1 VARCHAR(100),
  q2 VARCHAR(100),
  q3 VARCHAR(100),
  q4 VARCHAR(100),
  q5 VARCHAR(100)
);
-- 1 = Computer Science
-- 2 = Computer Science, Cybersecurity Focus
-- 3 = Data Science
-- 4 = Cyber Operations Engineering
-- 5 = Software Egnineering
-- 6 = Cloud Computing
-- 7 = Bioinformatics
-- 8 = Advanced Computing
-- 9 = Computer Science, Business Focus
-- 10 = Applied Computer Science
-- 11 = Cybersecurity Engineering
-- 12 = Computer Engineering
-- 13 = Computer Science and Engineering
-- 14 = Information Technology
-- 15 = Cybersecurity
-- 16 = Computer Science and Engineering with a Specialization in Computer Science
-- 17 = Computer Information Systems
-- 18 = Information Logistics Technology
-- 19 = Computer Engineering Technology
-- 20 = Computer Science - Computer Engineering Track
-- 21 = Computer Science - Cybersecurity Track
-- 22 = Computer Science - Sofware Engineering Track
-- 23 = Computer Science - Standard Track
-- 24 = Computer Science - IA Track
-- 25 = Computer Information Systems and Computer Science'
-- 26 = Cybersecurity - Minor in Account
-- 27 = Cybersecurity - Digital Forensics
-- 28 = Cybersecurity - Finance and Banking
-- 29 Cybersecurity - Mathematics
-- 30 = Cybersecurity - Minor in Account
-- 31 = Mathematics with Computer Science
-- 32 = Natural Science with Computer Science

-- INSERT INTO Major (uni_id, major_id, major) VALUES 
--   -- MD Schools
--   (002062, 1, 'Computer Science'), -- BSU
--   (002062, 2, 'Computer Science - Cybersecurity Focus'),
--   (002062, 3, 'Data Science'),
--   (002062, 4, 'Cyber Operations Engineering'),
--   (002062, 5, 'Software Engineering'),
--   (002083, 1, 'Computer Science'), -- MSU
--   (002083, 6, 'Cloud Computing'),
--   (002083, 7, 'Bioinformatics'),
--   (002083, 8, 'Advanced Computing'), 
--   (002106, 1, 'Computer Science'), --UMES
--   (002106, 9, 'Computer Science, Business Focus'), 
--   (002106, 10, 'Applied Computer Science'), 
--   (002068, 1, 'Computer Science'), --CSU
--   (002068, 11, 'Cybersecurity Engineering'),
--   (002068, 3, 'Data Science'),

--   -- DC Majors
--   (001448, 1, 'Computer Science'), -- HU 
--   (001448, 12, 'Computer Engineering'),
--   (007015, 1, 'Computer Science'), -- UDC
--   (007015, 13, 'Computer Science and Engineering'),
--   (007015, 14, 'Information Technology'),
--   (007015, 15, 'Cybersecurity'),
--   (007015, 16, 'Computer Science and Engineering with a Specialization in Computer Science'),

--   -- VA Majors
--   (003714, 1, 'Computer Science'), -- HU
--   (003714, 15, 'Cybersecurity'),
--   (003714, 17, 'Computer Information Systems'),
--   (003764, 12, 'Computer Engineering'),
--   (003764, 1, 'Computer Science'),
--   (003764, 18, 'Information Logistics Technology'),
--   (003764, 15, 'Cybersecurity'),
--   (003764, 17, 'Computer Information Systems'),
--   (003765, 19, 'Computer Engineering Technology'),
--   (003765, 24, 'Computer Science -- IA'),
--   (003765, 20, 'Computer Science - Computer Engineering Track'),
--   (003765, 21, 'Computer Science - Cybersecurity Track'),
--   (003765, 22, 'Computer Science - Sofware Engineering Track'),
--   (003765, 23, 'Computer Science - Standard Track'),
--   (003766, 25, 'Computer Information Systems and Computer Science'),
--   (003766, 26, 'Cybersecurity - Minor in Account'),
--   (003766, 27, 'Cybersecurity - Digital Forensics'),
--   (003766, 28, 'Cybersecurity - Finance and Banking'),
--   (003766, 29, 'Cybersecurity - Mathematics'),
--   (003766, 30, 'Cybersecurity - Minor in Account'),
--   (003766, 31, 'Mathematics with Computer Science'),
--   (003766, 32, 'Natural Science with Computer Science');

-- uni_id = FASFA code
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


SELECT * FROM MD_HBCU;
SELECT * FROM DC_HBCU;
SELECT * FROM VA_HBCU;
SELECT * FROM Major;


-- Need to find a way to insert all provided COSC majors and ids for each HBCU into the dataset
-- ALSO we may be able to use the indexes as the uni_ids if those aren't already provided online?? i think it is but idk
-- We need to make sure to use every variable in each table we created as well so we don't leave any holes
-- Then UI

-- Insert Computer Science (COSC) majors for MD HBCUs
INSERT INTO Major (uni_id, major_id, major)
VALUES 
  (002062, 1, 'Computer Science'), -- Bowie State University
  (002062, 2, 'Computer Science - Cybersecurity Focus'),
  (002062, 3, 'Data Science'),
  (002062, 4, 'Cyber Operations Engineering'),
  (002062, 5, 'Software Engineering'),
  (002083, 6, 'Cloud Computing'), -- Morgan State University
  (002083, 7, 'Bioinformatics'),
  (002083, 8, 'Advanced Computing'), 
  (002106, 9, 'Computer Science, Business Focus'), -- University of Maryland Eastern Shore
  (002106, 10, 'Applied Computer Science'); 

-- Insert Computer Science (COSC) majors for DC HBCUs
INSERT INTO Major (uni_id, major_id, major)
VALUES 
  (001448, 11, 'Cybersecurity Engineering'), -- Howard University
  (007015, 12, 'Computer Engineering'), -- University of District of Columbia
  (007015, 13, 'Computer Science and Engineering'),
  (007015, 14, 'Information Technology'),
  (007015, 15, 'Cybersecurity'),
  (007015, 16, 'Computer Science and Engineering with a Specialization in Computer Science');

-- Insert Computer Science (COSC) majors for VA HBCUs
INSERT INTO Major (uni_id, major_id, major)
VALUES 
  (003714, 17, 'Computer Information Systems'), -- Hampton University
  (003714, 18, 'Information Logistics Technology'),
  (003764, 19, 'Computer Engineering'), -- Virginia State University
  (003764, 20, 'Computer Science'),
  (003764, 21, 'Cybersecurity'),
  (003765, 22, 'Computer Engineering Technology'),
  (003765, 23, 'Computer Science -- IA'),
  (003765, 24, 'Computer Science - Computer Engineering Track'),
  (003765, 25, 'Computer Science - Cybersecurity Track'),
  (003765, 26, 'Computer Science - Software Engineering Track'),
  (003765, 27, 'Computer Science - Standard Track'),
  (003766, 28, 'Computer Information Systems and Computer Science'),
  (003766, 29, 'Cybersecurity - Minor in Account'),
  (003766, 30, 'Cybersecurity - Digital Forensics'),
  (003766, 31, 'Cybersecurity - Finance and Banking'),
  (003766, 32, 'Cybersecurity - Mathematics'),
  (003766, 33, 'Cybersecurity - Minor in Account'),
  (003766, 34, 'Mathematics with Computer Science'),
  (003766, 35, 'Natural Science with Computer Science');

