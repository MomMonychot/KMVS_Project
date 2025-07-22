-- ======================
-- Use the database
-- ======================
USE KPICamfebaDB;

-- ======================
-- 1. KPIMaster for 2024
-- ======================
INSERT INTO KPIMaster (
    kpi_id, kpi, kpi_target, kpi_actual, assign_dept, kpi_pg,
    start_date, end_date, actual_date,
    remark_kpi, date_input_kpi, user_set_kpi
)
VALUES
('KPI401', 'Business Growth (Share 70% of total achievement)', 11500, 10800, 'DEPT03', '93.9%', '2024-01-01', '2024-12-30', '2024-12-20', 'Delayed partner engagement early Q2', '2024-01-04 00:00:00', 'USER001'),
('KPI402', 'Self Development & Workflow Process (Share 30% of total Achievement)', 5600, 5800, 'DEPT03', '103.6%', '2024-01-01', '2024-12-30', '2024-12-22', 'High participation in mentoring program', '2024-01-04 00:00:00', 'USER001');

-- ======================
-- 2. MainActivities for 2024
-- ======================
INSERT INTO MainActivities (
    ma_id, kpi_id, ma, ma_target, ma_actual, ma_pg,
    remark_ma, date_input_ma, user_set_ma
)
VALUES
('MA401', 'KPI401', 'Target Membership Registration', 34, 32, '94.1%', 'Campaign adjustments helped mid-year', '2024-01-28 00:00:00', 'USER019'),
('MA402', 'KPI401', 'Promotion Advertising', 13, 11, '84.6%', 'Reduced budget from Q1 to Q3', '2024-02-04 00:00:00', 'USER019'),
('MA403', 'KPI402', 'CAMFEBA Awareness Membership', 1150, 1090, '94.8%', 'New member outreach conversion dropped', '2024-01-21 00:00:00', 'USER019'),
('MA404', 'KPI402', 'CAMFEBA Awareness Sponsorship', 140, 130, '92.9%', 'Delay in onboarding new sponsors', '2024-01-19 00:00:00', 'USER019'),
('MA405', 'KPI402', 'Self Development', 240, 250, '104.2%', 'Consistently high engagement across staff', '2024-01-12 00:00:00', 'USER019');

-- ======================
-- 3. DivideMainActivities for 2024
-- ======================
INSERT INTO DivideMainActivities (
    dv_ma_id, ma_id, dv_ma, dv_ma_target, dv_ma_actual,
    assign_user, dv_ma_pg, remark_dv_ma, date_dv_ma, user_dv_ma
)
VALUES
('DVMA401', 'MA401', 'Target Membership Registration Part I', 17, 16, 'USER004', '94.1%', 'First half slower than forecasted', '2024-02-01 08:00:00', 'USER019'),
('DVMA402', 'MA401', 'Target Membership Registration Part II', 17, 16, 'USER019', '94.1%', 'Increased close rate helped balance Q4', '2024-02-01 08:15:00', 'USER019'),
('DVMA403', 'MA402', 'Promotion Advertising Part I', 6, 5, 'USER004', '83.3%', 'New channels underperformed', '2024-02-01 08:30:00', 'USER019'),
('DVMA404', 'MA402', 'Promotion Advertising Part II', 7, 6, 'USER010', '85.7%', 'Budget reallocation slowed Q2 spend', '2024-02-01 08:45:00', 'USER019'),
('DVMA405', 'MA403', 'CAMFEBA Awareness Membership Part I', 450, 430, 'USER019', '95.6%', NULL, '2024-02-01 09:00:00', 'USER019'),
('DVMA406', 'MA403', 'CAMFEBA Awareness Membership Part II', 400, 370, 'USER004', '92.5%', NULL, '2024-02-01 09:15:00', 'USER004'),
('DVMA407', 'MA403', 'CAMFEBA Awareness Membership Part III', 300, 290, 'USER010', '96.7%', NULL, '2024-02-01 09:30:00', 'USER010'),
('DVMA408', 'MA404', 'CAMFEBA Awareness Sponsorship Part I', 70, 65, 'USER004', '92.9%', 'Fewer events in early Q1', '2024-02-01 09:45:00', 'USER004'),
('DVMA409', 'MA404', 'CAMFEBA Awareness Sponsorship Part II', 70, 65, 'USER010', '92.9%', 'High renewal rate offset new signups', '2024-02-01 10:00:00', 'USER010'),
('DVMA410', 'MA405', 'Self Development Part I', 80, 83, 'USER004', '103.8%', 'Quarterly tests passed strongly', '2024-02-01 10:15:00', 'USER004'),
('DVMA411', 'MA405', 'Self Development Part II', 80, 82, 'USER019', '102.5%', 'Progress in e-learning tracked well', '2024-02-01 10:30:00', 'USER019'),
('DVMA412', 'MA405', 'Self Development Part III', 80, 85, 'USER010', '106.3%', 'High turnout in final workshop', '2024-02-01 10:45:00', 'USER019');

