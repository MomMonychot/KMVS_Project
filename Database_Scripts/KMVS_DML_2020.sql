-- ======================
-- Use the database
-- ======================
USE KPICamfebaDB;

-- ======================
-- 1. KPIMaster for 2020
-- ======================
INSERT INTO KPIMaster (
    kpi_id, kpi, kpi_target, kpi_actual, assign_dept, kpi_pg,
    start_date, end_date, actual_date,
    remark_kpi, date_input_kpi, user_set_kpi
)
VALUES
('KPI001', 'Business Growth (Share 70% of total achievement)', 10000, 9300, 'DEPT03', '93.0%', '2020-01-01', '2020-12-30', '2020-12-20', 'Membership registration slightly below goal', '2020-01-04 00:00:00', 'USER001'),
('KPI002', 'Self Development & Workflow Process (Share 30% of total Achievement)', 5000, 5200, 'DEPT03', '104.0%', '2020-01-01', '2020-12-30', '2020-12-22', 'Extra workshops contributed to higher score', '2020-01-04 00:00:00', 'USER001');

-- ======================
-- 2. MainActivities for 2020
-- ======================
INSERT INTO MainActivities (
    ma_id, kpi_id, ma, ma_target, ma_actual, ma_pg,
    remark_ma, date_input_ma, user_set_ma
)
VALUES
('MA001', 'KPI001', 'Target Membership Registration', 28, 26, '92.9%', 'Few members dropped mid-year', '2020-01-28 00:00:00', 'USER019'),
('MA002', 'KPI001', 'Promotion Advertising', 10, 8, '80.0%', 'Reduced budget affected campaigns', '2020-02-04 00:00:00', 'USER019'),
('MA003', 'KPI002', 'CAMFEBA Awareness Membership', 1000, 950, '95.0%', 'Some leads not converted', '2020-01-21 00:00:00', 'USER019'),
('MA004', 'KPI002', 'CAMFEBA Awareness Sponsorship', 120, 110, '91.7%', 'Follow-ups helped recover dropped sponsors', '2020-01-19 00:00:00', 'USER019'),
('MA005', 'KPI002', 'Self Development', 240, 250, '104.2%', 'Each person scored well in all 3 tests', '2020-01-12 00:00:00', 'USER019');

-- ======================
-- 3. DivideMainActivities for 2020
-- ======================
INSERT INTO DivideMainActivities (
    dv_ma_id, ma_id, dv_ma, dv_ma_target, dv_ma_actual,
    assign_user, dv_ma_pg, remark_dv_ma, date_dv_ma, user_dv_ma
)
VALUES
('DVMA001', 'MA001', 'Target Membership Registration Part I', 14, 13, 'USER004', '92.9%', NULL, '2020-02-01 08:00:00', 'USER019'),
('DVMA002', 'MA001', 'Target Membership Registration Part II', 14, 13, 'USER019', '92.9%', NULL, '2020-02-01 08:15:00', 'USER019'),
('DVMA003', 'MA002', 'Promotion Advertising Part I', 5, 4, 'USER004', '80.0%', NULL, '2020-02-01 08:30:00', 'USER019'),
('DVMA004', 'MA002', 'Promotion Advertising Part II', 5, 4, 'USER010', '80.0%', NULL, '2020-02-01 08:45:00', 'USER019'),
('DVMA005', 'MA003', 'CAMFEBA Awareness Membership Part I', 400, 380, 'USER019', '95.0%', NULL, '2020-02-01 09:00:00', 'USER019'),
('DVMA006', 'MA003', 'CAMFEBA Awareness Membership Part II', 300, 290, 'USER004', '96.7%', NULL, '2020-02-01 09:15:00', 'USER019'),
('DVMA007', 'MA003', 'CAMFEBA Awareness Membership Part III', 300, 280, 'USER010', '93.3%', NULL, '2020-02-01 09:30:00', 'USER019'),
('DVMA008', 'MA004', 'CAMFEBA Awareness Sponsorship Part I', 60, 55, 'USER004', '91.7%', NULL, '2020-02-01 09:45:00', 'USER019'),
('DVMA009', 'MA004', 'CAMFEBA Awareness Sponsorship Part II', 60, 55, 'USER010', '91.7%', NULL, '2020-02-01 10:00:00', 'USER019'),
('DVMA010', 'MA005', 'Self Development Part I', 80, 83, 'USER004', '103.8%', NULL, '2020-02-01 10:15:00', 'USER019'),
('DVMA011', 'MA005', 'Self Development Part II', 80, 82, 'USER019', '102.5%', NULL, '2020-02-01 10:30:00', 'USER019'),
('DVMA012', 'MA005', 'Self Development Part III', 80, 85, 'USER010', '106.3%', 'Improved test scores', '2020-02-01 10:45:00', 'USER019');

