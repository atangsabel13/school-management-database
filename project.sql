create database school_mgt_system;

use school_mgt_system;

create table classes(
class_id int primary key,
class_name varchar (20) not null,
createdAT timestamp default current_timestamp,
updateAT timestamp default current_timestamp on update current_timestamp 
);

alter table classes add column teacher_id int;

alter table classes
add constraint fk_class_teacher
foreign key (teacher_id) references teachers(teacher_id);

insert into classes (class_id, class_name) values
(1,  'JSS1A'),
(2,  'JSS1B'),
(3,  'JSS1C'),
(4,  'JSS1D'), 
(5,  'JSS1E'),
(6,  'JSS2A'), 
(7,  'JSS2B'),
(8,  'JSS2C'),
(9,  'JSS2D'),
(10, 'JSS2E'),
(11, 'JSS3A'),
(12, 'JSS3B'),
(13, 'JSS3C'),
(14, 'JSS3D'),
(15, 'JSS3E'),
(16, 'SS1A'), 
(17, 'SS1B'), 
(18, 'SS1C'),  
(19, 'SS1D'),  
(20, 'SS1E'),
(21, 'SS2A'),  
(22, 'SS2B'),  
(23, 'SS2C'),  
(24, 'SS2D'),  
(25, 'SS2E'),
(26, 'SS3A'),  
(27, 'SS3B'),  
(28, 'SS3C'),  
(29, 'SS3D'),  
(30, 'SS3E'),
(31, 'PRY1A'), 
(32, 'PRY1B'), 
(33, 'PRY1C'), 
(34, 'PRY1D'),
(35, 'PRY2A'), 
(36, 'PRY2B'), 
(37, 'PRY2C'), 
(38, 'PRY2D'),
(39, 'PRY3A'), 
(40, 'PRY3B'), 
(41, 'PRY3C'), 
(42, 'PRY3D'),
(43, 'PRY4A'), 
(44, 'PRY4B'), 
(45, 'PRY4C'), 
(46, 'PRY4D'),
(47, 'PRY5A'), 
(48, 'PRY5B'), 
(49, 'PRY5C'), 
(50, 'PRY5D');

describe classes;

#Select all the data from the table "classes"
select *
from classes;
 
update classes set teacher_id=class_id;

set sql_safe_updates=0;

create table teachers(
teacher_id int primary key,
full_name varchar(40) not null,
date_of_birth date, -- dd-mm-yyyy,
email varchar(40) not null,
phone varchar(20) not null,
department varchar (40) not null
);

drop table teachers;
alter table teachers drop column date_of_birth;

alter table teachers drop column subject_name;



