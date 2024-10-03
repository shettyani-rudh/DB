create database SMVITM;
USE SMVITM;


CREATE TABLE students (
    USN VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Pincode VARCHAR(6) NOT NULL,
    DoB DATE NOT NULL
);


ALTER TABLE students ADD COLUMN Phone VARCHAR(15);

-- Inserting example Indian student records
INSERT INTO students (USN, Name, Email, Pincode, DoB, Phone) VALUES 
('USN12345', 'Rahul Sharma', 'rahul.sharma@example.com', '560001', '2000-01-15', '9876543210'),
('USN12346', 'Ananya Gupta', 'ananya.gupta@example.com', '560002', '2001-02-20', '9876543211'),
('USN12347', 'Amit Verma', 'amit.verma@example.com', '560003', '1999-03-25', '9876543212'),
('USN12348', 'Sneha Iyer', 'sneha.iyer@example.com', '560004', '2002-04-30', '9876543213'),
('USN12349', 'Ravi Kumar', 'ravi.kumar@example.com', '560005', '2000-05-05', '9876543214');


UPDATE students SET Email = 'newemail@example.com' WHERE USN = 'USN12345';

SELECT * FROM students;
