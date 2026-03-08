-- Basic queries
SELECT student_id, stu_fname, stu_lname, stu_email FROM STUDENT;

SELECT DISTINCT location_building FROM MEETING;

SELECT DISTINCT term_season, term_year FROM TERM;

-- JOINS
SELECT course_name, section_CRN, term_year FROM COURSE JOIN SECTION ON COURSE.course_code = SECTION.course_code;

SELECT meeting_date, meet_time, location_building, location_room, section_CRN FROM MEETING WHERE section_CRN = ####;

SELECT lab_number, session_date, SECTION.section_CRN FROM LAB_SESSION JOIN SECTION
                                                     ON SECTION.section_CRN = LAB_SESSION.section_CRN AND
                                                           SECTION.term_year = LAB_SESSION.term_year AND
                                                           SECTION.term_season = LAB_SESSION.term_season;

