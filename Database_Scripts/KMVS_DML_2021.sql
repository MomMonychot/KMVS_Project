-- ======================
-- Use the database
-- ======================
USE KPICamfebaDB;

-- ======================
-- 1. KPIMaster for 2021
-- ======================
INSERT INTO KPIMaster (
    kpi_id, kpi, kpi_target, kpi_actual, assign_dept, kpi_pg,
    start_date, end_date, actual_date,
    remark_kpi, date_input_kpi, user_set_kpi
)
VALUES
('KPI101', 'Business Growth (Share 70% of total achievement)', 10500, 9800, 'DEPT03', '93.3%', '2021-01-01', '2021-12-30', '2021-12-20', 'Slight recovery despite market instability', '2021-01-04 00:00:00', 'USER001'),
('KPI102', 'Self Development & Workflow Process (Share 30% of total Achievement)', 5000, 5200, 'DEPT03', '104.0%', '2021-01-01', '2021-12-30', '2021-12-22', 'Consistent improvement in staff skills', '2021-01-04 00:00:00', 'USER001');

-- ======================
-- 2. MainActivities for 2021
-- ======================
INSERT INTO MainActivities (
    ma_id, kpi_id, ma, ma_target, ma_actual, ma_pg,
    remark_ma, date_input_ma, user_set_ma
)
VALUES
('MA101', 'KPI101', 'Target Membership Registration', 30, 28, '93.3%', 'Membership drop mitigated by new campaigns', '2021-01-28 00:00:00', 'USER019'),
('MA102', 'KPI101', 'Promotion Advertising', 9, 7, '77.8%', 'Reduced budget due to economic challenges', '2021-02-04 00:00:00', 'USER019'),
('MA103', 'KPI102', 'CAMFEBA Awareness Membership', 1000, 950, '95.0%', 'Some leads still not converted', '2021-01-21 00:00:00', 'USER019'),
('MA104', 'KPI102', 'CAMFEBA Awareness Sponsorship', 115, 105, '91.3%', 'Fewer sponsors due to market uncertainty', '2021-01-19 00:00:00', 'USER019'),
('MA105', 'KPI102', 'Self Development', 240, 250, '104.2%', 'Each person scored well in all 3 tests', '2021-01-12 00:00:00', 'USER019'); -- unchanged

-- ======================
-- 3. DivideMainActivities for 2021
-- ======================
INSERT INTO DivideMainActivities (
    dv_ma_id, ma_id, dv_ma, dv_ma_target, dv_ma_actual,
    assign_user, dv_ma_pg, remark_dv_ma, date_dv_ma, user_dv_ma
)
VALUES
('DVMA101', 'MA101', 'Target Membership Registration Part I', 15, 14, 'USER004', '93.3%', 'Sustained engagement in first half', '2021-02-01 08:00:00', 'USER019'),
('DVMA102', 'MA101', 'Target Membership Registration Part II', 15, 14, 'USER019', '93.3%', 'Consistent second half performance', '2021-02-01 08:15:00', 'USER019'),
('DVMA103', 'MA102', 'Promotion Advertising Part I', 4, 3, 'USER004', '75.0%', 'Campaigns scaled back Q1', '2021-02-01 08:30:00', 'USER019'),
('DVMA104', 'MA102', 'Promotion Advertising Part II', 5, 4, 'USER010', '80.0%', 'Budget restored partially Q2', '2021-02-01 08:45:00', 'USER019'),
('DVMA105', 'MA103', 'CAMFEBA Awareness Membership Part I', 400, 380, 'USER019', '95.0%', NULL, '2021-02-01 09:00:00', 'USER019'),
('DVMA106', 'MA103', 'CAMFEBA Awareness Membership Part II', 300, 290, 'USER004', '96.7%', NULL, '2021-02-01 09:15:00', 'USER004'),
('DVMA107', 'MA103', 'CAMFEBA Awareness Membership Part III', 300, 280, 'USER010', '93.3%', NULL, '2021-02-01 09:30:00', 'USER010'),
('DVMA108', 'MA104', 'CAMFEBA Awareness Sponsorship Part I', 58, 53, 'USER004', '91.4%', 'Fewer sponsor contacts Q1', '2021-02-01 09:45:00', 'USER004'),
('DVMA109', 'MA104', 'CAMFEBA Awareness Sponsorship Part II', 57, 52, 'USER010', '91.2%', 'Follow-up efforts ongoing', '2021-02-01 10:00:00', 'USER010'),
('DVMA110', 'MA105', 'Self Development Part I', 80, 83, 'USER004', '103.8%', 'Consistent achievement', '2021-02-01 10:15:00', 'USER004'), 
('DVMA111', 'MA105', 'Self Development Part II', 80, 82, 'USER019', '102.5%', 'Consistent achievement', '2021-02-01 10:30:00', 'USER019'), 
('DVMA112', 'MA105', 'Self Development Part III', 80, 85, 'USER010', '106.3%', 'Improved test scores', '2021-02-01 10:45:00', 'USER019');

