-- ======================
-- Use the database
-- ======================
USE KPICamfebaDB;

-- ======================
-- 1. KPIMaster for 2023
-- ======================
INSERT INTO KPIMaster (
    kpi_id, kpi, kpi_target, kpi_actual, assign_dept, kpi_pg,
    start_date, end_date, actual_date,
    remark_kpi, date_input_kpi, user_set_kpi
)
VALUES
('KPI301', 'Business Growth (Share 70% of total achievement)', 11000, 10200, 'DEPT03', '92.7%', '2023-01-01', '2023-12-30', '2023-12-20', 'Economic slowdown affected registration', '2023-01-04 00:00:00', 'USER001'),
('KPI302', 'Self Development & Workflow Process (Share 30% of total Achievement)', 5400, 5600, 'DEPT03', '103.7%', '2023-01-01', '2023-12-30', '2023-12-22', 'Training engagement was higher than planned', '2023-01-04 00:00:00', 'USER001');

-- ======================
-- 2. MainActivities for 2023
-- ======================
INSERT INTO MainActivities (
    ma_id, kpi_id, ma, ma_target, ma_actual, ma_pg,
    remark_ma, date_input_ma, user_set_ma
)
VALUES
('MA301', 'KPI301', 'Target Membership Registration', 32, 30, '93.8%', 'Improved early campaigns', '2023-01-28 00:00:00', 'USER019'),
('MA302', 'KPI301', 'Promotion Advertising', 12, 10, '83.3%', 'Less reach in Q3 digital ads', '2023-02-04 00:00:00', 'USER019'),
('MA303', 'KPI302', 'CAMFEBA Awareness Membership', 1100, 1050, '95.5%', 'Partnership leads decreased', '2023-01-21 00:00:00', 'USER019'),
('MA304', 'KPI302', 'CAMFEBA Awareness Sponsorship', 130, 122, '93.8%', 'New sponsor policy delayed start', '2023-01-19 00:00:00', 'USER019'),
('MA305', 'KPI302', 'Self Development', 240, 250, '104.2%', 'Consistently high performance', '2023-01-12 00:00:00', 'USER019');

-- ======================
-- 3. DivideMainActivities for 2023
-- ======================
INSERT INTO DivideMainActivities (
    dv_ma_id, ma_id, dv_ma, dv_ma_target, dv_ma_actual,
    assign_user, dv_ma_pg, remark_dv_ma, date_dv_ma, user_dv_ma
)
VALUES
('DVMA301', 'MA301', 'Target Membership Registration Part I', 16, 15, 'USER004', '93.8%', 'Solid response in early year', '2023-02-01 08:00:00', 'USER019'),
('DVMA302', 'MA301', 'Target Membership Registration Part II', 16, 15, 'USER019', '93.8%', 'Follow-up conversions improved', '2023-02-01 08:15:00', 'USER019'),
('DVMA303', 'MA302', 'Promotion Advertising Part I', 6, 5, 'USER004', '83.3%', 'New channel underperformed', '2023-02-01 08:30:00', 'USER019'),
('DVMA304', 'MA302', 'Promotion Advertising Part II', 6, 5, 'USER010', '83.3%', 'Budget changes limited ad volume', '2023-02-01 08:45:00', 'USER019'),
('DVMA305', 'MA303', 'CAMFEBA Awareness Membership Part I', 450, 430, 'USER019', '95.6%', NULL, '2023-02-01 09:00:00', 'USER019'),
('DVMA306', 'MA303', 'CAMFEBA Awareness Membership Part II', 350, 330, 'USER004', '94.3%', NULL, '2023-02-01 09:15:00', 'USER004'),
('DVMA307', 'MA303', 'CAMFEBA Awareness Membership Part III', 300, 290, 'USER010', '96.7%', NULL, '2023-02-01 09:30:00', 'USER010'),
('DVMA308', 'MA304', 'CAMFEBA Awareness Sponsorship Part I', 65, 60, 'USER004', '92.3%', 'Initial contact slower than expected', '2023-02-01 09:45:00', 'USER004'),
('DVMA309', 'MA304', 'CAMFEBA Awareness Sponsorship Part II', 65, 62, 'USER010', '95.4%', 'Catch-up actions successful', '2023-02-01 10:00:00', 'USER010'),
('DVMA310', 'MA305', 'Self Development Part I', 80, 83, 'USER004', '103.8%', 'Positive testing outcomes', '2023-02-01 10:15:00', 'USER004'),
('DVMA311', 'MA305', 'Self Development Part II', 80, 82, 'USER019', '102.5%', 'Stable progress', '2023-02-01 10:30:00', 'USER019'),
('DVMA312', 'MA305', 'Self Development Part III', 80, 85, 'USER010', '106.3%', 'Well-attended workshops', '2023-02-01 10:45:00', 'USER019');

