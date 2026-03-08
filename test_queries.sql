--Select first name, last name, and email for all students.
SELECT student_id, first_name, last_name, email FROM student;

-- Select all unique building names from the Location table.
SELECT DISTINCT location_building FROM LOCATION;

-- Select name and start date for all terms.
SELECT DISTINCT name, start_date FROM TERM;

-- Select progress ID, changed_by, and new_value from Change Log.
SELECT progress_id, user_id, new_value FROM CHANGE_LOG JOIN USERS ON CHANGE_LOG.changed_by = USERS.user_id;

-- Select course title, section code, and term code for all sections.
SELECT title, section_code, term_code FROM COURSE JOIN SECTION ON COURSE.course_code = SECTION.course_code;

-- Select day, start time, and building for a specific section code.
SELECT day_of_week, start_time, location_building, location_room FROM SECTION JOIN LOCATION ON SECTION.location = LOCATION.location_code WHERE SECTION.section_code = '###';

-- Select lab number and start datetime by joining Lab Assignment and Lab Event.
SELECT LAB_ASSIGNMENT.lab_number, start_datetime FROM LAB_ASSIGNMENT JOIN LAB_EVENT
                                                     ON LAB_ASSIGNMENT.assignment_id = LAB_EVENT.assignment_id;
-- Select all students and their corresponding set.
SELECT first_name, last_name, set_letter FROM STUDENT JOIN SET ON STUDENT.set_code = SET.set_code;

-- Select progress records where attendance is 'Present'.
SELECT * FROM PROGRESS WHERE attendance = 'P'; -- P for present

-- Select section codes for terms with 'Fall' in the name.
SELECT * FROM SECTION JOIN TERM ON SECTION.term_code = TERM.term_code WHERE LOWER(term.name) LIKE LOWER('%fall%');

-- Select students who have no records in the Progress table.
SELECT student_id FROM STUDENT WHERE student_id NOT IN(SELECT student_id FROM PROGRESS WHERE inlab_submitted_at IS NOT NULL);

-- Count the number of sections for each course code.
SELECT course_code, COUNT(section_code) FROM SECTION GROUP BY course_code;

-- Calculate the average instructor assessment score from Progress.
SELECT AVG(instructor_assessment) FROM PROGRESS;

-- Count students enrolled in each independent study section.
SELECT COUNT(student_id) FROM INDEPENDENT_STUDENT_ENROLMENT GROUP BY section_code;
