-- Seed data for term table
INSERT INTO term (term_code, name, start_date, end_date)
VALUES (202510, 'Winter 2025', 1/6/2025, 4/11/2025),
       (202520, 'Spring/Summer 2025', 4/28/2025, 8/8/2025),
       (202530, 'Fall 2025', 9/2/2025, 12/12/2025);

-- Seed data for set table
INSERT INTO set (set_code, campus)
VALUES ('A', 'Burnaby'),
       ('B', 'Burnaby'),
       ('C', 'Burnaby'),
       ('D', 'Burnaby'),
       ('E', 'Downtown'),
       ('F', 'Downtown');

-- Seed data for course table
INSERT INTO course (course_code, title, credits)
VALUES ('COMP2714', 'Relational Database Systems', 3);

-- Seed data for section table
INSERT INTO section (section_code, course_code, term_code, set_code, type, day_of_week, start_time, end_time, location)
VALUES ('LO1', 'COMP2714', 202530, 'A', 'LAB',
        'Mon', 9:30, 11:20, 'BBY-SW01-3460'),
        ('LO2', 'COMP2714', 202530, 'B', 'LAB',
         'Mon', 13:30, 15:20, 'BBY-SW01-3465'),
        ('LO3', 'COMP2714', 202530, 'C', 'LAB',
         'Tue', 18:30, 20:20, 'BBY-SW03-2605'),
        ('LO4', 'COMP2714', 202530, 'D', 'LAB',
         'Wed', 9:30, 11:20, 'BBY-SE12-101'),
        ('LO5', 'COMP2714', 202530, 'E', 'LAB',
         'Wed', 13:30, 15:20, 'DTC-310'),
        ('LO1', 'COMP2714', 202530, 'F', 'LAB',
         'Thu', 18:30, 20:20, 'DTC-318');

-- Seed data for student table
INSERT INTO

student_id	set_code	first_name	last_name	email
A001	A	Ava	Nguyen	ava.nguyen@my.bcit.ca
A002	A	Noah	Kim	noah.kim@my.bcit.ca
A003	A	Oliver	Singh	oliver.singh@my.bcit.ca
B001	B	Maya	Fischer	maya.fischer@my.bcit.ca
B002	B	Leo	Park	leo.park@my.bcit.ca
B003	B	ZoÃ©	Martin	zoe.martin@my.bcit.ca
C001	C	Sofia	Chen	sofia.chen@my.bcit.ca
C002	C	Arjun	Patel	arjun.patel@my.bcit.ca
C003	C	Liam	Oâ€™Reilly	liam.oreilly@my.bcit.ca
D001	D	Layla	Haddad	layla.haddad@my.bcit.ca
D002	D	Ethan	Wong	ethan.wong@my.bcit.ca
D003	D	Nora	Iverson	nora.iverson@my.bcit.ca
E001	E	Diego	Alvarez	diego.alvarez@my.bcit.ca
E002	E	Hana	Yamamoto	hana.yamamoto@my.bcit.ca
E003	E	Farah	Rahimi	farah.rahimi@my.bcit.ca
F001	F	Marco	Russo	marco.russo@my.bcit.ca
F002	F	Amir	Kazemi	amir.kazemi@my.bcit.ca
F003	F	Chloe	Dubois	chloe.dubois@my.bcit.ca




