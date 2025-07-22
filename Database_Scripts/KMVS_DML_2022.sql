-- ======================
-- Use the database
-- ======================
USE KPICamfebaDB;

-- ======================
-- 1. KPIMaster for 2022
-- ======================
INSERT INTO KPIMaster (
    kpi_id, kpi, kpi_target, kpi_actual, assign_dept, kpi_pg,
    start_date, end_date, actual_date,
    remark_kpi, date_input_kpi, user_set_kpi
)
VALUES
('KPI201', 'Business Growth (Share 70% of total achievement)', 11000, 10200, 'DEPT03', '92.7%', '2022-01-01', '2022-12-30', '2022-12-20', 'Growth slowed due to external risks', '2022-01-04 00:00:00', 'USER001'),
('KPI202', 'Self Development & Workflow Process (Share 30% of total Achievement)', 5000, 5200, 'DEPT03', '104.0%', '2022-01-01', '2022-12-30', '2022-12-22', 'Strong training participation', '2022-01-04 00:00:00', 'USER001');

-- ======================
-- 2. MainActivities for 2022
-- ======================
INSERT INTO MainActivities (
    ma_id, kpi_id, ma, ma_target, ma_actual, ma_pg,
    remark_ma, date_input_ma, user_set_ma
)
VALUES
('MA201', 'KPI201', 'Target Membership Registration', 30, 28, '93.3%', 'Stable membership base despite challenges', '2022-01-28 00:00:00', 'USER019'),
('MA202', 'KPI201', 'Promotion Advertising', 12, 10, '83.3%', 'Advertising optimized with smaller budget', '2022-02-04 00:00:00', 'USER019'),
('MA203', 'KPI202', 'CAMFEBA Awareness Membership', 1050, 1000, '95.2%', 'Strong membership engagement', '2022-01-21 00:00:00', 'USER019'),
('MA204', 'KPI202', 'CAMFEBA Awareness Sponsorship', 130, 120, '92.3%', 'New sponsors added in Q3', '2022-01-19 00:00:00', 'USER019'),
('MA205', 'KPI202', 'Self Development', 240, 250, '104.2%', 'Training goals maintained', '2022-01-12 00:00:00', 'USER019');

-- ======================
-- 3. DivideMainActivities for 2022
-- ======================
INSERT INTO DivideMainActivities (
    dv_ma_id, ma_id, dv_ma, dv_ma_target, dv_ma_actual,
    assign_user, dv_ma_pg, remark_dv_ma, date_dv_ma, user_dv_ma
)
VALUES
('DVMA201', 'MA201', 'Target Membership Registration Part I', 15, 14, 'USER004', '93.3%', 'Sustained engagement in first half', '2022-02-01 08:00:00', 'USER019'),
('DVMA202', 'MA201', 'Target Membership Registration Part II', 15, 14, 'USER019', '93.3%', 'Consistent second half performance', '2022-02-01 08:15:00', 'USER019'),
('DVMA203', 'MA202', 'Promotion Advertising Part I', 6, 5, 'USER004', '83.3%', 'Campaigns focused on digital ads', '2022-02-01 08:30:00', 'USER019'),
('DVMA204', 'MA202', 'Promotion Advertising Part II', 6, 5, 'USER010', '83.3%', 'Q2 advertising budget restored', '2022-02-01 08:45:00', 'USER019'),
('DVMA205', 'MA203', 'CAMFEBA Awareness Membership Part I', 420, 400, 'USER019', '95.2%', NULL, '2022-02-01 09:00:00', 'USER019'),
('DVMA206', 'MA203', 'CAMFEBA Awareness Membership Part II', 320, 300, 'USER004', '93.8%', NULL, '2022-02-01 09:15:00', 'USER004'),
('DVMA207', 'MA203', 'CAMFEBA Awareness Membership Part III', 310, 300, 'USER010', '96.8%', NULL, '2022-02-01 09:30:00', 'USER010'),
('DVMA208', 'MA204', 'CAMFEBA Awareness Sponsorship Part I', 65, 60, 'USER004', '92.3%', 'Sponsor contacts slightly increased', '2022-02-01 09:45:00', 'USER004'),
('DVMA209', 'MA204', 'CAMFEBA Awareness Sponsorship Part II', 65, 60, 'USER010', '92.3%', 'Follow-up efforts successful', '2022-02-01 10:00:00', 'USER010'),
('DVMA210', 'MA205', 'Self Development Part I', 80, 83, 'USER004', '103.8%', 'Consistent achievement', '2022-02-01 10:15:00', 'USER004'),
('DVMA211', 'MA205', 'Self Development Part II', 80, 82, 'USER019', '102.5%', 'Consistent achievement', '2022-02-01 10:30:00', 'USER019'),
('DVMA212', 'MA205', 'Self Development Part III', 80, 85, 'USER010', '106.3%', 'Improved test scores', '2022-02-01 10:45:00', 'USER019');