insert into teachers(teacher_id, full_name, email, phone, department) values
(1,  'Adewale Ogunleye',      'a.ogunleye@school.edu.ng',     '08034561001', 'Mathematics'),
(2,  'Ngozi Nwachukwu',       'n.nwachukwu@school.edu.ng',    '07045672002', 'English'),
(3,  'Ibrahim Musa',           'i.musa@school.edu.ng',         '08056783003', 'Physics'),
(4,  'Chidinma Onyekwere',    'c.onyekwere@school.edu.ng',    '07067894004', 'Chemistry'),
(5,  'Babatunde Fashola',     'b.fashola@school.edu.ng',      '08078905005', 'Biology'),
(6,  'Amara Obiora',          'a.obiora@school.edu.ng',       '07089016006', 'Geography'),
(7,  'Sule Garba',            's.garba@school.edu.ng',        '08090127007', 'Mathematics'),
(8,  'Yetunde Adeleke',       'y.adeleke@school.edu.ng',      '07001238008', 'English'),
(9,  'Chukwuemeka Obi',       'c.obi@school.edu.ng',          '08012349009', 'Government'),
(10, 'Aisha Abdullahi',       'a.abdullahi@school.edu.ng',    '07023450010', 'Social Studies'),
(11, 'Rotimi Adebayo',        'r.adebayo@school.edu.ng',      '08034561011', 'Economics'),
(12, 'Ifeoma Chukwu',         'i.chukwu@school.edu.ng',       '07045672012', 'Literature'),
(13, 'Usman Danjuma',         'u.danjuma@school.edu.ng',      '08056783013', 'Agricultural Science'),
(14, 'Blessing Uwaifo',       'b.uwaifo@school.edu.ng',       '07067894014', 'Computer Science'),
(15, 'Femi Adesanya',         'f.adesanya@school.edu.ng',     '08078905015', 'Technical Drawing'),
(16, 'Nneka Okonkwo',         'n.okonkwo@school.edu.ng',      '07089016016', 'Fine Arts'),
(17, 'Kayode Lawal',          'k.lawal@school.edu.ng',        '08090127017', 'Physical Education'),
(18, 'Ebele Nwosu',           'e.nwosu@school.edu.ng',        '07001238018', 'French'),
(19, 'Aliyu Bello',           'a.bello@school.edu.ng',        '08012349019', 'Islamic Religious Studies'),
(20, 'Grace Adeyemi',         'g.adeyemi@school.edu.ng',      '07023450020', 'Christian Religious Studies'),
(21, 'Kunle Ogunleye',        'k.ogunleye@school.edu.ng',     '08034561021', 'Business Studies'),
(22, 'Uchechi Eze',           'u.eze@school.edu.ng',          '07045672022', 'Home Economics'),
(23, 'Hassan Yusuf',          'h.yusuf@school.edu.ng',        '08056783023', 'Mathematics'),
(24, 'Adaeze Okafor',         'a.okafor@school.edu.ng',       '07067894024', 'Biology'),
(25, 'Segun Babatunde',       's.babatunde@school.edu.ng',    '08078905025', 'Chemistry'),
(26, 'Chiamaka Nwachukwu',   'ch.nwachukwu@school.edu.ng',   '07089016026', 'English'),
(27, 'Abdullahi Adamu',       'ab.adamu@school.edu.ng',       '08090127027', 'Geography'),
(28, 'Tobi Adeleke',          't.adeleke@school.edu.ng',      '07001238028', 'Physics'),
(29, 'Obiageli Obiora',       'ob.obiora@school.edu.ng',      '08012349029', 'Literature'),
(30, 'Gbenga Fashola',        'g.fashola@school.edu.ng',      '07023450030', 'Economics'),
(31, 'Kelechi Onyekwere',     'ke.onyekwere@school.edu.ng',   '08034561031', 'Computer Science'),
(32, 'Fatima Garba',          'f.garba@school.edu.ng',        '07045672032', 'Social Studies'),
(33, 'Dayo Adebayo',          'd.adebayo@school.edu.ng',      '08056783033', 'Government'),
(34, 'Ogechi Obi',            'og.obi@school.edu.ng',         '07067894034', 'Fine Arts'),
(35, 'Musa Sule',             'm.sule@school.edu.ng',         '08078905035', 'Agricultural Science'),
(36, 'Bimbo Uwaifo',          'bi.uwaifo@school.edu.ng',      '07089016036', 'Music'),
(37, 'Ifeanyi Chukwu',        'if.chukwu@school.edu.ng',      '08090127037', 'Technical Drawing'),
(38, 'Remi Lawal',            'r.lawal@school.edu.ng',        '07001238038', 'Home Economics'),
(39, 'Nnamdi Nwosu',          'n.nwosu@school.edu.ng',        '08012349039', 'Mathematics'),
(40, 'Hauwa Mohammed',        'h.mohammed@school.edu.ng',     '07023450040', 'French'),
(41, 'Leke Adesanya',         'l.adesanya@school.edu.ng',     '08034561041', 'Physical Education'),
(42, 'Chinwe Okonkwo',        'ch.okonkwo@school.edu.ng',     '07045672042', 'Biology'),
(43, 'Yusuf Hassan',          'y.hassan@school.edu.ng',       '08056783043', 'Islamic Religious Studies'),
(44, 'Ayo Adeyemi',           'ay.adeyemi@school.edu.ng',     '07067894044', 'Christian Religious Studies'),
(45, 'Obinna Okafor',         'ob.okafor@school.edu.ng',      '08078905045', 'Accounting'),
(46, 'Sola Babatunde',        'so.babatunde@school.edu.ng',   '07089016046', 'Commerce'),
(47, 'Taiwo Adeleke',         'ta.adeleke@school.edu.ng',     '08090127047', 'Business Studies'),
(48, 'Ugochi Eze',            'ug.eze@school.edu.ng',         '07001238048', 'Computer Science'),
(49, 'Bode Fashola',          'bo.fashola@school.edu.ng',     '08012349049', 'Civic Education'),
(50, 'Nkechinyere Nwachukwu','nk.nwachukwu@school.edu.ng',   '07023450050', 'Health Education');

