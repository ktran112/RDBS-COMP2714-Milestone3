-- Seed data for term table
INSERT INTO term
    ( term_code, name,
      start_date, end_date)
VALUES
    ( '202510', 'Winter 2025',
      '1/6/2025', '4/11/2025'),

    ( '202520', 'Spring/Summer 2025',
      '4/28/2025', '8/8/2025'),

    ( '202530', 'Fall 2025',
      '9/2/2025', '12/12/2025'),

    ( '202540', 'Winter 2026',
      '2026-01-05', '2026-04-10'),

    ( '202550', 'Spring/Summer 2026',
      '2026-04-27', '2026-08-07');

-- Seed data for course table
INSERT INTO course
( course_code,
  title,
  credits)
VALUES
    ( 'COMP2714',
      'Relational Database Systems',
      3),

    ( 'COMP1630',
      'Database Design',
      3),

    ( 'COMP1510',
      'Programming Methods',
      4),

    ( 'COMP1537',
      'Web Development 1',
      4),

    ( 'COMP1712',
      'Business Analysis and Systems Design',
      3);

-- Seed data for location table
INSERT INTO location
( location_code, location_campus,
  location_building, location_room)
VALUES
    ( 'BBY-SW01-3460', 'BBY',
      'SW01', '3460'),

    ( 'BBY-SW01-3465', 'BBY',
      'SW01', '3465'),

    ( 'BBY-SW03-2605', 'BBY',
      'SW03', '2605'),

    ( 'BBY-SE12-101', 'BBY',
      'SE12', '101'),

    ( 'DTC-310', 'DTC',
      NULL, '310'),

    ( 'DTC-318', 'DTC',
      NULL, '318');

-- Seed data for set table
INSERT INTO set
    ( set_letter, campus, creation_term)
VALUES
    ( 'A', 'BBY', '202530'),

    ( 'B', 'BBY', '202530'),

    ( 'C', 'BBY', '202530'),

    ( 'D', 'BBY', '202530'),

    ( 'E', 'DTC', '202530'),

    ( 'F', 'DTC', '202530');

-- Seed data for user table
INSERT INTO users
    ( user_id, display_name,
      role, email)
VALUES
    ( 'u_instructor', 'Maryam Khezrzadeh',
      'instructor', 'mkhezrzadeh@bcit.ca'),

    ( 'u_ta1', 'Daniel Saavedra',
      'ta', 'dsaavedra@bcit.ca'),

    ( 'u_system', 'Lab Tracker',
      'system', 'noreply@labtracker.local'),

    ( 'u_ta2', 'Priya Nair',
      'ta', 'pnair@bcit.ca'),

    ( 'u_ta3', 'Jason Lee',
      'ta', 'jlee@bcit.ca');

-- Seed data for student table
INSERT INTO student
( student_id, set_code,
  first_name, last_name,
  email)
VALUES
    ( 'A001', '202530A',
      'Ava', 'Nguyen',
      'ava.nguyen@my.bcit.ca'),

    ( 'A002', '202530A',
      'Noah', 'Kim',
      'noah.kim@my.bcit.ca'),

    ( 'A003', '202530A',
      'Oliver', 'Singh',
      'oliver,singh@my.bcit.ca'),

    ( 'B001', '202530B',
      'Maya', 'Fischer',
      'maya.fischer@my.bcit.ca'),

    ( 'B002', '202530B',
      'Leo', 'Park',
      'leo.park@my.bcit.ca'),

    ( 'B003', '202530B',
      'Zoé', 'Martin',
      'zoe.martin@my.bcit.ca'),

    ( 'C001', '202530C',
      'Sofia', 'Chen',
      'sofia.chen@my.bcit.ca'),

    ( 'C002', '202530C',
      'Arjun', 'Patel',
      'arjun.patel@my.bcit.ca'),

    ( 'C003', '202530C',
      'Liam', 'O’Reilly',
      'liam.oreilly@my.bcit.ca'),

    ( 'D001', '202530D',
      'Layla', 'Haddad',
      'layla.haddad@my.bcit.ca'),

    ( 'D002', '202530D',
      'Ethan', 'Wong',
      'ethan.wong@my.bcit.ca'),

    ( 'D003', '202530D',
      'Nora', 'Iverson',
      'nora.iverson@my.bcit.ca'),

    ( 'E001', '202530E',
      'Diego', 'Alvarez',
      'diego.alvarez@my.bcit.ca'),

    ( 'E002', '202530E',
      'Hana', 'Yamamoto',
      'hana.yamamoto@my.bcit.ca'),

    ( 'E003', '202530E',
      'Farah', 'Rahimi',
      'farah.rahimi@my.bcit.ca'),

    ( 'F001', '202530F',
      'Marco', 'Russo',
      'marco.russo@my.bcit.ca'),

    ( 'F002', '202530F',
      'Amir', 'Kazemi',
      'amir.kazemi@my.bcit.ca'),

    ( 'F003', '202530F',
      'Chloe', 'Dubois',
      'chloe.dubois@my.bcit.ca');