-- ======================
-- 4. Activities for 2022 (Assigned to DVMA201–DVMA212)
-- ======================
INSERT INTO Activities (
  act_id, dv_ma_id, act, act_target, act_actual, act_pg,
  remark_act, date_input_act, user_set_act
)
VALUES
('A201', 'DVMA201', 'Ordinary Member Entrance Fee', 9, 8, '88.9%', NULL, '2022-02-10 08:00:00', 'USER004'),
('A202', 'DVMA201', 'Association Member Entrance Fee', 6, 6, '100.0%', NULL, '2022-02-10 08:15:00', 'USER004'),
('A203', 'DVMA202', 'Associate Member Entrance Fee', 15, 14, '93.3%', NULL, '2022-02-10 08:30:00', 'USER019'),
('A204', 'DVMA203', 'Logo Advertising on Website', 3, 3, '100.0%', NULL, '2022-02-10 08:45:00', 'USER004'),
('A205', 'DVMA203', 'Newsletter Space', 3, 2, '66.7%', NULL, '2022-02-10 09:00:00', 'USER004'),
('A206', 'DVMA204', 'Annual Report Space', 3, 3, '100.0%', NULL, '2022-02-10 09:15:00', 'USER010'),
('A207', 'DVMA205', 'Identify New Potential Members', 110, 105, '95.5%', NULL, '2022-02-10 09:30:00', 'USER019'),
('A208', 'DVMA206', 'Appointment with Potential Members', 110, 104, '94.5%', NULL, '2022-02-10 09:45:00', 'USER004'),
('A209', 'DVMA207', 'Pilot Email to Potential Members', 100, 96, '96.0%', NULL, '2022-02-10 10:00:00', 'USER010'),
('A210', 'DVMA207', 'Follow-up with Potential Members', 100, 95, '95.0%', NULL, '2022-02-10 10:15:00', 'USER010'),
('A211', 'DVMA207', 'Reduce Failed Emails to 0', 100, 94, '94.0%', 'Improved email list cleanup', '2022-02-10 10:30:00', 'USER010'),
('A212', 'DVMA208', 'Send Proposal to Potential Clients', 33, 31, '93.9%', NULL, '2022-02-10 10:45:00', 'USER004'),
('A213', 'DVMA209', 'Appointment with Potential Clients', 33, 30, '90.9%', NULL, '2022-02-10 11:00:00', 'USER010'),
('A214', 'DVMA209', 'Follow-up with Clients', 34, 31, '91.2%', NULL, '2022-02-10 11:15:00', 'USER010'),
('A215', 'DVMA210', 'Quarterly Test', 40, 41, '102.5%', NULL, '2022-02-10 11:30:00', 'USER004'),
('A216', 'DVMA210', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2022-02-10 11:45:00', 'USER004'),
('A217', 'DVMA211', 'Quarterly Test', 40, 40, '100.0%', NULL, '2022-02-10 12:00:00', 'USER019'),
('A218', 'DVMA211', 'Online Course Participation', 40, 42, '105.0%', NULL, '2022-02-10 12:15:00', 'USER019'),
('A219', 'DVMA212', 'Quarterly Test', 40, 43, '107.5%', NULL, '2022-02-10 12:30:00', 'USER010'),
('A220', 'DVMA212', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2022-02-10 12:45:00', 'USER010');

-- ======================
-- 5. DivideActivities for 2022 (Linked to act_id only)
-- ======================
INSERT INTO DivideActivities (
  dv_act_id, act_id, dv_act, dv_act_target, dv_act_actual,
  quarter, dv_act_pg, remark_dv_act, date_dv_act, user_dv_act
)
VALUES
('DVACT201', 'A201', 'Ordinary Member Entrance Fee - Q1', 2, 2, 'Q1', '100%', NULL, '2022-03-01 08:00:00', 'USER004'),
('DVACT202', 'A201', 'Ordinary Member Entrance Fee - Q2', 2, 1, 'Q2', '50%', NULL, '2022-04-01 08:00:00', 'USER004'),
('DVACT203', 'A201', 'Ordinary Member Entrance Fee - Q3', 2, 2, 'Q3', '100%', NULL, '2022-07-01 08:00:00', 'USER004'),
('DVACT204', 'A201', 'Ordinary Member Entrance Fee - Q4', 3, 3, 'Q4', '100%', NULL, '2022-10-01 08:00:00', 'USER004'),
('DVACT205', 'A202', 'Association Member Entrance Fee - H1', 3, 3, 'Q1', '100%', NULL, '2022-03-05 08:10:00', 'USER004'),
('DVACT206', 'A202', 'Association Member Entrance Fee - H2', 3, 3, 'Q3', '100%', NULL, '2022-09-05 08:10:00', 'USER004'),
('DVACT207', 'A203', 'Associate Member Entrance Fee - H1', 8, 7, 'Q2', '87.5%', NULL, '2022-06-01 08:20:00', 'USER019'),
('DVACT208', 'A203', 'Associate Member Entrance Fee - H2', 7, 7, 'Q4', '100%', NULL, '2022-11-01 08:20:00', 'USER019'),
('DVACT209', 'A204', 'Logo Advertising - Q1', 1, 1, 'Q1', '100%', NULL, '2022-03-10 09:00:00', 'USER004'),
('DVACT210', 'A204', 'Logo Advertising - Q2', 2, 2, 'Q2', '100%', NULL, '2022-06-10 09:00:00', 'USER004'),
('DVACT211', 'A205', 'Newsletter Space - Q2', 2, 1, 'Q2', '50%', NULL, '2022-06-15 09:10:00', 'USER004'),
('DVACT212', 'A205', 'Newsletter Space - Q3', 1, 1, 'Q3', '100%', NULL, '2022-08-15 09:10:00', 'USER004'),
('DVACT213', 'A206', 'Annual Report Advertising - Q4', 3, 3, 'Q4', '100%', NULL, '2022-10-01 09:20:00', 'USER010'),
('DVACT214', 'A207', 'Identify New Potential Members - Q1', 110, 105, 'Q1', '95.5%', NULL, '2022-03-20 10:00:00', 'USER019'),
('DVACT215', 'A208', 'Appointment with Potential Members - Q2', 110, 104, 'Q2', '94.5%', NULL, '2022-06-20 10:10:00', 'USER004'),
('DVACT216', 'A209', 'Pilot Email to Potential Members - Q3', 100, 96, 'Q3', '96.0%', NULL, '2022-08-20 10:20:00', 'USER010'),
('DVACT217', 'A210', 'Follow-up with Potential Members - Q4', 100, 95, 'Q4', '95.0%', NULL, '2022-10-20 10:30:00', 'USER010'),
('DVACT218', 'A211', 'Reduce Failed Emails - Q4', 100, 94, 'Q4', '94.0%', 'List cleaning improved delivery', '2022-11-20 10:40:00', 'USER010'),
('DVACT219', 'A212', 'Send Proposal to Potential Clients - Q1', 33, 31, 'Q1', '93.9%', NULL, '2022-03-25 11:00:00', 'USER004'),
('DVACT220', 'A213', 'Appointment with Potential Clients - Q2', 33, 30, 'Q2', '90.9%', NULL, '2022-06-25 11:15:00', 'USER010'),
('DVACT221', 'A214', 'Follow-up with Clients - Q3', 34, 31, 'Q3', '91.2%', NULL, '2022-08-25 11:30:00', 'USER010'),
('DVACT222', 'A215', 'Quarterly Test Round 1', 40, 41, '', '102.5%', NULL, '2022-12-01 12:00:00', 'USER004'),
('DVACT223', 'A216', 'Self Development Workshop 1', 40, 42, '', '105.0%', NULL, '2022-12-05 12:15:00', 'USER004'),
('DVACT224', 'A217', 'Quarterly Test Round 2', 40, 40, '', '100.0%', NULL, '2022-12-10 12:30:00', 'USER019'),
('DVACT225', 'A218', 'Online Course Participation 1', 40, 42, '', '105.0%', NULL, '2022-12-12 12:45:00', 'USER019'),
('DVACT226', 'A219', 'Quarterly Test Round 3', 40, 43, '', '107.5%', NULL, '2022-12-15 13:00:00', 'USER010'),
('DVACT227', 'A220', 'Self Development Workshop 2', 40, 42, '', '105.0%', NULL, '2022-12-17 13:15:00', 'USER010');
