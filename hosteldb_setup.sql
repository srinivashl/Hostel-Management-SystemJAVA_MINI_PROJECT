-- ═══════════════════════════════════════════════════════════
--   HOSTEL MANAGEMENT SYSTEM – Database Setup Script
--   Run this in MySQL Workbench or MySQL CLI before deploying
-- ═══════════════════════════════════════════════════════════

CREATE DATABASE IF NOT EXISTS hosteldb;
USE hosteldb;

DROP TABLE IF EXISTS HostelStudents;

CREATE TABLE HostelStudents (
    StudentID     INT            PRIMARY KEY,
    StudentName   VARCHAR(100)   NOT NULL,
    RoomNumber    VARCHAR(10)    NOT NULL,
    AdmissionDate DATE           NOT NULL,
    FeesPaid      DECIMAL(10,2)  DEFAULT 0.00,
    PendingFees   DECIMAL(10,2)  DEFAULT 0.00
);

-- Sample Data
INSERT INTO HostelStudents VALUES
(1001, 'Arjun Sharma',    'A-101', '2024-06-01', 25000.00, 5000.00),
(1002, 'Priya Mehta',     'A-102', '2024-06-15', 30000.00, 0.00),
(1003, 'Rahul Verma',     'B-201', '2024-07-01', 20000.00, 10000.00),
(1004, 'Sneha Nair',      'A-101', '2024-07-10', 30000.00, 0.00),
(1005, 'Vikram Patel',    'B-202', '2024-08-01', 15000.00, 15000.00),
(1006, 'Divya Krishnan',  'C-301', '2024-08-20', 30000.00, 0.00),
(1007, 'Amit Joshi',      'C-302', '2024-09-01', 25000.00, 5000.00);

SELECT * FROM HostelStudents;
alter table HostelStudents modify StudentID int auto_increment;