-- Seed data for section table
INSERT INTO section
( section_code, course_code,
  term_code, set_code,
  type, day_of_week,
  start_time, end_time, location)
VALUES
    ( 'L01', 'COMP2714',
      '202530', '202530A',
      'lab', 'Mon',
      '9:30', '11:20', 'BBY-SW01-3460'),

    ( 'L02', 'COMP2714',
      '202530', '202530B',
      'lab', 'Mon',
      '13:30', '15:20', 'BBY-SW01-3465'),

    ( 'L03', 'COMP2714',
      '202530', '202530C',
      'lab', 'Tue',
      '18:30', '20:20', 'BBY-SW03-2605'),

    ( 'L04', 'COMP2714',
      '202530', '202530D',
      'lab', 'Wed',
      '9:30', '11:20', 'BBY-SE12-101'),

    ( 'L05', 'COMP2714',
      '202530', '202530E',
      'lab', 'Wed',
      '13:30', '15:20', 'DTC-310'),

    ( 'L06', 'COMP2714',
      '202530', '202530F',
      'lab', 'Thu',
      '18:30', '20:20', 'DTC-318');

-- Seed data for lab_assignment table
INSERT INTO lab_assignment
( assignment_id, course_code,
  term_code, lab_number,
  title)
VALUES
    ( 'L01', 'COMP2714',
      '202530', 1,
      'Environment Setup & Intro SQL'),

    ( 'L02', 'COMP2714',
      '202530', 2,
      'Conceptual to Logical Mapping'),

    ( 'L03', 'COMP2714',
      '202530', 3,
      'Logical ERD & Constraints'),

    ( 'L04', 'COMP2714',
      '202530', 4,
      'Normalization to 3NF'),

    ( 'L05', 'COMP2714',
      '202530', 5,
      'DDL Implementation'),

    ( 'L06', 'COMP2714',
      '202530', 6,
      'DML: INSERT/UPDATE/DELETE'),

    ( 'L07', 'COMP2714',
      '202530', 7,
      'SELECT & JOIN Practice'),

    ( 'L08', 'COMP2714',
      '202530', 8,
      'Views & Indexes');

-- Seed data for lab_event table
INSERT INTO lab_event
    ( event_id, section_code,
      assignment_id, lab_number,
      start_datetime, end_datetime,
      due_datetime, location )
