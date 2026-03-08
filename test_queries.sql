-- Basic queries
SELECT student_id, stu_fname, stu_lname, stu_email FROM STUDENT;

SELECT DISTINCT location_building FROM MEETING;

SELECT DISTINCT term_season, term_year FROM TERM;

SELECT course_code, term_year, term_season, lab_number, student_id, changed_by FROM PROGRESS_LOG;

-- JOINS
SELECT course_name, section_CRN, term_year FROM COURSE JOIN SECTION ON COURSE.course_code = SECTION.course_code;

SELECT meeting_date, meet_time, location_building, location_room, section_CRN FROM MEETING WHERE section_CRN = ####;

SELECT lab_number, session_date, SECTION.section_CRN FROM LAB_SESSION JOIN SECTION
                                                     ON SECTION.section_CRN = LAB_SESSION.section_CRN AND
                                                        SECTION.term_year = LAB_SESSION.term_year AND
                                                        SECTION.term_season = LAB_SESSION.term_season;

SELECT stu_fname, stu_lname, set_letter, set_creation_season FROM STUDENT JOIN SECTION
                                                             ON STUDENT.set_creation_year = SET.set_creation_year AND
                                                                STUDENT.set_creation_season = SET.set_creation_season AND
                                                                STUDENT.set_letter = SET.set_letter;

-- Filtering queries
SELECT * FROM PROGRESS WHERE attendance = 'P'; -- P for present

SELECT * FROM MEETING WHERE is_online = TRUE;

SELECT student_id FROM PROGRESS WHERE NOT IN(SELECT student_id FROM PROGRESS WHERE in_lab_submission NOT NULL);

-- Aggregation queries
SELECT course_code, COUNT(section_CRN) FROM SECTION GROUP BY course_code;

SELECT AVG(instructor_assesment) FROM PROGRESS;

SELECT COUNT(student_id) FROM INDEPENDENT_STUDENT_ENROLLMENT GROUP BY section_CRN;