-- ======================
-- 4. Activities for 2021 (Assigned to DVMA)
-- ======================
INSERT INTO Activities (
  act_id, dv_ma_id, act, act_target, act_actual, act_pg,
  remark_act, date_input_act, user_set_act
)
VALUES
('A101', 'DVMA101', 'Ordinary Member Entrance Fee', 9, 8, '88.9%', 'Slight increase expected in Q1', '2021-02-10 08:00:00', 'USER004'),
('A102', 'DVMA101', 'Association Member Entrance Fee', 6, 6, '100%', 'Steady association membership', '2021-02-10 08:15:00', 'USER004'),
('A103', 'DVMA102', 'Associate Member Entrance Fee', 15, 14, '93.3%', 'Growth expected in Q2-Q3', '2021-02-10 08:30:00', 'USER019'),
('A104', 'DVMA103', 'Logo Advertising on Website', 2, 2, '100%', 'Maintained contract', '2021-02-10 08:45:00', 'USER004'),
('A105', 'DVMA103', 'Newsletter Space', 1, 1, '100%', 'Reduced demand', '2021-02-10 09:00:00', 'USER004'),
('A106', 'DVMA104', 'Annual Report Space', 3, 2, '66.7%', 'Reduced sponsorship in annual report', '2021-02-10 09:15:00', 'USER010'),
('A107', 'DVMA105', 'Identify New Potential Members', 105, 100, '95.2%', 'Increased outreach efforts', '2021-02-10 09:30:00', 'USER019'),
('A108', 'DVMA106', 'Appointment with Potential Members', 100, 97, '97.0%', 'Slight improvement in appointments', '2021-02-10 09:45:00', 'USER004'),
('A109', 'DVMA107', 'Pilot Email to Potential Members', 105, 98, '93.3%', 'New mailing list added', '2021-02-10 10:00:00', 'USER010'),
('A110', 'DVMA107', 'Follow-up with Potential Members', 100, 96, '96.0%', NULL, '2021-02-10 10:15:00', 'USER010'),
('A111', 'DVMA107', 'Reduce Failed Emails to 0', 100, 96, '96.0%', 'Some bouncebacks remain', '2021-02-10 10:30:00', 'USER010'),
('A112', 'DVMA108', 'Send Proposal to Potential Clients', 32, 29, '90.6%', 'New clients slower in Q1', '2021-02-10 10:45:00', 'USER004'),
('A113', 'DVMA109', 'Appointment with Potential Clients', 28, 26, '92.9%', 'Client meetings fewer due to travel restrictions', '2021-02-10 11:00:00', 'USER010'),
('A114', 'DVMA109', 'Follow-up with Clients', 28, 27, '96.4%', 'Improved follow-ups', '2021-02-10 11:15:00', 'USER010'),
('A115', 'DVMA110', 'Quarterly Test', 40, 41, '102.5%', NULL, '2021-02-10 11:30:00', 'USER004'), -- unchanged
('A116', 'DVMA110', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2021-02-10 11:45:00', 'USER004'), -- unchanged
('A117', 'DVMA111', 'Quarterly Test', 40, 40, '100.0%', NULL, '2021-02-10 12:00:00', 'USER019'), -- unchanged
('A118', 'DVMA111', 'Online Course Participation', 40, 42, '105.0%', NULL, '2021-02-10 12:15:00', 'USER019'), -- unchanged
('A119', 'DVMA112', 'Quarterly Test', 40, 43, '107.5%', NULL, '2021-02-10 12:30:00', 'USER010'), -- unchanged
('A120', 'DVMA112', 'Self Development Workshop', 40, 42, '105.0%', NULL, '2021-02-10 12:45:00', 'USER010'); -- unchanged

-- ======================
-- 5. DivideActivities for 2021
-- ======================
INSERT INTO DivideActivities (
  dv_act_id, act_id, dv_act, dv_act_target, dv_act_actual,
  quarter, dv_act_pg, remark_dv_act, date_dv_act, user_dv_act
)
VALUES
('DVACT101', 'A101', 'Ordinary Member Entrance Fee - Quarter 1', 3, 3, 'Q1', '100%', 'Strong start in Q1', '2021-03-01 08:00:00', 'USER004'),
('DVACT102', 'A101', 'Ordinary Member Entrance Fee - Quarter 2', 2, 1, 'Q2', '50%', 'Challenging market in Q2', '2021-04-01 08:00:00', 'USER004'),
('DVACT103', 'A101', 'Ordinary Member Entrance Fee - Quarter 3', 2, 2, 'Q3', '100%', 'Recovery in Q3', '2021-07-01 08:00:00', 'USER004'),
('DVACT104', 'A101', 'Ordinary Member Entrance Fee - Quarter 4', 2, 2, 'Q4', '100%', 'Stable Q4', '2021-10-01 08:00:00', 'USER004'),
('DVACT105', 'A102', 'Association Member Entrance Fee - First Half', 3, 3, 'Q1', '100%', 'Strong first half', '2021-03-05 08:10:00', 'USER004'),
('DVACT106', 'A102', 'Association Member Entrance Fee - Second Half', 3, 3, 'Q3', '100%', 'Consistent second half', '2021-09-05 08:10:00', 'USER004'),
('DVACT107', 'A103', 'Associate Member Entrance Fee - First Half', 8, 7, 'Q2', '87.5%', 'Good growth in Q2', '2021-06-01 08:20:00', 'USER019'),
('DVACT108', 'A103', 'Associate Member Entrance Fee - Second Half', 7, 7, 'Q4', '100%', 'Strong Q4 finish', '2021-11-01 08:20:00', 'USER019'),
('DVACT109', 'A104', 'Logo Advertising on Website - Quarter 1', 1, 1, 'Q1', '100%', 'Contract maintained', '2021-03-10 09:00:00', 'USER004'),
('DVACT110', 'A104', 'Logo Advertising on Website - Quarter 2', 1, 1, 'Q2', '100%', 'Stable', '2021-06-10 09:00:00', 'USER004'),
('DVACT111', 'A105', 'Newsletter Space Advertising - Quarter 2', 1, 1, 'Q2', '100%', 'Stable', '2021-06-15 09:10:00', 'USER004'),
('DVACT112', 'A105', 'Newsletter Space Advertising - Quarter 3', 0, 0, 'Q3', '0%', 'Cancelled due to budget cuts', '2021-08-15 09:10:00', 'USER004'),
('DVACT113', 'A106', 'Annual Report Advertising - Quarter 4', 2, 2, 'Q4', '100%', 'Slightly reduced space', '2021-10-01 09:20:00', 'USER010'),
('DVACT114', 'A107', 'Identify New Potential Members - Quarter 1', 25, 24, 'Q1', '96.0%', 'Increased outreach efforts', '2021-03-20 10:00:00', 'USER019'),
('DVACT115', 'A108', 'Appointment with Potential Members - Quarter 2', 25, 24, 'Q2', '96.0%', 'Improved scheduling', '2021-06-20 10:10:00', 'USER004'),
('DVACT116', 'A109', 'Pilot Email to Potential Members - Quarter 3', 26, 25, 'Q3', '96.2%', 'Expanded mailing lists', '2021-08-20 10:20:00', 'USER010'),
('DVACT117', 'A110', 'Follow-up with Potential Members - Quarter 4', 24, 23, 'Q4', '95.8%', 'Some delays in follow-up', '2021-10-20 10:30:00', 'USER010'),
('DVACT118', 'A111', 'Reduce Failed Emails to 0 - Quarter 4', 26, 24, 'Q4', '92.3%', 'Bouncebacks remain', '2021-11-20 10:40:00', 'USER010'),
('DVACT119', 'A112', 'Send Proposal to Potential Clients - Quarter 1', 8, 7, 'Q1', '87.5%', 'Slower client response', '2021-03-25 11:00:00', 'USER004'),
('DVACT120', 'A113', 'Appointment with Potential Clients - Quarter 2', 7, 6, 'Q2', '85.7%', 'Travel restrictions persist', '2021-06-25 11:15:00', 'USER010'),
('DVACT121', 'A114', 'Follow-up with Clients - Quarter 3', 7, 7, 'Q3', '100%', 'Improved client engagement', '2021-08-25 11:30:00', 'USER010'),
('DVACT122', 'A115', 'Quarterly Test Round 1', 40, 41, '', '102.5%', NULL, '2021-12-01 12:00:00', 'USER004'), -- unchanged
('DVACT123', 'A116', 'Self Development Workshop Session 1', 40, 42, '', '105.0%', NULL, '2021-12-05 12:15:00', 'USER004'), -- unchanged
('DVACT124', 'A117', 'Quarterly Test Round 2', 40, 40, '', '100.0%', NULL, '2021-12-10 12:30:00', 'USER019'), -- unchanged
('DVACT125', 'A118', 'Online Course Participation 1', 40, 42, '', '105.0%', NULL, '2021-12-12 12:45:00', 'USER019'), -- unchanged
('DVACT126', 'A119', 'Quarterly Test Round 3', 40, 43, '', '107.5%', NULL, '2021-12-15 13:00:00', 'USER010'), -- unchanged
('DVACT127', 'A120', 'Self Development Workshop Session 2', 40, 42, '', '105.0%', NULL, '2021-12-17 13:15:00', 'USER010'); -- unchanged