VALUES
    ( 'L01-L01', 'L01',
      'L01', 1,
      '2025-09-08 09:30:00', '2025-09-08 11:20:00',
      '2025-09-14 23:59:00', 'BBY-SW01-3460'),

    ( 'L01-L02', 'L01',
      'L02', 2,
      '2025-09-15 09:30:00', '2025-09-15 11:20:00',
      '2025-09-21 23:59:00', 'BBY-SW01-3460'),

    ( 'L01-L03', 'L01',
      'L03', 3,
      '2025-09-22 09:30:00', '2025-09-22 11:20:00',
      '2025-09-28 23:59:00', 'BBY-SW01-3460'),

    ( 'L02-L01', 'L02',
      'L01', 1,
      '2025-09-08 13:30:00', '2025-09-08 15:20:00',
      '2025-09-14 23:59:00', 'BBY-SW01-3465'),

    ( 'L02-L02', 'L02',
      'L02', 2,
      '2025-09-15 13:30:00', '2025-09-15 15:20:00',
      '2025-09-21 23:59:00', 'BBY-SW01-3465'),

    ( 'L02-L03', 'L02',
      'L03', 3,
      '2025-09-22 13:30:00', '2025-09-22 15:20:00',
      '2025-09-28 23:59:00', 'BBY-SW01-3465'),

    ( 'L03-L01', 'L03',
      'L01', 1,
      '2025-09-09 18:30:00', '2025-09-09 20:20:00',
      '2025-09-14 23:59:00', 'BBY-SW03-2605'),

    ( 'L03-L02', 'L03',
      'L02', 2,
      '2025-09-16 18:30:00', '2025-09-16 20:20:00',
      '2025-09-21 23:59:00', 'BBY-SW03-2605'),

    ( 'L03-L03', 'L03',
      'L03', 3,
      '2025-09-23 18:30:00', '2025-09-23 20:20:00',
      '2025-09-28 23:59:00', 'BBY-SW03-2605'),

    ( 'L04-L01', 'L04',
      'L01', 1,
      '2025-09-10 09:30:00', '2025-09-10 11:20:00',
      '2025-09-14 23:59:00', 'BBY-SE12-101'),

    ( 'L04-L02', 'L04',
      'L02', 2,
      '2025-09-17 09:30:00', '2025-09-17 11:20:00',
      '2025-09-21 23:59:00', 'BBY-SE12-101'),

    ( 'L04-L03', 'L04',
      'L03', 3,
      '2025-09-24 09:30:00', '2025-09-24 11:20:00',
      '2025-09-28 23:59:00', 'BBY-SE12-101'),

    ( 'L05-L01', 'L05',
      'L01', 1,
      '2025-09-10 13:30:00', '2025-09-10 15:20:00',
      '2025-09-15 09:00:00', 'DTC-310'),

    ( 'L05-L02', 'L05',
      'L02', 2,
      '2025-09-17 13:30:00', '2025-09-17 15:20:00',
      '2025-09-22 09:00:00', 'DTC-310'),

    ( 'L05-L03', 'L05',
      'L03', 3,
      '2025-09-24 13:30:00', '2025-09-24 15:20:00',
      '2025-09-29 09:00:00', 'DTC-310'),

    ( 'L06-L01', 'L06',
      'L01', 1,
      '2025-09-11 18:30:00', '2025-09-11 20:20:00',
      '2025-09-15 09:00:00', 'DTC-318'),

    ( 'L06-L02', 'L06',
      'L02', 2,
      '2025-09-18 18:30:00', '2025-09-18 20:20:00',
      '2025-09-22 09:00:00', 'DTC-318'),

    ( 'L06-L03', 'L06',
      'L03', 3,
      '2025-09-25 18:30:00', '2025-09-25 20:20:00',
      '2025-09-29 09:00:00', 'DTC-318');

-- Seed data for progress table
INSERT INTO progress
( progress_id, student_id, event_id,
  lab_number, status, prepared,
  attendance, inlab_submitted_at, inlab_submission_link,
  polished_submitted_at, polished_submission_link, instructor_assessment,
  self_assessment, late_submission)
