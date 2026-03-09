DROP SCHEMA IF EXISTS lab_tracker_group_06 CASCADE;
CREATE SCHEMA lab_tracker_group_06;
SET search_path TO lab_tracker_group_06;


CREATE TYPE campus AS ENUM('BBY', 'DTC');
CREATE TYPE section_type AS ENUM('lab', 'lecture');
CREATE TYPE role AS ENUM('instructor', 'ta', 'system');
CREATE TYPE weekday AS ENUM('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
CREATE TYPE status AS ENUM('submitted', 'open', 'due', 'closed');
CREATE TYPE attendance AS ENUM('P', 'L', 'A', 'E');


CREATE TABLE TERM (
    term_code CHAR(6),
    name VARCHAR(30) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CONSTRAINT pk_term PRIMARY KEY (term_code),
    CONSTRAINT unique_term_name UNIQUE(name),
    CONSTRAINT unique_term_start_date UNIQUE(start_date)
);

CREATE TABLE COURSE (
    course_code VARCHAR(8),
    title VARCHAR(50) NOT NULL,
    credits SMALLINT NOT NULL,
    CONSTRAINT pk_course PRIMARY KEY (course_code),
    CONSTRAINT unique_title UNIQUE(title)
);

-- example set code = '202530C'
CREATE TABLE SET (
    set_code CHAR(7) GENERATED ALWAYS AS (creation_term || set_letter) STORED,
    set_letter CHAR(1) NOT NULL,
    campus campus NOT NULL,
    creation_term CHAR(6) NOT NULL,
    CONSTRAINT pk_set PRIMARY KEY (set_code),
    CONSTRAINT fk_creation_term FOREIGN KEY(creation_term) REFERENCES TERM(term_code) ON UPDATE CASCADE
);

CREATE TABLE USERS (
    user_id CHAR(15),
    display_name VARCHAR(30) NOT NULL,
    role role NOT NULL,
    email VARCHAR(40) NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY (user_id),
    CONSTRAINT uq_users_email UNIQUE (email)
);

CREATE TABLE STUDENT (
    student_id CHAR(9),
    set_code CHAR(7),
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
    CONSTRAINT pk_student PRIMARY KEY (student_id),
    CONSTRAINT fk_student_set FOREIGN KEY (set_code) REFERENCES SET(set_code) ON UPDATE CASCADE,
    CONSTRAINT uq_student_email UNIQUE (email)
);

CREATE TABLE LOCATION(
    location_code VARCHAR(14),
    location_campus campus NOT NULL,
    location_building VARCHAR(4),
    location_room CHAR(4) NOT NULL,
    CONSTRAINT pk_location PRIMARY KEY(location_code),
    CONSTRAINT uq_location UNIQUE(location_campus, location_building, location_room)
);

CREATE TABLE SECTION (
    section_code CHAR(9),
    course_code CHAR(8),
    term_code CHAR(6),
    set_code CHAR(7),
    type section_type NOT NULL DEFAULT('lab'),
    day_of_week weekday NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL ,
    location VARCHAR(14),
    CONSTRAINT pk_section PRIMARY KEY (section_code),
    CONSTRAINT fk_section_course FOREIGN KEY (course_code) REFERENCES COURSE(course_code) ON UPDATE CASCADE,
    CONSTRAINT fk_section_term FOREIGN KEY (term_code) REFERENCES TERM(term_code) ON UPDATE CASCADE,
    CONSTRAINT fk_section_set FOREIGN KEY (set_code) REFERENCES SET(set_code) ON UPDATE CASCADE,
    CONSTRAINT fk_section_location FOREIGN KEY (location) REFERENCES LOCATION(location_code) ON UPDATE CASCADE
);

CREATE TABLE LAB_ASSIGNMENT (
    assignment_id CHAR(9),
    course_code CHAR(8),
    term_code CHAR(6),
    lab_number SMALLINT NOT NULL,
    title VARCHAR(50) NOT NULL,
    CONSTRAINT pk_lab_assignment PRIMARY KEY (assignment_id),
    CONSTRAINT fk_assignment_course FOREIGN KEY (course_code) REFERENCES COURSE(course_code) ON UPDATE CASCADE,
    CONSTRAINT fk_assignment_term FOREIGN KEY (term_code) REFERENCES TERM(term_code) ON UPDATE CASCADE,
    CONSTRAINT uq_lab_assignment_identity UNIQUE (course_code, term_code, lab_number)
);

CREATE TABLE LAB_EVENT (
    event_id CHAR(9),
    section_code CHAR(9) NOT NULL,
    assignment_id CHAR(9) NOT NULL,
    lab_number SMALLINT NOT NULL,
    start_datetime TIMESTAMP NOT NULL,
    end_datetime TIMESTAMP NOT NULL,
    due_datetime TIMESTAMP NOT NULL,
    location VARCHAR(14),
    CONSTRAINT pk_lab_event PRIMARY KEY (event_id),
    CONSTRAINT fk_event_section FOREIGN KEY (section_code) REFERENCES SECTION(section_code) ON UPDATE CASCADE,
    CONSTRAINT fk_event_assignment FOREIGN KEY (assignment_id) REFERENCES LAB_ASSIGNMENT(assignment_id) ON UPDATE CASCADE,
    CONSTRAINT fk_event_location FOREIGN KEY(location) REFERENCES LOCATION(location_code) ON UPDATE CASCADE,
    CONSTRAINT ck_event_times CHECK (end_datetime > start_datetime),
    CONSTRAINT ck_event_due_date CHECK (due_datetime >= start_datetime)
);

CREATE TABLE PROGRESS (
    progress_id CHAR(16),
    student_id CHAR(9),
    event_id CHAR(9),
    lab_number SMALLINT NOT NULL,
    status status NOT NULL,
    prepared BOOLEAN DEFAULT FALSE,
    attendance attendance,
    inlab_submitted_at TIMESTAMP,
    inlab_submission_link TEXT,
    polished_submitted_at TIMESTAMP,
    polished_submission_link TEXT,
    instructor_assessment NUMERIC(4,2),
    self_assessment NUMERIC(4,2),
    late_submission BOOLEAN DEFAULT FALSE,
    CONSTRAINT pk_progress PRIMARY KEY (progress_id),
    CONSTRAINT fk_progress_student FOREIGN KEY (student_id) REFERENCES STUDENT(student_id) ON UPDATE CASCADE,
    CONSTRAINT fk_progress_event FOREIGN KEY (event_id) REFERENCES LAB_EVENT(event_id) ON UPDATE CASCADE,
    CONSTRAINT ck_instructor_range CHECK (instructor_assessment BETWEEN 0 AND 10 OR instructor_assessment IS NULL),
    CONSTRAINT ck_self_range CHECK (self_assessment BETWEEN 0 AND 10 OR self_assessment IS NULL)
);

CREATE TABLE CHANGE_LOG (
    change_id CHAR(16),
    progress_id CHAR(16) NOT NULL,
    changed_by CHAR(15) NOT NULL,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    field VARCHAR(50) NOT NULL,
    old_value TEXT,
    new_value TEXT,
    reason TEXT,
    CONSTRAINT pk_change_log PRIMARY KEY (change_id),
    CONSTRAINT fk_log_progress FOREIGN KEY (progress_id) REFERENCES PROGRESS(progress_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_log_users FOREIGN KEY (changed_by) REFERENCES USERS(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE INDEPENDENT_STUDENT_ENROLMENT(
    student_id CHAR(9),
    section_code CHAR(9),
    CONSTRAINT pk_student_enrollment PRIMARY KEY(student_id, section_code),
    CONSTRAINT fk_student_enrollment_student_id FOREIGN KEY (student_id) REFERENCES STUDENT(student_id) ON DELETE CASCADE,
    CONSTRAINT fk_student_enrollment_section_code FOREIGN KEY (section_code) REFERENCES SECTION(section_code) ON DELETE CASCADE
);

