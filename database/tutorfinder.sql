SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;

-- Database: `tutorfinder`
-- Table `admin_info`
CREATE DATABASE IF NOT EXISTS `tutorfinder` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `tutorfinder`;

CREATE TABLE `admin_info` (
  `iddddd` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;


INSERT INTO `admin_info` (`iddddd`, `username`, `password`, `email`, `id`) VALUES
(1, 'izaan' ,  '123' ,  'izaan@gmail.com' ,  '4220155956' ),
(2,  'usama' ,  '123' ,  'usama@gmail.com' ,  '4220155496' ),
(3,  'najam' ,  '123' ,  'najam@gmail.com' ,  '4692069569' );


-- Table `apply_g_post`

CREATE TABLE `apply_g_post` (
  `post_id` int(10) NOT NULL,
  `g_id` varchar(15) NOT NULL,
  `tutor_id` varchar(15) NOT NULL,
  `post_separate` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;


INSERT INTO `apply_g_post` (`post_id`, `g_id`, `tutor_id`, `post_separate`) VALUES
(1, '01698456325', '01232154971', 1),
(1, '01698456325', '01420420520', 2),
(1, '01698456325', '01535421971', 3),
(4, '01478963215', '017986352141', 4);


-- Table `guardian_info`

CREATE TABLE `guardian_info` (
  `id` int(10) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `nid` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `guardian_info` (`id`, `fullname`, `phone`, `nid`, `email`, `address`) VALUES
(1, 'Ramsha Javed', '01897589512', '2159857981', 'ramsha@gmail.com', 'Johar'),
(2, 'Saif ul Islam', '01897589512', '2159857981', 'Saif@gmail.com', 'Pechs'),
(3, 'Sokhina Begun', '01698456325', '5236548961', 'Sokhina@outlook.com', 'Saddar'),
(4, 'Senior Rubayet', '01897589512', '2159857981', 'sn@gmail.com', 'Rasham Gali'),
(5, 'Zain Noreen', '01897589512', '2159857981', 'zn@gmail.com', 'Jaffar Bhag'),
(6, 'Muslim', '01714014666', '6663336981', 'mizi@gmail.com', 'Malir'),
(7, 'Ayesha Akter', '01589411239', '966666499', 'ayesha@gmail.com', 'DHA'),
(8, 'Mizi Haque', '01478963215', '5698451236', 'mizi@gmail.com', 'Gotki'),
(9, 'Salamat Ullah', '01705566399', '9936655071', 'ullah@gmail.com', 'Alfalah'),
(10, 'Siddikur Rahman', '01698732561', '1652378961', 'rahman@gmail.com', 'Mirzapur');


-- Table `guardian_users`


CREATE TABLE `guardian_users` (
  `id` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;


--  `guardian_users`

INSERT INTO `guardian_users` (`id`, `username`, `password`) VALUES
('01', 'mizi', '123456789'),
('02', 'ayesha', '12345678'),
('03', 'nesa', 'nesa123456'),
('04', 'siddik02', '12345678'),
('05', 'ruba', '12345678'),
('06', 'ullah10', '12345678'),
('07', 'mizivhie', '12345678');

-- Table `g_post`
CREATE TABLE `g_post` (
  `post_id` int(10) NOT NULL,
  `g_id` varchar(15) NOT NULL,
  `subjects` varchar(15) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `salary` int(8) NOT NULL,
  `divisions` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--  `g_post`
INSERT INTO `g_post` (`post_id`, `g_id`, `subjects`, `medium`, `salary`, `divisions`, `address`, `dateTime`) VALUES
(1, '00001', 'Urdu', 'English', 5000, 'Karachi', 'Malir', '2021-08-13 00:39:07'),
(2, '00002', 'English', 'Urdu', 9000, 'Lahore', 'Johar', '2020-08-13 00:39:25'),
(3, '00003', 'Math', 'English', 6000, 'Islamabad', 'DHA', '2021-09-04 00:53:47'),
(4, '00004', 'Agriculture', 'Urdu', 3000, 'Multan', 'Pechs', '2021-09-04 00:54:07'),
(5, '00005', 'Science', 'Urdu', 2000, 'Fasialbad', 'saddar', '2021-09-04 01:46:40'),
(6, '00006', 'Math', 'English', 1000, 'Rawalpindi', 'saddar', '2020-09-04 01:46:52'),
(7, '00007', 'Sindhi', 'English', 1000, 'Karachi', 'Alfalah', '2021-09-04 01:47:12');

-- Table `g_post_temp`

CREATE TABLE `g_post_temp` (
  `post_id` int(10) NOT NULL,
  `g_id` varchar(15) NOT NULL,
  `subjects` varchar(15) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `salary` int(8) NOT NULL,
  `divisions` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16;


INSERT INTO `g_post_temp` (`post_id`, `g_id`, `subjects`, `medium`, `salary`, `divisions`, `address`, `dateTime`) VALUES
(08, '00008', 'Science', 'Urdu', 2000, 'Fasialbad', 'saddar', '2020-09-04 01:46:40'),
(09, '00009', 'Math', 'English', 1000, 'Rawalpindi', 'DHA', '2021-09-04 01:46:52');


-- Table `g_rating`

CREATE TABLE `g_rating` (
  `id` int(5) NOT NULL,
  `rating_value` int(5) NOT NULL,
  `rater_id` varchar(15) NOT NULL,
  `g_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `g_rating` (`id`, `rating_value`, `rater_id`, `g_id`) VALUES
(1, 0, '0001', '00001'),
(2, 3, '0002', '00002'),
(3, 3, '0003', '00003'),
(4, 1, '0004', '00004'),
(5, 3, '0005', '00005');

-- Table  `request_tutor`
CREATE TABLE `request_tutor` (
  `post_id` int(10) NOT NULL,
  `t_id` varchar(15) NOT NULL,
  `g_id` varchar(15) NOT NULL,
  `separate` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `request_tutor` (`post_id`, `t_id`, `g_id`, `separate`) VALUES
(1, '01420420520', '00001', 1);


-- Table `students_users`
CREATE TABLE `students_users` (
  `id` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;


INSERT INTO `students_users` (`id`, `username`, `password`) VALUES
('01', 'asfy', '12345'),
('02', 'bieah', '12345'),
('03', 'rayyan', '12345'),
('04', 'haris', '12345'),
('05', 'zain', '12345'),
('05', 'ali', '12345');

-- Table `student_info`
CREATE TABLE `student_info` (
  `id` int(10) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `institutionname` varchar(20) NOT NULL,
  `g_phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(15) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `student_info` (`id`, `fullname`, `institutionname`, `g_phone`, `email`, `address`, `dob`) VALUES
(1, 'Bakhtawar Mustafa', 'Maju', '01535421971', 'bm@gmail.com', 'lala', '2018-08-29'),
(2, 'Sanober Izaan', 'Stamford', '78965432112', 'si@gmail.com', 'Kodu', '2018-08-07'),
(3, 'Areeba Talha', 'Virtual', '01552431452', 'at@gmail.com', 'Notun', '2018-08-14'),
(4, 'Zubair Sheikh', 'DHA Suffa', '01552431452', 'zs@gmail.com', 'Banani', '2018-08-13'),
(5, 'Sufyan Ahmed', 'Comsat', '01552431452', 'sa@gmail.com', 'Banani', '2018-08-15'),
(6, 'Asfy Ahmed', 'KPS', '01535421891', 'aa@gmail.com', 'badda', '2018-08-14'),
(7, 'Begum jan', 'Greenwich', '01552431452', 'bj@gmail.com', 'Banani', '2018-08-22'),
(8, 'Muslim', 'SMIU', '01552431452', 'mu@gmail.com', 'Notun', '2018-08-21'),
(9, 'Rafia', 'Mehran', '01552431452', 'rs@gmail.com', 'Banani', '2018-08-14'),
(10, 'Khadija Kubra', 'AIUB', '01777777777', 'kk@yahoo.com', 'Sahjadpur', '1997-07-26');


-- Table `st_post`

CREATE TABLE `st_post` (
  `post_id` int(10) NOT NULL,
  `st_id` varchar(15) NOT NULL,
  `subjects` varchar(15) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `salary` int(8) NOT NULL,
  `divisions` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

CREATE TABLE `st_post_temp` (
  `post_id` int(10) NOT NULL,
  `st_id` varchar(15) NOT NULL,
  `subjects` varchar(15) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `salary` int(8) NOT NULL,
  `divisions` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16;


---Table tutor_info
CREATE TABLE `tutor_info` (
  `id` int(10) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `institutionname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nid` varchar(15) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `tutor_info` (`id`, `fullname`, `institutionname`, `phone`, `email`, `nid`, `address`) VALUES
(1, 'Usama Saleem', 'Maju', '03158167427', 'fa19bscs0046@gmail.com', '42201', 'Kali pahari'),
(2, 'Izaan Ahmed', 'NED', '03338596969', 'fa19bscs0049@gmail.com', '42258', 'North karachi'),
(3, 'Mohammad Ali', 'AIUB', '01535421971', 'mohamamin@gmail.com', '0153542197', 'hanly Bazar'),
(4, 'Rubayet', 'AIUB', '01896375961', 'ruba@gmail.com', '1234567895', 'Mohammd'),
(5, 'Guna Kibria', 'UITS', '01234567892', 'emon@gmail.com', '0123356789', 'Badda town'),
(6, 'Rasel Ahmed', 'Stamford', '78945612322', 'rasel@gmail.com', '9638527415', 'Malir Town'),
(7, 'Sarfuddin Mahmud', 'AIUB', '01463987451', 'sarfu@gmail.com', '1547893641', 'Basundhara Town'),
(8, 'Muslim', 'sdfs', '01535421975', 'jowel@gmail.com', '6663336981', 'badda'),
(9, 'Sifu Dada', 'America', '01420420520', 'sifuda@gmail.com', '4204204201', 'Norway'),
(10, 'Mohammad Alu', 'AIUB', '01352569854', 'alu@gmail.com', '1352569854', 'Uttara'),
(11, 'Sifat Hassan', 'AIUB', '017986352141', 'sifat@gmail.com', '1114445556', 'Mirpur'),
(12, 'Najam Hassan', 'MIST', '01714014669', 'fa19bscs0122@gmail.com', '9999888771', 'North Karachi');

-- Table  `tutor_post`
CREATE TABLE `tutor_post` (
  `post_id` int(10) NOT NULL,
  `tutor_id` varchar(15) NOT NULL,
  `subjects` varchar(15) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `salary` int(8) NOT NULL,
  `divisions` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16;


-- Table `tutor_post_temp`
CREATE TABLE `tutor_post_temp` (
  `post_id` int(10) NOT NULL,
  `tutor_id` varchar(15) NOT NULL,
  `subjects` varchar(15) NOT NULL,
  `medium` varchar(10) NOT NULL,
  `salary` int(8) NOT NULL,
  `divisions` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `tutor_post_temp` (`post_id`, `tutor_id`, `subjects`, `medium`, `salary`, `divisions`, `address`, `dateTime`) VALUES
(1, '00001', 'English', 'English', 8000, 'Karachi', 'Johar', '2020-08-13 00:37:44');


-- Table `tutor_users`
CREATE TABLE `tutor_users` (
  `id` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `tutor_users` (`id`, `username`, `password`) VALUES
('1', 'usama', '1234'),
('2', 'izaan', '1234'),
('3', 'najam', '1234'),
('4', 'ali', '1234'),
('5', 'ahmed', '1234');

-- Table `t_rating`
CREATE TABLE `t_rating` (
  `id` int(5) NOT NULL,
  `rating_value` int(5) NOT NULL,
  `rater_id` varchar(15) NOT NULL,
  `t_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

INSERT INTO `t_rating` (`id`, `rating_value`, `rater_id`, `t_id`) VALUES
(1, 5, '0001', '00001'),
(2, 1, '0002', '00002'),
(3, 1, '0003', '00003');


ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`iddddd`);

ALTER TABLE `apply_g_post`
  ADD PRIMARY KEY (`post_separate`);

ALTER TABLE `guardian_info`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `guardian_users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `g_post_temp`
  ADD PRIMARY KEY (`post_id`);

ALTER TABLE `g_rating`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `request_tutor`
  ADD PRIMARY KEY (`separate`);

ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `st_post_temp`
  ADD PRIMARY KEY (`post_id`);

ALTER TABLE `tutor_info`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tutor_post_temp`
  ADD PRIMARY KEY (`post_id`);

ALTER TABLE `t_rating`
  ADD PRIMARY KEY (`id`);

  -----------Ider sa Alter Table ka scene ha...
ALTER TABLE `admin_info`
  MODIFY `iddddd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `apply_g_post`
  MODIFY `post_separate` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=05;

ALTER TABLE `guardian_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `g_post_temp`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `g_rating`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=06;

ALTER TABLE `request_tutor`
  MODIFY `separate` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `student_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `st_post_temp`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tutor_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `tutor_post_temp`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `t_rating`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;


---
---DDL Commands for Tables/Users Creation
---Definition of Procedures, Function, Triggers
---Implementation of View

--- Procedure 
drop procedure Loaction_G;

create procedure Loaction_G(@ID int)
as
begin
select email from guardian_info where id = @ID
end;
exec dbo.Loaction_G @ID=1;
--- Function Banarha han Email Wala
create function Display_Email_G(@ID int) returns varchar(30)
as 
begin
return (select email from guardian_info where id = @ID)
end;

select dbo.Display_Email_G(1) as Guardian_Email;

--- Trigger banaya ha
---Insert ka

select * from guardian_info;
create trigger Insertion_Guardian on guardian_info
after insert as 
begin
print 'Data Has been Inserted'
end;
insert into guardian_info values
(11, 'Rehman jani', '0546987451', '545545458961', 'jani@gmail.com', 'Dark');

---Update ka ha trigger
drop trigger Update_Guardian;

create trigger Update_Guardian on guardian_info
after insert as 
begin
select * from inserted 
select * from deleted
print 'Data Has been Updated'
end;
update guardian_info set fullname='Fozia Naz <3'
where fullname='Mizi Haque';


--- Procedure 
drop procedure student_procedure;

create procedure student_procedure(@ID int)
as
begin
select email from student_info where id = @ID
end;
exec dbo.student_procedure @ID=1;


--- Function Banarha han Email Wala

create function Display_Email_S(@ID int) returns varchar(30)
as 
begin
return (select email from student_info where id = @ID)
end;

select dbo.Display_Email_S(1) as Student_Email;

--- Trigger banaya ha
---Insert ka

select * from student_info;
create trigger Insertion_Student on student_info
after insert as 
begin
print 'Data Has been Inserted'
end;
insert into student_info values
(20, 'Begum jan', 'Greenwich', '01552431452', 'bj@gmail.com', 'Banani', '2018-08-22'),

---Update ka ha trigger
drop trigger Update_Student;

create trigger Update_Student on student_info
after insert as 
begin
select * from inserted 
select * from deleted
print 'Data Has been Updated'
end;
update student_info set fullname='Hacker'
where fullname='Rafia';

--- Procedure 
drop procedure tutor_procedure;

create procedure tutor_procedure(@ID int)
as
begin
select email from tutor_info where id = @ID
end;
exec dbo.tutor_procedure @ID=1;


--- Function Banarha han Email Wala

create function Display_Email_T(@ID int) returns varchar(30)
as 
begin
return (select email from tutor_info where id = @ID)
end;

select dbo.Display_Email_T(1) as Tutor_Email;

--- Trigger banaya ha
---Insert ka

select * from tutor_info;
create trigger Insertion_Tutor on tutor_info
after insert as 
begin
print 'Data Has been Inserted'
end;
insert into tutor_info values
(7, 'Sarfuddin Mahmud', 'AIUB', '01463987451', 'sarfu@gmail.com', '1547893641', 'Basundhara Town'),

---Update ka ha trigger
drop trigger Update_Tutor;

create trigger Update_Tutor on tutor_info
after insert as 
begin
select * from inserted 
select * from deleted
print 'Data Has been Updated'
end;
update student_info set fullname='Ahmed Shah'
where fullname='Sarfuddin Mahmud';



----Written By Usama , Saleem FA19-BSCS-0046
--- Izaan Ahmed Khan , FA19-BSCS-0049
---- Najmul Hassan ,  FA19-BSCS-0122