describe teachers;

alter table teachers add column class_id int;

alter table teachers
add constraint class_teach
foreign key (class_id) references classes (class_id);

show index from teachers;

show index from classes;

#Select all the data from the table "teachers"
select *
from teachers;

update teachers set class_id=teacher_id;


drop table teachers;


create table students(
student_id int primary key,
full_name varchar(40) not null,
date_of_birth date, -- dd-mm-yyyy,
gender varchar(20) not null,
guardian_name varchar(40) not null
);

drop table students;
alter table students add column phone varchar(20);

alter table students add column class_id int;

alter table students
add constraint students_class
foreign key (class_id) references classes(class_id);
describe students;

describe students;

#Select all the data from the table "students"
select *
from students;

update students set class_id=ceil(student_id/2);

insert into students (student_id, full_name, date_of_birth, gender, guardian_name, phone) values
(1,   'Emeka Okonkwo',           '2008-03-15', 'M', 'Chief Emmanuel Okonkwo',      '08034567890'),
(2,   'Ngozi Adeyemi',           '2009-07-22', 'F', 'Mrs. Bisi Adeyemi',           '07045678901'),
(3,   'Tunde Babatunde',         '2010-01-10', 'M', 'Mr. Lekan Babatunde',         '08056789012'),
(4,   'Chioma Nwosu',            '2008-11-05', 'F', 'Mrs. Ada Nwosu',              '07067890123'),
(5,   'Ibrahim Mohammed',        '2009-05-18', 'M', 'Alhaji Sule Mohammed',        '08078901234'),
(6,   'Adaeze Okafor',           '2010-09-30', 'F', 'Mrs. Nnenna Okafor',          '07089012345'),
(7,   'Chukwudi Eze',            '2008-02-14', 'M', 'Mr. Ikenna Eze',              '08090123456'),
(8,   'Blessing Adesanya',       '2009-06-25', 'F', 'Mrs. Yetunde Adesanya',       '07001234567'),
(9,   'Kelechi Obi',             '2010-12-08', 'M', 'Chief Chukwuemeka Obi',       '08012345678'),
(10,  'Fatima Usman',            '2008-04-19', 'F', 'Hajiya Aisha Usman',          '07023456789'),
(11,  'Rotimi Adeleke',          '2009-08-30', 'M', 'Mr. Adewale Adeleke',         '08034567801'),
(12,  'Chiamaka Onyekwere',      '2010-02-17', 'F', 'Mrs. Obiageli Onyekwere',     '07045678902'),
(13,  'Abdullahi Garba',         '2008-06-11', 'M', 'Alhaji Musa Garba',           '08056789013'),
(14,  'Ifeoma Chukwu',           '2009-10-24', 'F', 'Mrs. Ngozi Chukwu',           '07067890124'),
(15,  'Gbenga Fashola',          '2010-04-06', 'M', 'Mr. Biodun Fashola',          '08078901235'),
(16,  'Adaora Obiora',           '2008-08-20', 'F', 'Dr. Chidi Obiora',            '07089012346'),
(17,  'Musa Lawal',              '2009-12-03', 'M', 'Malam Abubakar Lawal',        '08090123457'),
(18,  'Uchechi Nwachukwu',       '2010-06-18', 'F', 'Mr. Ifeanyi Nwachukwu',       '07001234568'),
(19,  'Kayode Adebayo',          '2008-01-27', 'M', 'Chief Olumide Adebayo',       '08012345679'),
(20,  'Halima Bello',            '2009-05-14', 'F', 'Hajiya Ramatu Bello',         '07023456790'),
(21,  'Obinna Okafor',           '2010-09-09', 'M', 'Mr. Chukwuebuka Okafor',      '08034567802'),
(22,  'Chidinma Nwosu',          '2008-03-22', 'F', 'Mrs. Adaeze Nwosu',           '07045678903'),
(23,  'Yusuf Hassan',            '2009-07-07', 'M', 'Alhaji Hassan Yusuf',         '08056789014'),
(24,  'Ebele Uwaifo',            '2010-11-19', 'F', 'Mrs. Stella Uwaifo',          '07067890125'),
(25,  'Segun Ogunleye',          '2008-05-31', 'M', 'Mr. Wale Ogunleye',           '08078901236'),
(26,  'Amara Obi',               '2009-09-16', 'F', 'Dr. Emeka Obi',               '07089012347'),
(27,  'Aliyu Danjuma',           '2010-01-28', 'M', 'Malam Danjuma Aliyu',         '08090123458'),
(28,  'Grace Adeyemi',           '2008-07-13', 'F', 'Pastor Niyi Adeyemi',         '07001234569'),
(29,  'Chukwuemeka Eze',         '2009-03-01', 'M', 'Chief Eze Okafor',            '08012345680'),
(30,  'Ogechi Mohammed',         '2010-08-25', 'F', 'Mrs. Hauwa Mohammed',         '07023456791'),
(31,  'Dayo Adesanya',           '2008-12-17', 'M', 'Mr. Femi Adesanya',           '08034567803'),
(32,  'Nkechinyere Okonkwo',     '2009-04-29', 'F', 'Mrs. Chinwe Okonkwo',         '07045678904'),
(33,  'Abubakar Musa',           '2010-10-12', 'M', 'Alhaji Musa Abubakar',        '08056789015'),
(34,  'Chinwe Nwachukwu',        '2008-06-05', 'F', 'Mr. Chidi Nwachukwu',         '07067890126'),
(35,  'Wale Babatunde',          '2009-02-18', 'M', 'Chief Lekan Babatunde',       '08078901237'),
(36,  'Ugochi Onyekwere',        '2010-07-03', 'F', 'Mrs. Ngozi Onyekwere',        '07089012348'),
(37,  'Sule Adamu',              '2008-09-27', 'M', 'Malam Adamu Sule',            '08090123459'),
(38,  'Blessing Okafor',         '2009-01-11', 'F', 'Mrs. Ada Okafor',             '07001234570'),
(39,  'Ifeanyi Chukwu',          '2010-05-24', 'M', 'Mr. Emeka Chukwu',            '08012345681'),
(40,  'Fatimah Lawal',           '2008-10-08', 'F', 'Hajiya Ramatu Lawal',         '07023456792'),
(41,  'Kolade Adebayo',          '2009-06-21', 'M', 'Mr. Rotimi Adebayo',          '08034567804'),
(42,  'Adaeze Obiora',           '2010-02-04', 'F', 'Dr. Chukwudi Obiora',         '07045678905'),
(43,  'Ibrahim Yusuf',           '2008-08-16', 'M', 'Alhaji Yusuf Ibrahim',        '08056789016'),
(44,  'Chibuike Obi',            '2009-12-31', 'M', 'Mr. Ikechukwu Obi',           '07067890127'),
(45,  'Nneka Uwaifo',            '2010-04-14', 'F', 'Mrs. Rose Uwaifo',            '08078901238'),
(46,  'Biodun Ogunleye',         '2008-02-28', 'M', 'Mr. Tunde Ogunleye',          '07089012349'),
(47,  'Chinyere Eze',            '2009-08-11', 'F', 'Mrs. Ifeoma Eze',             '08090123460'),
(48,  'Usman Garba',             '2010-12-23', 'M', 'Malam Garba Usman',           '07001234571'),
(49,  'Obiageli Nwosu',          '2008-04-07', 'F', 'Mr. Chukwueze Nwosu',         '08012345682'),
(50,  'Leke Fashola',            '2009-10-19', 'M', 'Chief Fashola Oluwaseun',     '07023456793'),
(51,  'Nnamdi Okonkwo',          '2010-06-02', 'M', 'Mr. Ikenna Okonkwo',          '08034567805'),
(52,  'Aisha Abdullahi',         '2008-01-15', 'F', 'Alhaji Abdullahi Musa',       '07045678906'),
(53,  'Taiwo Adeleke',           '2009-05-28', 'M', 'Mr. Kehinde Adeleke',         '08056789017'),
(54,  'Iheoma Nwachukwu',        '2010-09-10', 'F', 'Mrs. Uchenna Nwachukwu',      '07067890128'),
(55,  'Kehinde Babatunde',       '2008-03-24', 'M', 'Chief Tunde Babatunde Sr.',   '08078901239'),
(56,  'Oluchi Okafor',           '2009-07-07', 'F', 'Mrs. Amaka Okafor',           '07089012350'),
(57,  'Sola Adeyemi',            '2010-11-20', 'M', 'Mr. Wale Adeyemi',            '08090123461'),
(58,  'Amaka Obi',               '2008-05-03', 'F', 'Dr. Obiora Obi',              '07001234572'),
(59,  'Rasheed Mohammed',        '2009-09-16', 'M', 'Alhaji Ahmed Mohammed',       '08012345683'),
(60,  'Ugomma Eze',              '2010-01-29', 'F', 'Mr. Chinedu Eze',             '07023456794'),
(61,  'Niyi Ogunleye',           '2008-07-12', 'M', 'Mr. Seun Ogunleye',           '08034567806'),
(62,  'Obioma Nwachukwu',        '2009-03-25', 'F', 'Mrs. Chioma Nwachukwu',       '07045678907'),
(63,  'Hassan Aliyu',            '2010-08-08', 'M', 'Malam Aliyu Hassan',          '08056789018'),
(64,  'Chibueze Nwosu',          '2008-12-21', 'M', 'Mr. Chukwuemeka Nwosu',       '07067890129'),
(65,  'Feranmi Adebayo',         '2009-04-05', 'F', 'Mrs. Funke Adebayo',          '08078901240'),
(66,  'Maryam Bello',            '2010-10-17', 'F', 'Hajiya Sadiya Bello',         '07089012351'),
(67,  'Chukwuma Uwaifo',         '2008-02-01', 'M', 'Mr. Victor Uwaifo',           '08090123462'),
(68,  'Yetunde Fashola',         '2009-06-14', 'F', 'Mrs. Kemi Fashola',           '07001234573'),
(69,  'Adewale Okafor',          '2010-12-27', 'M', 'Chief Kunle Okafor',          '08012345684'),
(70,  'Ngozi Onyekwere',         '2008-04-10', 'F', 'Mrs. Eze Onyekwere',          '07023456795'),
(71,  'Saliu Lawal',             '2009-08-23', 'M', 'Alhaji Lawal Saliu Sr.',      '08034567807'),
(72,  'Chiamaka Adeyemi',        '2010-02-06', 'F', 'Mr. Seun Adeyemi',            '07045678908'),
(73,  'Onyeka Obi',              '2008-06-19', 'M', 'Dr. Nwoye Obi',               '08056789019'),
(74,  'Fatimat Garba',           '2009-10-02', 'F', 'Malam Garba Mohammed',        '07067890130'),
(75,  'Biodun Nwachukwu',        '2010-04-15', 'M', 'Mr. Emeka Nwachukwu',         '08078901241'),
(76,  'Uchenna Nwosu',           '2008-08-28', 'F', 'Mrs. Ngozi Nwosu',            '07089012352'),
(77,  'Damilola Adeleke',        '2009-12-11', 'M', 'Mr. Tayo Adeleke',            '08090123463'),
(78,  'Chidera Eze',             '2010-06-24', 'F', 'Mrs. Adaeze Eze',             '07001234574'),
(79,  'Emeka Babatunde',         '2008-01-07', 'M', 'Chief Olawale Babatunde',     '08012345685'),
(80,  'Hauwa Usman',             '2009-05-20', 'F', 'Alhaji Usman Bala',           '07023456796'),
(81,  'Adeola Adesanya',         '2010-09-03', 'F', 'Mrs. Bola Adesanya',          '08034567808'),
(82,  'Kelechi Okonkwo',         '2008-03-16', 'M', 'Mr. Emeka Okonkwo',           '07045678909'),
(83,  'Ruqayyah Ibrahim',        '2009-07-29', 'F', 'Alhaji Ibrahim Musa',         '08056789020'),
(84,  'Tochukwu Okafor',         '2010-11-11', 'M', 'Mr. Chukwuka Okafor',         '07067890131'),
(85,  'Bolanle Adeyemi',         '2008-05-25', 'F', 'Pastor Oluwatobi Adeyemi',    '08078901242'),
(86,  'Obafemi Ogunleye',        '2009-09-07', 'M', 'Chief Kunle Ogunleye',        '07089012353'),
(87,  'Chizaram Nwachukwu',      '2010-01-20', 'F', 'Mrs. Obiageli Nwachukwu',     '08090123464'),
(88,  'Idris Danjuma',           '2008-07-04', 'M', 'Malam Danjuma Idris Sr.',     '07001234575'),
(89,  'Oluwakemi Fashola',       '2009-03-17', 'F', 'Mr. Gbemi Fashola',           '08012345686'),
(90,  'Chukwuebuka Obi',         '2010-08-30', 'M', 'Dr. Ikechukwu Obi',           '07023456797'),
(91,  'Adunola Babatunde',       '2008-12-13', 'F', 'Chief Mrs. Titi Babatunde',   '08034567809'),
(92,  'Aminu Mohammed',          '2009-04-26', 'M', 'Alhaji Bashir Mohammed',      '07045678910'),
(93,  'Nwanneka Eze',            '2010-10-09', 'F', 'Mr. Chukwunonso Eze',         '08056789021'),
(94,  'Ife Adeleke',             '2008-02-22', 'M', 'Mr. Bade Adeleke',            '07067890132'),
(95,  'Habibat Bello',           '2009-06-05', 'F', 'Hajiya Sadiya Bello',         '08078901243'),
(96,  'Favour Uwaifo',           '2010-12-18', 'F', 'Mrs. Florence Uwaifo',        '07089012354'),
(97,  'Olatunde Ogunleye',       '2008-04-01', 'M', 'Mr. Biodun Ogunleye',         '08090123465'),
(98,  'Oluwafunmilayo Adeyemi',  '2009-08-14', 'F', 'Mrs. Folake Adeyemi',         '07001234576'),
(99,  'Chidubem Nwosu',          '2010-02-27', 'M', 'Chief Chijioke Nwosu',        '08012345687'),
(100, 'Zainab Abdullahi',        '2008-06-10', 'F', 'Alhaji Abdullahi Zakari',     '07023456798');

