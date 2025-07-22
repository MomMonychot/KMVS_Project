-- Create and use the database
USE KPICamfebaDB;

-- Insert Positions
INSERT INTO Positions (position_id, position_name, comment_position) VALUES
('PST01', 'Executive Director', NULL),
('PST02', 'Membership Manager', NULL),
('PST03', 'Senior Membership Services Executive', NULL),
('PST04', 'Compliance Services Executive', NULL),
('PST05', 'Senior HR, Compliance Services Executive', NULL),
('PST06', 'Project Coordinator', NULL),
('PST07', 'Legal Services Manager', NULL),
('PST08', 'Junior Research & Policy Executive', NULL),
('PST09', 'Legal Services Executive', NULL),
('PST10', 'Executive Director''s Assistant', NULL),
('PST11', 'Accountant', NULL),
('PST12', 'Internship', NULL),
('PST13', 'Messenger', NULL),
('PST14', 'Janitor', NULL),
('PST15', 'Project Manager', NULL),
('PST16', 'Junior Membership Services Executive', NULL);

-- Insert Departments
INSERT INTO Departments (dept_id, dept_name, comment_dept) VALUES
('DEPT01', 'OPERATION', NULL),
('DEPT02', 'LEGAL', NULL),
('DEPT03', 'MEMBERSHIP', NULL),
('DEPT04', 'PROJECT', NULL),
('DEPT05', 'RESEARCH & POLICY', NULL),
('DEPT06', 'Training Unit', NULL),
('DEPT07', 'IT Unit', NULL),
('DEPT08', 'Accountant Unit', NULL);

-- Insert Users
INSERT INTO Users (user_id, user_name, position_id, dept_id, start_work_date, end_work_date, comment_user) VALUES
('USER001', 'Mr. Tep Sophoan', 'PST01', 'DEPT01', NULL, NULL, NULL),
('USER002', 'Mr. Voeun Rothanak', 'PST07', 'DEPT02', NULL, NULL, NULL),
('USER003', 'Mr. Thy Chanrith', 'PST05', 'DEPT02', NULL, NULL, NULL),
('USER004', 'Mr. Chhuon Sothear', 'PST03', 'DEPT03', NULL, NULL, NULL),
('USER005', 'Mr. Ma Sopheara', 'PST04', 'DEPT02', NULL, NULL, NULL),
('USER006', 'Mr. Phang Channpanharith', 'PST09', 'DEPT02', NULL, NULL, NULL),
('USER007', 'Mr. Pak Sokrom', 'PST06', 'DEPT04', NULL, NULL, NULL),
('USER008', 'Ms. Men Chea Dhebi', 'PST08', 'DEPT05', NULL, NULL, NULL),
('USER009', 'Ms. Men Chea Lakshmi', 'PST10', 'DEPT05', NULL, NULL, NULL),
('USER010', 'Ms. SAM Leakhena', 'PST12', 'DEPT03', NULL, NULL, NULL),
('USER011', 'Mr. Po Visal', 'PST12', 'DEPT02', NULL, NULL, NULL),
('USER012', 'Mr. Mom Monychot', 'PST12', 'DEPT07', NULL, NULL, NULL),
('USER013', 'Mr. Ang Solik', 'PST12', 'DEPT07', NULL, NULL, NULL),
('USER014', 'Mr. Puy Mengkheang', 'PST12', 'DEPT07', NULL, NULL, NULL),
('USER015', 'Mr. Soun Somroethpiseth', 'PST16', 'DEPT03', NULL, NULL, NULL),
('USER016', 'Mr. Noun Sopheap', 'PST12', 'DEPT07', NULL, NULL, NULL),
('USER017', 'Mr. Leang Honghav', 'PST12', 'DEPT07', NULL, NULL, NULL),
('USER018', 'Ms. Prak Chanmly', 'PST06', 'DEPT04', NULL, NULL, NULL),
('USER019', 'Mr. Mei Naro', 'PST15', 'DEPT04', NULL, NULL, NULL),
('USER020', 'Ms. Savuth Devin', 'PST12', 'DEPT08', NULL, NULL, NULL);
