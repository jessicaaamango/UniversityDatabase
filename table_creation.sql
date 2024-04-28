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
  uni_id int ,
  major_id int, 
  major varchar(100),
  FOREIGN KEY (uni_id) REFERENCES university(uni_id),
  FOREIGN KEY (major_id) REFERENCES uni_major(id)
 );