create table subjects(
subject_id int primary key,
subject_name varchar (30) not null
);

drop table subjects;
describe subjects;

alter table subjects add column teacher_id int;
alter table subjects add column class_id int;

alter table subjects
add constraint subject_teacher
foreign key (teacher_id) references teachers(teacher_id);

alter table subjects
add constraint class_subject
foreign key (class_id) references classes(class_id);

#Select all the data from the table "subjects"
select *
from subjects;

update subjects set teacher_id=subject_id,
					class_id=subject_id;

insert into subjects (subject_id, subject_name) values
(1,  'Mathematics'),
(2,  'English Language'),
(3,  'Basic Science'),
(4,  'Social Studies'),
(5,  'Civic Education'),
(6,  'Computer Science'),
(7,  'Economics'),
(8,  'Government'),
(9,  'Literature in English'),
(10, 'Geography'),
(11, 'Chemistry'),
(12, 'Physics'),
(13, 'Biology'),
(14, 'Agricultural Science'),
(15, 'Fine Arts'),
(16, 'Music'),
(17, 'Physical Education'),
(18, 'French Language'),
(19, 'Yoruba'),
(20, 'Igbo'),
(21, 'Hausa'),
(22, 'Technical Drawing'),
(23, 'Business Studies'),
(24, 'Financial Accounting'),
(25, 'Commerce'),
(26, 'Integrated Science'),
(27, 'Christian Religious Studies'),
(28, 'Islamic Religious Studies'),
(29, 'Health Education'),
(30, 'Home Economics'),
(31, 'Visual Arts'),
(32, 'Further Mathematics'),
(33, 'Data Processing'),
(34, 'Food and Nutrition'),
(35, 'Marketing'),
(36, 'Insurance'),
(37, 'Office Practice'),
(38, 'Book Keeping'),
(39, 'Catering Craft Practice'),
(40, 'Auto Mechanics'),
(41, 'Building Construction'),
(42, 'Electrical Installation'),
(43, 'Plumbing and Pipe Fitting'),
(44, 'Metal Work'),
(45, 'Wood Work'),
(46, 'Garment Making'),
(47, 'Animal Husbandry'),
(48, 'Crop Science'),
(49, 'Physical and Health Education'),
(50, 'Introductory Technology');