VALUES
    ( 'A001-L01-L01', 'A001', 'L01-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-08 10:45:00', 'https://submit.bcit.ca/comp2714/inlab/A001-L01-L01.pdf',
      '2025-09-09 12:45:00', 'https://submit.bcit.ca/comp2714/polished/A001-L01-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'A001-L01-L02', 'A001', 'L01-L02',
      2, 'submitted', TRUE,
      'P', '2025-09-15 10:35:00', 'https://submit.bcit.ca/comp2714/inlab/A001-L01-L02.pdf',
      '2025-09-17 11:35:00', 'https://submit.bcit.ca/comp2714/polished/A001-L01-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'A002-L01-L01', 'A002', 'L01-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-08 10:45:00', 'https://submit.bcit.ca/comp2714/inlab/A002-L01-L01.pdf',
      '2025-09-09 12:45:00', 'https://submit.bcit.ca/comp2714/polished/A002-L01-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'A002-L01-L02', 'A002', 'L01-L02',
      2, 'open', TRUE,
      'P', '2025-09-15 10:40:00', 'https://submit.bcit.ca/comp2714/inlab/A002-L01-L02.pdf',
      NULL, NULL, NULL,
      NULL, FALSE),

    ( 'A003-L01-L01', 'A003', 'L01-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-08 10:45:00', 'https://submit.bcit.ca/comp2714/inlab/A003-L01-L01.pdf',
      '2025-09-09 12:45:00', 'https://submit.bcit.ca/comp2714/polished/A003-L01-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'A003-L01-L02', 'A003', 'L01-L02',
      2, 'submitted', FALSE,
      'P', '2025-09-15 10:35:00', 'https://submit.bcit.ca/comp2714/inlab/A003-L01-L02.pdf',
      '2025-09-17 11:35:00', 'https://submit.bcit.ca/comp2714/polished/A003-L01-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'B001-L02-L01', 'B001', 'L02-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-08 14:45:00', 'https://submit.bcit.ca/comp2714/inlab/B001-L02-L01.pdf',
      '2025-09-09 16:45:00', 'https://submit.bcit.ca/comp2714/polished/B001-L02-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'B001-L02-L02', 'B001', 'L02-L02',
      2, 'submitted', TRUE,
      'P', '2025-09-15 14:35:00', 'https://submit.bcit.ca/comp2714/inlab/B001-L02-L02.pdf',
      '2025-09-17 15:35:00', 'https://submit.bcit.ca/comp2714/polished/B001-L02-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'B002-L02-L01', 'B002', 'L02-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-08 14:45:00', 'https://submit.bcit.ca/comp2714/inlab/B002-L02-L01.pdf',
      '2025-09-09 16:45:00', 'https://submit.bcit.ca/comp2714/polished/B002-L02-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'B002-L02-L02', 'B002', 'L02-L02',
      2, 'open', TRUE,
      'P', '2025-09-15 14:40:00', 'https://submit.bcit.ca/comp2714/inlab/B002-L02-L02.pdf',
      NULL, NULL, NULL,
      NULL, FALSE),

    ( 'B003-L02-L01', 'B003', 'L02-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-08 14:45:00', 'https://submit.bcit.ca/comp2714/inlab/B003-L02-L01.pdf',
      '2025-09-09 16:45:00', 'https://submit.bcit.ca/comp2714/polished/B003-L02-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'B003-L02-L02', 'B003', 'L02-L02',
      2, 'submitted', FALSE,
      'P', '2025-09-15 14:35:00', 'https://submit.bcit.ca/comp2714/inlab/B003-L02-L02.pdf',
      '2025-09-17 15:35:00', 'https://submit.bcit.ca/comp2714/polished/B003-L02-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'C001-L03-L01', 'C001', 'L03-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-09 19:45:00', 'https://submit.bcit.ca/comp2714/inlab/C001-L03-L01.pdf',
      '2025-09-10 21:45:00', 'https://submit.bcit.ca/comp2714/polished/C001-L03-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'C001-L03-L02', 'C001', 'L03-L02',
      2, 'submitted', TRUE,
      'P', '2025-09-16 19:35:00', 'https://submit.bcit.ca/comp2714/inlab/C001-L03-L02.pdf',
      '2025-09-18 20:35:00', 'https://submit.bcit.ca/comp2714/polished/C001-L03-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'C002-L03-L01', 'C002', 'L03-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-09 19:45:00', 'https://submit.bcit.ca/comp2714/inlab/C002-L03-L01.pdf',
      '2025-09-10 21:45:00', 'https://submit.bcit.ca/comp2714/polished/C002-L03-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'C002-L03-L02', 'C002', 'L03-L02',
      2, 'open', TRUE,
      'P', '2025-09-16 19:40:00', 'https://submit.bcit.ca/comp2714/inlab/C002-L03-L02.pdf',
      NULL, NULL, NULL,
      NULL, FALSE),

    ( 'C003-L03-L01', 'C003', 'L03-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-09 19:45:00', 'https://submit.bcit.ca/comp2714/inlab/C003-L03-L01.pdf',
      '2025-09-10 21:45:00', 'https://submit.bcit.ca/comp2714/polished/C003-L03-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'C003-L03-L02', 'C003', 'L03-L02',
      2, 'submitted', FALSE,
      'P', '2025-09-16 19:35:00', 'https://submit.bcit.ca/comp2714/inlab/C003-L03-L02.pdf',
      '2025-09-18 20:35:00', 'https://submit.bcit.ca/comp2714/polished/C003-L03-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'D001-L04-L01', 'D001', 'L04-L01',
      1, 'open', TRUE,
      'P', '2025-09-10 10:40:00', 'https://submit.bcit.ca/comp2714/inlab/D001-L04-L01.pdf',
      NULL, NULL, NULL,
      NULL, FALSE),

    ( 'D001-L04-L02', 'D001', 'L04-L02',
      2, 'submitted', TRUE,
      'P', '2025-09-17 10:35:00', 'https://submit.bcit.ca/comp2714/inlab/D001-L04-L02.pdf',
      '2025-09-19 11:35:00', 'https://submit.bcit.ca/comp2714/polished/D001-L04-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'D002-L04-L01', 'D002', 'L04-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-10 10:45:00', 'https://submit.bcit.ca/comp2714/inlab/D002-L04-L01.pdf',
      '2025-09-11 12:45:00', 'https://submit.bcit.ca/comp2714/polished/D002-L04-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'D002-L04-L02', 'D002', 'L04-L02',
      2, 'open', TRUE,
      'P', '2025-09-17 10:40:00', 'https://submit.bcit.ca/comp2714/inlab/D002-L04-L02.pdf',
      NULL, NULL, NULL,
      NULL, FALSE),

    ( 'D003-L04-L01', 'D003', 'L04-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-10 10:45:00', 'https://submit.bcit.ca/comp2714/inlab/D003-L04-L01.pdf',
      '2025-09-11 12:45:00', 'https://submit.bcit.ca/comp2714/polished/D003-L04-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'D003-L04-L02', 'D003', 'L04-L02',
      2, 'submitted', FALSE,
      'P', '2025-09-17 10:35:00', 'https://submit.bcit.ca/comp2714/inlab/D003-L04-L02.pdf',
      '2025-09-19 11:35:00', 'https://submit.bcit.ca/comp2714/polished/D003-L04-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'E001-L01-L01', 'E001', 'L05-L01',
      1, 'open', TRUE,
      'P', '2025-09-10 14:45:00', 'https://submit.bcit.ca/comp2714/inlab/E001-L05-L01.pdf',
      '2025-09-11 16:45:00', 'https://submit.bcit.ca/comp2714/polished/E001-L05-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'E001-L01-L02', 'E001', 'L05-L02',
      2, 'submitted', TRUE,
      'P', '2025-09-17 14:35:00', 'https://submit.bcit.ca/comp2714/inlab/E001-L05-L02.pdf',
      '2025-09-19 15:35:00', 'https://submit.bcit.ca/comp2714/polished/E001-L05-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'E002-L01-L01', 'E002', 'L05-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-10 14:45:00', 'https://submit.bcit.ca/comp2714/inlab/E002-L05-L01.pdf',
      '2025-09-11 16:45:00', 'https://submit.bcit.ca/comp2714/polished/E002-L05-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'E002-L01-L02', 'E002', 'L05-L02',
      2, 'submitted', TRUE,
      'P', '2025-09-17 14:40:00', 'https://submit.bcit.ca/comp2714/inlab/E002-L05-L02.pdf',
      NULL, NULL, NULL,
      NULL, FALSE),

    ( 'E003-L01-L01', 'E003', 'L05-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-10 14:45:00', 'https://submit.bcit.ca/comp2714/inlab/E003-L05-L01.pdf',
      '2025-09-11 16:45:00', 'https://submit.bcit.ca/comp2714/polished/E003-L05-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'E003-L01-L02', 'E003', 'L05-L02',
      2, 'submitted', FALSE,
      'P', '2025-09-17 14:35:00', 'https://submit.bcit.ca/comp2714/inlab/E003-L05-L02.pdf',
      '2025-09-19 15:35:00', 'https://submit.bcit.ca/comp2714/polished/E003-L05-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'F001-L01-L01', 'F001', 'L06-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-11 19:45:00', 'https://submit.bcit.ca/comp2714/inlab/F001-L06-L01.pdf',
      '2025-09-12 21:45:00', 'https://submit.bcit.ca/comp2714/polished/F001-L06-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'F001-L01-L02', 'F001', 'L06-L02',
      2, 'submitted', TRUE,
      'P', '2025-09-18 19:35:00', 'https://submit.bcit.ca/comp2714/inlab/F001-L06-L02.pdf',
      '2025-09-20 20:35:00', 'https://submit.bcit.ca/comp2714/polished/F001-L06-L02.pdf', 7.0,
      6.7, FALSE),

    ( 'F002-L01-L01', 'F002', 'L06-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-11 19:45:00', 'https://submit.bcit.ca/comp2714/inlab/F002-L06-L01.pdf',
      '2025-09-12 21:45:00', 'https://submit.bcit.ca/comp2714/polished/F002-L06-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'F002-L01-L02', 'F002', 'L06-L02',
      2, 'open', TRUE,
      'P', '2025-09-18 19:40:00', 'https://submit.bcit.ca/comp2714/inlab/F002-L06-L02.pdf',
      NULL, NULL, NULL,
      NULL, FALSE),

    ( 'F003-L01-L01', 'F003', 'L06-L01',
      1, 'submitted', TRUE,
      'P', '2025-09-11 19:45:00', 'https://submit.bcit.ca/comp2714/inlab/F003-L06-L01.pdf',
      '2025-09-12 21:45:00', 'https://submit.bcit.ca/comp2714/polished/F003-L06-L01.pdf', 8.5,
      8.2, FALSE),

    ( 'F003-L01-L02', 'F003', 'L06-L02',
      2, 'submitted', FALSE,
      'P', '2025-09-18 19:35:00', 'https://submit.bcit.ca/comp2714/inlab/F003-L06-L02.pdf',
      '2025-09-20 20:35:00', 'https://submit.bcit.ca/comp2714/polished/F003-L06-L02.pdf', 7.0,
      6.7, FALSE);