-- ======================
-- 4. Activities for 2024 (Assigned to DVMA)
-- ======================
INSERT INTO Activities (
  act_id, dv_ma_id, act, act_target, act_actual, act_pg,
  remark_act, date_input_act, user_set_act
)
VALUES
('A401', 'DVMA401', 'Ordinary Member Entrance Fee', 9, 8, '88.9%', NULL, '2024-02-10 08:00:00', 'USER004'),
('A402', 'DVMA401', 'Association Member Entrance Fee', 8, 8, '100%', NULL, '2024-02-10 08:15:00', 'USER004'),
('A403', 'DVMA402', 'Associate Member Entrance Fee', 17, 16, '94.1%', NULL, '2024-02-10 08:30:00', 'USER019'),
('A404', 'DVMA403', 'Logo Advertising on Website', 3, 2, '66.7%', NULL, '2024-02-10 08:45:00', 'USER004'),
('A405', 'DVMA403', 'Newsletter Space', 3, 3, '100%', NULL, '2024-02-10 09:00:00', 'USER004'),
('A406', 'DVMA404', 'Annual Report Space', 4, 3, '75.0%', NULL, '2024-02-10 09:15:00', 'USER010'),
('A407', 'DVMA405', 'Identify New Potential Members', 150, 140, '93.3%', NULL, '2024-02-10 09:30:00', 'USER019'),
('A408', 'DVMA406', 'Appointment with Potential Members', 130, 120, '92.3%', NULL, '2024-02-10 09:45:00', 'USER004'),
('A409', 'DVMA407', 'Pilot Email to Potential Members', 100, 98, '98.0%', NULL, '2024-02-10 10:00:00', 'USER010'),
('A410', 'DVMA407', 'Follow-up with Potential Members', 100, 96, '96.0%', NULL, '2024-02-10 10:15:00', 'USER010'),
('A411', 'DVMA407', 'Reduce Failed Emails to 0', 100, 96, '96.0%', 'Spam filter issues improved', '2024-02-10 10:30:00', 'USER010'),
('A412', 'DVMA408', 'Send Proposal to Potential Clients', 35, 33, '94.3%', NULL, '2024-02-10 10:45:00', 'USER004'),
('A413', 'DVMA409', 'Appointment with Potential Clients', 35, 33, '94.3%', NULL, '2024-02-10 11:00:00', 'USER010'),
('A414', 'DVMA409', 'Follow-up with Clients', 35, 34, '97.1%', NULL, '2024-02-10 11:15:00', 'USER010'),
('A415', 'DVMA410', 'Quarterly Test', 40, 41, '102.5%', NULL, '2024-02-10 11:30:00', 'USER004'),
('A416', 'DVMA410', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2024-02-10 11:45:00', 'USER004'),
('A417', 'DVMA411', 'Quarterly Test', 40, 40, '100.0%', NULL, '2024-02-10 12:00:00', 'USER019'),
('A418', 'DVMA411', 'Online Course Participation', 40, 42, '105.0%', NULL, '2024-02-10 12:15:00', 'USER019'),
('A419', 'DVMA412', 'Quarterly Test', 40, 43, '107.5%', NULL, '2024-02-10 12:30:00', 'USER010'),
('A420', 'DVMA412', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2024-02-10 12:45:00', 'USER010');

-- ======================
-- 5. DivideActivities for 2024
-- ======================
INSERT INTO DivideActivities (
  dv_act_id, act_id, dv_act, dv_act_target, dv_act_actual,
  quarter, dv_act_pg, remark_dv_act, date_dv_act, user_dv_act
)
VALUES
('DVACT401', 'A401', 'Ordinary Member Entrance Fee - Q1', 3, 2, 'Q1', '66.7%', NULL, '2024-03-01 08:00:00', 'USER004'),
('DVACT402', 'A401', 'Ordinary Member Entrance Fee - Q2', 2, 2, 'Q2', '100%', NULL, '2024-04-01 08:00:00', 'USER004'),
('DVACT403', 'A401', 'Ordinary Member Entrance Fee - Q3', 2, 2, 'Q3', '100%', NULL, '2024-07-01 08:00:00', 'USER004'),
('DVACT404', 'A401', 'Ordinary Member Entrance Fee - Q4', 2, 2, 'Q4', '100%', NULL, '2024-10-01 08:00:00', 'USER004'),
('DVACT405', 'A402', 'Association Member Entrance Fee - H1', 4, 4, 'Q1', '100%', NULL, '2024-03-05 08:10:00', 'USER004'),
('DVACT406', 'A402', 'Association Member Entrance Fee - H2', 4, 4, 'Q3', '100%', NULL, '2024-09-05 08:10:00', 'USER004'),
('DVACT407', 'A403', 'Associate Member Entrance Fee - H1', 8, 7, 'Q2', '87.5%', NULL, '2024-06-01 08:20:00', 'USER019'),
('DVACT408', 'A403', 'Associate Member Entrance Fee - H2', 9, 9, 'Q4', '100%', NULL, '2024-11-01 08:20:00', 'USER019'),
('DVACT409', 'A404', 'Logo Advertising on Website - Q1', 2, 1, 'Q1', '50.0%', NULL, '2024-03-10 09:00:00', 'USER004'),
('DVACT410', 'A404', 'Logo Advertising on Website - Q2', 1, 1, 'Q2', '100%', NULL, '2024-06-10 09:00:00', 'USER004'),
('DVACT411', 'A405', 'Newsletter Space Advertising - Q2', 2, 2, 'Q2', '100%', NULL, '2024-06-15 09:10:00', 'USER004'),
('DVACT412', 'A405', 'Newsletter Space Advertising - Q3', 1, 1, 'Q3', '100%', NULL, '2024-08-15 09:10:00', 'USER004'),
('DVACT413', 'A406', 'Annual Report Advertising - Q4', 4, 3, 'Q4', '75.0%', NULL, '2024-10-01 09:20:00', 'USER010'),
('DVACT414', 'A407', 'Identify New Potential Members - Q1', 80, 76, 'Q1', '95.0%', NULL, '2024-03-20 10:00:00', 'USER019'),
('DVACT415', 'A408', 'Appointment with Potential Members - Q2', 70, 67, 'Q2', '95.7%', NULL, '2024-06-20 10:10:00', 'USER004'),
('DVACT416', 'A409', 'Pilot Email to Potential Members - Q3', 50, 49, 'Q3', '98.0%', NULL, '2024-08-20 10:20:00', 'USER010'),
('DVACT417', 'A410', 'Follow-up with Potential Members - Q4', 50, 47, 'Q4', '94.0%', NULL, '2024-10-20 10:30:00', 'USER010'),
('DVACT418', 'A411', 'Reduce Failed Emails to 0 - Q4', 100, 96, 'Q4', '96.0%', 'Spam filter tuning improved delivery', '2024-11-20 10:40:00', 'USER010'),
('DVACT419', 'A412', 'Send Proposal to Clients - Q1', 17, 16, 'Q1', '94.1%', NULL, '2024-03-25 11:00:00', 'USER004'),
('DVACT420', 'A413', 'Appointment with Clients - Q2', 18, 17, 'Q2', '94.4%', NULL, '2024-06-25 11:15:00', 'USER010'),
('DVACT421', 'A414', 'Follow-up with Clients - Q3', 17, 17, 'Q3', '100.0%', NULL, '2024-08-25 11:30:00', 'USER010'),
('DVACT422', 'A415', 'Quarterly Test Round 1', 40, 41, '', '102.5%', NULL, '2024-12-01 12:00:00', 'USER004'),
('DVACT423', 'A416', 'Self Development Workshop Session 1', 40, 42, '', '105.0%', NULL, '2024-12-05 12:15:00', 'USER004'),
('DVACT424', 'A417', 'Quarterly Test Round 2', 40, 40, '', '100.0%', NULL, '2024-12-10 12:30:00', 'USER019'),
('DVACT425', 'A418', 'Online Course Participation 1', 40, 42, '', '105.0%', NULL, '2024-12-12 12:45:00', 'USER019'),
('DVACT426', 'A419', 'Quarterly Test Round 3', 40, 43, '', '107.5%', NULL, '2024-12-15 13:00:00', 'USER010'),
('DVACT427', 'A420', 'Self Development Workshop Session 2', 40, 42, '', '105.0%', NULL, '2024-12-17 13:15:00', 'USER010');