-- ======================
-- 4. Activities for 2023 (Assigned to DVMA)
-- ======================
INSERT INTO Activities (
  act_id, dv_ma_id, act, act_target, act_actual, act_pg,
  remark_act, date_input_act, user_set_act
)
VALUES
('A301', 'DVMA301', 'Ordinary Member Entrance Fee', 9, 8, '88.9%', NULL, '2023-02-10 08:00:00', 'USER004'),
('A302', 'DVMA301', 'Association Member Entrance Fee', 7, 7, '100%', NULL, '2023-02-10 08:15:00', 'USER004'),
('A303', 'DVMA302', 'Associate Member Entrance Fee', 16, 15, '93.8%', NULL, '2023-02-10 08:30:00', 'USER019'),
('A304', 'DVMA303', 'Logo Advertising on Website', 3, 2, '66.7%', NULL, '2023-02-10 08:45:00', 'USER004'),
('A305', 'DVMA303', 'Newsletter Space', 3, 2, '66.7%', NULL, '2023-02-10 09:00:00', 'USER004'),
('A306', 'DVMA304', 'Annual Report Space', 3, 3, '100%', NULL, '2023-02-10 09:15:00', 'USER010'),
('A307', 'DVMA305', 'Identify New Potential Members', 160, 150, '93.8%', NULL, '2023-02-10 09:30:00', 'USER019'),
('A308', 'DVMA306', 'Appointment with Potential Members', 160, 155, '96.9%', NULL, '2023-02-10 09:45:00', 'USER004'),
('A309', 'DVMA307', 'Pilot Email to Potential Members', 150, 140, '93.3%', NULL, '2023-02-10 10:00:00', 'USER010'),
('A310', 'DVMA307', 'Follow-up with Potential Members', 150, 145, '96.7%', NULL, '2023-02-10 10:15:00', 'USER010'),
('A311', 'DVMA307', 'Reduce Failed Emails to 0', 150, 145, '96.7%', 'Still some bounces from legacy lists', '2023-02-10 10:30:00', 'USER010'),
('A312', 'DVMA308', 'Send Proposal to Potential Clients', 33, 31, '93.9%', NULL, '2023-02-10 10:45:00', 'USER004'),
('A313', 'DVMA309', 'Appointment with Potential Clients', 33, 31, '93.9%', NULL, '2023-02-10 11:00:00', 'USER010'),
('A314', 'DVMA309', 'Follow-up with Clients', 34, 33, '97.1%', NULL, '2023-02-10 11:15:00', 'USER010'),
('A315', 'DVMA310', 'Quarterly Test', 40, 41, '102.5%', NULL, '2023-02-10 11:30:00', 'USER004'),
('A316', 'DVMA310', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2023-02-10 11:45:00', 'USER004'),
('A317', 'DVMA311', 'Quarterly Test', 40, 40, '100.0%', NULL, '2023-02-10 12:00:00', 'USER019'),
('A318', 'DVMA311', 'Online Course Participation', 40, 42, '105.0%', NULL, '2023-02-10 12:15:00', 'USER019'),
('A319', 'DVMA312', 'Quarterly Test', 40, 43, '107.5%', NULL, '2023-02-10 12:30:00', 'USER010'),
('A320', 'DVMA312', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2023-02-10 12:45:00', 'USER010');

-- ======================
-- 5. DivideActivities for 2023
-- ======================
INSERT INTO DivideActivities (
  dv_act_id, act_id, dv_act, dv_act_target, dv_act_actual,
  quarter, dv_act_pg, remark_dv_act, date_dv_act, user_dv_act
)
VALUES
('DVACT301', 'A301', 'Ordinary Member Entrance Fee - Q1', 3, 2, 'Q1', '66.7%', NULL, '2023-03-01 08:00:00', 'USER004'),
('DVACT302', 'A301', 'Ordinary Member Entrance Fee - Q2', 2, 2, 'Q2', '100%', NULL, '2023-04-01 08:00:00', 'USER004'),
('DVACT303', 'A301', 'Ordinary Member Entrance Fee - Q3', 2, 2, 'Q3', '100%', NULL, '2023-07-01 08:00:00', 'USER004'),
('DVACT304', 'A301', 'Ordinary Member Entrance Fee - Q4', 2, 2, 'Q4', '100%', NULL, '2023-10-01 08:00:00', 'USER004'),
('DVACT305', 'A302', 'Association Member Entrance Fee - H1', 4, 4, 'Q1', '100%', NULL, '2023-03-05 08:10:00', 'USER004'),
('DVACT306', 'A302', 'Association Member Entrance Fee - H2', 3, 3, 'Q3', '100%', NULL, '2023-09-05 08:10:00', 'USER004'),
('DVACT307', 'A303', 'Associate Member Entrance Fee - H1', 8, 7, 'Q2', '87.5%', NULL, '2023-06-01 08:20:00', 'USER019'),
('DVACT308', 'A303', 'Associate Member Entrance Fee - H2', 8, 8, 'Q4', '100%', NULL, '2023-11-01 08:20:00', 'USER019'),
('DVACT309', 'A304', 'Logo Advertising on Website - Q1', 2, 1, 'Q1', '50.0%', NULL, '2023-03-10 09:00:00', 'USER004'),
('DVACT310', 'A304', 'Logo Advertising on Website - Q2', 1, 1, 'Q2', '100%', NULL, '2023-06-10 09:00:00', 'USER004'),
('DVACT311', 'A305', 'Newsletter Space Advertising - Q2', 2, 1, 'Q2', '50.0%', NULL, '2023-06-15 09:10:00', 'USER004'),
('DVACT312', 'A305', 'Newsletter Space Advertising - Q3', 1, 1, 'Q3', '100%', NULL, '2023-08-15 09:10:00', 'USER004'),
('DVACT313', 'A306', 'Annual Report Advertising - Q4', 3, 3, 'Q4', '100%', NULL, '2023-10-01 09:20:00', 'USER010'),
('DVACT314', 'A307', 'Identify New Potential Members - Q1', 80, 75, 'Q1', '93.8%', NULL, '2023-03-20 10:00:00', 'USER019'),
('DVACT315', 'A308', 'Appointment with Potential Members - Q2', 80, 78, 'Q2', '97.5%', NULL, '2023-06-20 10:10:00', 'USER004'),
('DVACT316', 'A309', 'Pilot Email to Potential Members - Q3', 75, 72, 'Q3', '96.0%', NULL, '2023-08-20 10:20:00', 'USER010'),
('DVACT317', 'A310', 'Follow-up with Potential Members - Q4', 75, 73, 'Q4', '97.3%', NULL, '2023-10-20 10:30:00', 'USER010'),
('DVACT318', 'A311', 'Reduce Failed Emails to 0 - Q4', 75, 72, 'Q4', '96.0%', 'Legacy contacts still an issue', '2023-11-20 10:40:00', 'USER010'),
('DVACT319', 'A312', 'Send Proposal to Clients - Q1', 17, 16, 'Q1', '94.1%', NULL, '2023-03-25 11:00:00', 'USER004'),
('DVACT320', 'A313', 'Appointment with Clients - Q2', 17, 16, 'Q2', '94.1%', NULL, '2023-06-25 11:15:00', 'USER010'),
('DVACT321', 'A314', 'Follow-up with Clients - Q3', 17, 17, 'Q3', '100.0%', NULL, '2023-08-25 11:30:00', 'USER010'),
('DVACT322', 'A315', 'Quarterly Test Round 1', 40, 41, '', '102.5%', NULL, '2023-12-01 12:00:00', 'USER004'),
('DVACT323', 'A316', 'Self Development Workshop Session 1', 40, 42, '', '105.0%', NULL, '2023-12-05 12:15:00', 'USER004'),
('DVACT324', 'A317', 'Quarterly Test Round 2', 40, 40, '', '100.0%', NULL, '2023-12-10 12:30:00', 'USER019'),
('DVACT325', 'A318', 'Online Course Participation 1', 40, 42, '', '105.0%', NULL, '2023-12-12 12:45:00', 'USER019'),
('DVACT326', 'A319', 'Quarterly Test Round 3', 40, 43, '', '107.5%', NULL, '2023-12-15 13:00:00', 'USER010'),
('DVACT327', 'A320', 'Self Development Workshop Session 2', 40, 42, '', '105.0%', NULL, '2023-12-17 13:15:00', 'USER010');