create table scores(
score_id int primary key,
term varchar(20) not null,
ca_score int,
exam_score int
);

alter table scores add column student_id int;
alter table scores add column subject_id int;

alter table scores
add constraint student_scores
foreign key (student_id) references students(student_id);

alter table scores
add constraint subject_scores
foreign key (subject_id) references subjects (subject_id);

drop table scores;

insert into scores (score_id, term, ca_score, exam_score) values
(1,  'First',  25, 60),
(2,  'First',  18, 45),
(3,  'Second', 28, 65),
(4,  'Third',  22, 58),
(5,  'First',  15, 40),
(6,  'Second', 27, 63),
(7,  'Third',  20, 55),
(8,  'First',  30, 70),
(9,  'Second', 24, 62),
(10, 'Third',  19, 48),
(11, 'First',  26, 66),
(12, 'Second', 12, 35),
(13, 'Third',  23, 57),
(14, 'First',  29, 68),
(15, 'Second', 17, 43),
(16, 'Third',  21, 52),
(17, 'First',  14, 38),
(18, 'Second', 28, 67),
(19, 'Third',  25, 61),
(20, 'First',  10, 30),
(21, 'Second', 27, 64),
(22, 'Third',  22, 56),
(23, 'First',  30, 69),
(24, 'Second', 16, 42),
(25, 'Third',  24, 59),
(26, 'First',  20, 50),
(27, 'Second', 29, 68),
(28, 'Third',  13, 36),
(29, 'First',  26, 63),
(30, 'Second', 18, 46),
(31, 'Third',  23, 58),
(32, 'First',  28, 66),
(33, 'Second', 11, 32),
(34, 'Third',  25, 62),
(35, 'First',  21, 54),
(36, 'Second', 30, 70),
(37, 'Third',  16, 44),
(38, 'First',  27, 65),
(39, 'Second', 19, 49),
(40, 'Third',  24, 60),
(41, 'First',  22, 55),
(42, 'Second', 14, 39),
(43, 'Third',  28, 67),
(44, 'First',  20, 51),
(45, 'Second', 26, 64),
(46, 'Third',  17, 45),
(47, 'First',  29, 69),
(48, 'Second', 23, 57),
(49, 'Third',  15, 41),
(50, 'First',  25, 63);

alter table scores add column total int;
update scores set total = ca_score + exam_score;

describe scores;

update scores set student_id=score_id,
					subject_id=score_id;
                    
#Select all the data from the table "scores"                   
select * 
from scores;

set sql_safe_updates=0;

#To obtain the students who got less than average
select * 
from scores
where total<50;

#To find the teachers who are in the Mathematics department
select *
from teachers
where department='Mathematics';

#To get the various class ids from the student database
select distinct class_id
from students;

#To get the full names of each teacher
select distinct full_name
from teachers;

#To find the top 5 performers of the exam
select *
from scores
order by exam_score desc
limit 5;

#To find the lowest 5 performers of the exam
select * 
from scores
order by exam_score asc
limit 5;

#Get the average exam score for Mathematics
select avg(exam_score) as Average_Maths_Score
from scores
where subject_id=1;

#Get the average exam score for Computer Science
select avg(exam_score) as Average_CS_Score
from scores
where subject_id=6;

#Count the number of students in JSS1A
select count(student_id) 
from students
where class_id =1;