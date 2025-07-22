-- drop database KPICamfebaDB;
-- Create database
CREATE DATABASE IF NOT EXISTS KPICamfebaDB;
USE KPICamfebaDB;

-- Table: Positions
CREATE TABLE Positions (
    position_id VARCHAR(10) PRIMARY KEY,
    position_name VARCHAR(100) NOT NULL,
    comment_position TEXT
);

-- Table: Departments
CREATE TABLE Departments (
    dept_id VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL,
    comment_dept TEXT
);

-- Table: Users
CREATE TABLE Users (
    user_id VARCHAR(10) PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    position_id VARCHAR(10),
    dept_id VARCHAR(10),
    start_work_date DATE,
    end_work_date DATE,
    comment_user TEXT,
    FOREIGN KEY (position_id) REFERENCES Positions(position_id),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Table: KPIMaster
CREATE TABLE KPIMaster (
    kpi_id VARCHAR(10) PRIMARY KEY,
    kpi TEXT NOT NULL,
    kpi_target INT,
    kpi_actual INT,
    assign_dept VARCHAR(10),
    start_date DATE,
    end_date DATE,
    actual_date DATE,
    kpi_pg VARCHAR(20),
    remark_kpi TEXT,
    date_input_kpi DATE,
    user_set_kpi VARCHAR(10),
    FOREIGN KEY (assign_dept) REFERENCES Departments(dept_id),
    FOREIGN KEY (user_set_kpi) REFERENCES Users(user_id)
);

-- Table: MainActivities
CREATE TABLE MainActivities (
    ma_id VARCHAR(10) PRIMARY KEY,
    kpi_id VARCHAR(10),
    ma TEXT NOT NULL,
    ma_target INT,
    ma_actual INT,
    ma_pg VARCHAR(20),
    remark_ma TEXT,
    date_input_ma DATE,
    user_set_ma VARCHAR(10),
    FOREIGN KEY (kpi_id) REFERENCES KPIMaster(kpi_id),
    FOREIGN KEY (user_set_ma) REFERENCES Users(user_id)
);

-- Table: DivideMainActivities
CREATE TABLE DivideMainActivities (
    dv_ma_id VARCHAR(10) PRIMARY KEY,
    ma_id VARCHAR(10),
    dv_ma TEXT NOT NULL,
    dv_ma_target INT,
    dv_ma_actual INT,
    assign_user VARCHAR(10),
    dv_ma_pg VARCHAR(20),
    remark_dv_ma TEXT,
    date_dv_ma DATE,
    user_dv_ma VARCHAR(10),
    FOREIGN KEY (ma_id) REFERENCES MainActivities(ma_id),
    FOREIGN KEY (assign_user) REFERENCES Users(user_id),
    FOREIGN KEY (user_dv_ma) REFERENCES Users(user_id)
);

-- Table: Activities
CREATE TABLE Activities (
    act_id VARCHAR(10) PRIMARY KEY,
    dv_ma_id VARCHAR(10),
    act TEXT NOT NULL,
    act_target INT,
    act_actual INT,
    act_pg VARCHAR(20),
    remark_act TEXT,
    date_input_act DATE,
    user_set_act VARCHAR(10),
    FOREIGN KEY (dv_ma_id) REFERENCES DivideMainActivities(dv_ma_id),
    FOREIGN KEY (user_set_act) REFERENCES Users(user_id)
);

-- Table: DivideActivities
CREATE TABLE DivideActivities (
    dv_act_id VARCHAR(10) PRIMARY KEY,
    act_id VARCHAR(10),
    dv_act TEXT NOT NULL,
    dv_act_target INT,
    dv_act_actual INT,
    quarter VARCHAR(10),
    dv_act_pg VARCHAR(20),
    remark_dv_act TEXT,
    date_dv_act DATE,
    user_dv_act VARCHAR(10),
    FOREIGN KEY (act_id) REFERENCES Activities(act_id),
    FOREIGN KEY (user_dv_act) REFERENCES Users(user_id)
);

-- Table: Tasks
CREATE TABLE Tasks (
    task_id VARCHAR(15) PRIMARY KEY,
    dv_act_id VARCHAR(10),
    task TEXT NOT NULL,
    do_time TIME,
    duration INT,
    session VARCHAR(20),
    status VARCHAR(50),
    remark_task TEXT,
    date_input_task DATE,
    user_set_task VARCHAR(10),
    FOREIGN KEY (dv_act_id) REFERENCES DivideActivities(dv_act_id),
    FOREIGN KEY (user_set_task) REFERENCES Users(user_id)
);

ALTER TABLE KPIMaster ADD unit_type VARCHAR(50);

