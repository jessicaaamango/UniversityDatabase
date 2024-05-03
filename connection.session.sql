-- INSERT INTO Major (uni_id, major_id, major)
-- VALUES (
--     uni_id:int,
--     major_id:int,
--     'major:varchar'
--   );

INSERT INTO Major (uni_id, major_id, major) VALUES 
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
INSERT INTO Major (uni_id, major_id, major) VALUES 
  (001448, 11, 'Cybersecurity Engineering'), -- Howard University
  (007015, 12, 'Computer Engineering'), -- University of District of Columbia
  (007015, 13, 'Computer Science and Engineering'),
  (007015, 14, 'Information Technology'),
  (007015, 15, 'Cybersecurity'),
  (007015, 16, 'Computer Science and Engineering with a Specialization in Computer Science');

-- Insert Computer Science (COSC) majors for VA HBCUs
INSERT INTO Major (uni_id, major_id, major) VALUES 
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

SELECT FROM * Major;