-- ======================
-- 4. Activities for 2020 (Assigned to DVMA)
-- ======================
INSERT INTO Activities (
  act_id, dv_ma_id, act, act_target, act_actual, act_pg,
  remark_act, date_input_act, user_set_act
)
VALUES
('A001', 'DVMA001', 'Ordinary Member Entrance Fee', 8, 7, '87.5%', NULL, '2020-02-10 08:00:00', 'USER004'),
('A002', 'DVMA001', 'Association Member Entrance Fee', 6, 6, '100%', NULL, '2020-02-10 08:15:00', 'USER004'),
('A003', 'DVMA002', 'Associate Member Entrance Fee', 14, 13, '92.9%', NULL, '2020-02-10 08:30:00', 'USER019'),
('A004', 'DVMA003', 'Logo Advertising on Website', 2, 2, '100%', NULL, '2020-02-10 08:45:00', 'USER004'),
('A005', 'DVMA003', 'Newsletter Space', 2, 1, '50.0%', NULL, '2020-02-10 09:00:00', 'USER004'),
('A006', 'DVMA004', 'Annual Report Space', 3, 3, '100%', NULL, '2020-02-10 09:15:00', 'USER010'),
('A007', 'DVMA005', 'Identify New Potential Members', 100, 95, '95.0%', NULL, '2020-02-10 09:30:00', 'USER019'),
('A008', 'DVMA006', 'Appointment with Potential Members', 100, 96, '96.0%', NULL, '2020-02-10 09:45:00', 'USER004'),
('A009', 'DVMA007', 'Pilot Email to Potential Members', 100, 94, '94.0%', NULL, '2020-02-10 10:00:00', 'USER010'),
('A010', 'DVMA007', 'Follow-up with Potential Members', 100, 95, '95.0%', NULL, '2020-02-10 10:15:00', 'USER010'),
('A011', 'DVMA007', 'Reduce Failed Emails to 0', 100, 95, '95.0%', 'Bounced emails from old lists', '2020-02-10 10:30:00', 'USER010'),
('A012', 'DVMA008', 'Send Proposal to Potential Clients', 30, 28, '93.3%', NULL, '2020-02-10 10:45:00', 'USER004'),
('A013', 'DVMA009', 'Appointment with Potential Clients', 30, 27, '90.0%', NULL, '2020-02-10 11:00:00', 'USER010'),
('A014', 'DVMA009', 'Follow-up with Clients', 30, 28, '93.3%', NULL, '2020-02-10 11:15:00', 'USER010'),
('A015', 'DVMA010', 'Quarterly Test', 40, 41, '102.5%', NULL, '2020-02-10 11:30:00', 'USER004'),
('A016', 'DVMA010', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2020-02-10 11:45:00', 'USER004'),
('A017', 'DVMA011', 'Quarterly Test', 40, 40, '100.0%', NULL, '2020-02-10 12:00:00', 'USER019'),
('A018', 'DVMA011', 'Online Course Participation', 40, 42, '105.0%', NULL, '2020-02-10 12:15:00', 'USER019'),
('A019', 'DVMA012', 'Quarterly Test', 40, 43, '107.5%', NULL, '2020-02-10 12:30:00', 'USER010'),
('A020', 'DVMA012', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2020-02-10 12:45:00', 'USER010');

-- ======================
-- 5. DivideActivities for 2020 (no dv_ma_id, link only to act_id)
-- ======================
INSERT INTO DivideActivities (
  dv_act_id, act_id, dv_act, dv_act_target, dv_act_actual,
  quarter, dv_act_pg, remark_dv_act, date_dv_act, user_dv_act
)
VALUES
('DVACT001', 'A001', 'Ordinary Member Entrance Fee - Quarter 1', 2, 2, 'Q1', '100%', NULL, '2020-03-01 08:00:00', 'USER004'),
('DVACT002', 'A001', 'Ordinary Member Entrance Fee - Quarter 2', 2, 1, 'Q2', '50%', NULL, '2020-04-01 08:00:00', 'USER004'),
('DVACT003', 'A001', 'Ordinary Member Entrance Fee - Quarter 3', 2, 2, 'Q3', '100%', NULL, '2020-07-01 08:00:00', 'USER004'),
('DVACT004', 'A001', 'Ordinary Member Entrance Fee - Quarter 4', 2, 2, 'Q4', '100%', NULL, '2020-10-01 08:00:00', 'USER004'),
('DVACT005', 'A002', 'Association Member Entrance Fee - First Half', 3, 3, 'Q1', '100%', NULL, '2020-03-05 08:10:00', 'USER004'),
('DVACT006', 'A002', 'Association Member Entrance Fee - Second Half', 3, 3, 'Q3', '100%', NULL, '2020-09-05 08:10:00', 'USER004'),
('DVACT007', 'A003', 'Associate Member Entrance Fee - First Half', 7, 6, 'Q2', '85.7%', NULL, '2020-06-01 08:20:00', 'USER019'),
('DVACT008', 'A003', 'Associate Member Entrance Fee - Second Half', 7, 7, 'Q4', '100%', NULL, '2020-11-01 08:20:00', 'USER019'),
('DVACT009', 'A004', 'Logo Advertising on Website - Quarter 1', 1, 1, 'Q1', '100%', NULL, '2020-03-10 09:00:00', 'USER004'),
('DVACT010', 'A004', 'Logo Advertising on Website - Quarter 2', 1, 1, 'Q2', '100%', NULL, '2020-06-10 09:00:00', 'USER004'),
('DVACT011', 'A005', 'Newsletter Space Advertising - Quarter 2', 1, 1, 'Q2', '100%', NULL, '2020-06-15 09:10:00', 'USER004'),
('DVACT012', 'A005', 'Newsletter Space Advertising - Quarter 3', 1, 0, 'Q3', '0%', 'Missed printing deadline', '2020-08-15 09:10:00', 'USER004'),
('DVACT013', 'A006', 'Annual Report Advertising - Quarter 4', 3, 3, 'Q4', '100%', NULL, '2020-10-01 09:20:00', 'USER010'),
('DVACT014', 'A007', 'Identify New Potential Members - Quarter 1', 100, 95, 'Q1', '95.0%', NULL, '2020-03-20 10:00:00', 'USER019'),
('DVACT015', 'A008', 'Appointment with Potential Members - Quarter 2', 100, 96, 'Q2', '96.0%', NULL, '2020-06-20 10:10:00', 'USER004'),
('DVACT016', 'A009', 'Pilot Email to Potential Members - Quarter 3', 100, 94, 'Q3', '94.0%', NULL, '2020-08-20 10:20:00', 'USER010'),
('DVACT017', 'A010', 'Follow-up with Potential Members - Quarter 4', 100, 95, 'Q4', '95.0%', NULL, '2020-10-20 10:30:00', 'USER010'),
('DVACT018', 'A011', 'Reduce Failed Emails to 0 - Quarter 4', 100, 95, 'Q4', '95.0%', NULL, '2020-11-20 10:40:00', 'USER010'),
('DVACT019', 'A012', 'Send Proposal to Potential Clients - Quarter 1', 30, 28, 'Q1', '93.3%', NULL, '2020-03-25 11:00:00', 'USER004'),
('DVACT020', 'A013', 'Appointment with Potential Clients - Quarter 2', 30, 27, 'Q2', '90.0%', NULL, '2020-06-25 11:15:00', 'USER010'),
('DVACT021', 'A014', 'Follow-up with Clients - Quarter 3', 30, 28, 'Q3', '93.3%', NULL, '2020-08-25 11:30:00', 'USER010'),
('DVACT022', 'A015', 'Quarterly Test Round 1', 40, 41, '', '102.5%', NULL, '2020-12-01 12:00:00', 'USER004'),
('DVACT023', 'A016', 'Self Development Workshop Session 1', 40, 42, '', '105.0%', NULL, '2020-12-05 12:15:00', 'USER004'),
('DVACT024', 'A017', 'Quarterly Test Round 2', 40, 40, '', '100.0%', NULL, '2020-12-10 12:30:00', 'USER019'),
('DVACT025', 'A018', 'Online Course Participation 1', 40, 42, '', '105.0%', NULL, '2020-12-12 12:45:00', 'USER019'),
('DVACT026', 'A019', 'Quarterly Test Round 3', 40, 43, '', '107.5%', NULL, '2020-12-15 13:00:00', 'USER010'),
('DVACT027', 'A020', 'Self Development Workshop Session 2', 40, 42, '', '105.0%', NULL, '2020-12-17 13:15:00', 'USER010');