-- Seed data for change_log table
INSERT INTO change_log
    ( change_id, progress_id,
      changed_by, changed_at,
      field, old_value,
      new_value, reason)
VALUES
    ( 'chg1', 'A001-L01-L01',
      'u_instructor', '9/9/2025 12:10:00',
      'instructor_assessment', '8', '8.5',
      'Regraded after resubmission'),

    ( 'chg2', 'A003-L01-L02',
      'u_ta1', '9/16/2025 20:45:00',
      'status', 'open',
      'submitted',
      'Student submitted during lab; TA marked as submitted'),

    ( 'chg3', 'B003-L02-L01',
      'u_system', '9/23/2025 23:59:00',
      'late', 'FALSE', 'TRUE',
      'Auto-flagged after set-specific due time'),

    ( 'chg4', 'C002-L03-L02',
      'u_ta1', '2025-09-16 19:50:00',
      'status', 'open', 'submitted',
      'Student uploaded in-lab work during class'),

    ( 'chg5', 'D001-L04-L01',
      'u_instructor', '2025-09-10 11:00:00',
      'prepared', 'FALSE', 'TRUE',
      'Instructor updated after confirming preparation');

-- Seed data for independent_student_enrolment table
INSERT INTO independent_student_enrolment
    ( student_id, section_code)
VALUES
    ( 'A001', 'L01'),
    ( 'B001', 'L02'),
    ( 'C001', 'L03'),
    ( 'D001', 'L04'),
    ( 'E001', 'L05');
