--create database [StudentAnalytic_New]
USE [StudentAnalytic_New]

CREATE TABLE [dbo].[AgeGroup] (
	[AgeGroupid] [int] primary key identity(1,1),
	[AgeGroupCatagories] [varchar](25) NULL
) 

CREATE TABLE [dbo].[Area] (
	[areaid] [int] primary key identity(1,1)NOT NULL,
	[areaname] [varchar](50) NULL
) 

CREATE TABLE [dbo].[Cochinginstitute] (
	[Cochinginstituteid] [int] primary key identity(1,1) NOT NULL,
	[institutename] [varchar](50) NULL
) 

CREATE TABLE [dbo].[Exam] (
	[examid] [int] primary key identity(1,1) NOT NULL,
	[examname] [varchar](50) NULL
) 

CREATE TABLE [dbo].[Gender] (
	[genderid] [int] primary key identity(1,1) NOT NULL,
	[Sex] [varchar](50) NULL
)

CREATE TABLE [dbo].[Parenteducation] (
	[parenteducationid] [int] primary key identity(1,1)  NOT NULL,
	[parentqualification] [varchar](50) NULL
) 

CREATE TABLE [dbo].[Parentincome] (
	[parentincomeid] [int] primary key identity(1,1) NOT NULL,
	[parentname] [varchar](30) NULL,
	[income] [varchar](50) NULL,
	[incomecategory] [varchar](50) NULL
) 

CREATE TABLE [dbo].[RaceEthnicity] (
	[raceEthnicityid] [int] primary key identity(1,1) NOT NULL,
	[caste] [varchar](70) NULL,
	[religion] [varchar](25) NULL
) 

CREATE TABLE [dbo].[ScoreCategory] (
	[Scorecategoryid] [int] primary key identity(1,1) NOT NULL,
	[marksranges] [varchar](25) NULL
) 

CREATE TABLE [dbo].[StudentRanks] (
	[StudentRanksid] [int] primary key identity(1,1) NOT NULL,
	[StudentRank] [int] NULL,
	[year] [int] NULL,
	[ExamID] [int] NULL,
) 

CREATE TABLE [dbo].[Students] (
	[studentid] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](45) NULL,
	[lastname] [varchar](45) NULL,
	[address] [varchar](45) NULL,
	[mobile] [varchar](25) NULL,
	[areaid] [int] FOREIGN KEY (areaid) REFERENCES  Area(areaid) NULL,
	[parentincomeid] [int] FOREIGN KEY (parentincomeid) REFERENCES  Parentincome(parentincomeid) NULL,
	[parenteducationid] [int] FOREIGN KEY (parenteducationid) REFERENCES  Parenteducation(parenteducationid) NULL,
	[Cochinginstituteid] [int] FOREIGN KEY (Cochinginstituteid) REFERENCES  Cochinginstitute(Cochinginstituteid) NULL,
	[AgeGroupid] [int] FOREIGN KEY (AgeGroupid) REFERENCES AgeGroup(AgeGroupid) NULL,
	[genderid] [int] FOREIGN KEY (genderid) REFERENCES Gender(genderid) NULL,
	[raceEthnicityid] [int] FOREIGN KEY (raceEthnicityid) REFERENCES RaceEthnicity(raceEthnicityid) NULL,
	[Scorecategoryid] [int] FOREIGN KEY (Scorecategoryid) REFERENCES ScoreCategory(Scorecategoryid) NULL,
	[examid] [int] FOREIGN KEY (examid) REFERENCES Exam(examid) NULL,
	[StudentRanksid] [int]  FOREIGN KEY (StudentRanksid) REFERENCES StudentRanks(StudentRanksid) NULL
)
---------------------------------------------------------------------------------------------------------------------------
insert into AgeGroup values('16-18')
insert into AgeGroup values('19-21')
insert into AgeGroup values('22-24')
insert into AgeGroup values('25-27')

select * from [dbo].[AgeGroup]


insert into Area values('Urban')
insert into Area values('Sub-Urban')
insert into Area values('Municipality')
insert into Area values('Corporation')
insert into Area values('City')

select * from [dbo].[Area]

insert into Cochinginstitute values('Peers Technology')
insert into Cochinginstitute values('Naresh Technology')
insert into Cochinginstitute values('BDPS Technology')
insert into Cochinginstitute values('AP Technology')
insert into Cochinginstitute values('Sathyam Technology')
insert into Cochinginstitute values('Nextwave Technology')

select * from [dbo].[Cochinginstitute]

insert into Exam values('PowerBI Certification')
insert into Exam values('SQL Server Basic Certification')
insert into Exam values('Oracle Certification')
insert into Exam values('MangoDB Certification')
insert into Exam values('Basic Azure Certification')

select * from [dbo].[Exam]

insert into Gender values('Male')
insert into Gender values('Female')
insert into Gender values('Others')

select * from [dbo].[Gender]

insert into Parenteducation values('No Education')
insert into Parenteducation values('Less than 10th')
insert into Parenteducation values('Under Graduate')
insert into Parenteducation values('Graduate')
insert into Parenteducation values('Post Graduate')

select * from [dbo].[Parenteducation]

insert into Parentincome values('Rohan','<60000','Lower Income Group')
insert into Parentincome values('Surya','<Between 60000 to 150000','Below Average')
insert into Parentincome values('Balu','<150000 to 600000','Average')
insert into Parentincome values('Gopal','600000 to 1800000','Above Average')
insert into Parentincome values('Krishna','Above 1800000','Comfortable')

select * from [dbo].[Parentincome]

insert into [dbo].[RaceEthnicity] values ('ST','Hindu')
insert into [dbo].[RaceEthnicity] values ('ST','Muslim')
insert into [dbo].[RaceEthnicity] values ('ST','Christian')
insert into [dbo].[RaceEthnicity] values ('SC','HINDU')
insert into [dbo].[RaceEthnicity] values ('SC','Muslim')
insert into [dbo].[RaceEthnicity] values ('SC','Christian')
insert into [dbo].[RaceEthnicity] values ('BC-A','Hindu')
insert into [dbo].[RaceEthnicity] values ('BC-A','Muslim')
insert into [dbo].[RaceEthnicity] values ('BC-A','Christian')
insert into [dbo].[RaceEthnicity] values ('BC-B','Hindu')
insert into [dbo].[RaceEthnicity] values ('BC-B','Muslim')
insert into [dbo].[RaceEthnicity] values ('BC-B','Christian')
insert into [dbo].[RaceEthnicity] values ('BC-C','Hindu')
insert into [dbo].[RaceEthnicity] values ('BC-C','Muslim')
insert into [dbo].[RaceEthnicity] values ('BC-C','Christian')
insert into [dbo].[RaceEthnicity] values ('BC-D','Hindu')
insert into [dbo].[RaceEthnicity] values ('BC-D','Muslim')
insert into [dbo].[RaceEthnicity] values ('BC-D','Christian')
insert into [dbo].[RaceEthnicity] values ('BC-E','Hindu')
insert into [dbo].[RaceEthnicity] values ('BC-E','Muslim')
insert into [dbo].[RaceEthnicity] values ('BC-E','Christian')
insert into [dbo].[RaceEthnicity] values ('OC','Hindu')
insert into [dbo].[RaceEthnicity] values ('OC','Muslim')
insert into [dbo].[RaceEthnicity] values ('OC','Christian')

select * from [dbo].[RaceEthnicity]

insert into ScoreCategory values('Less Than 40')
insert into ScoreCategory values('Between 40 and 60')
insert into ScoreCategory values('Between 60 and 75')
insert into ScoreCategory values('Between 75 and 90')
insert into ScoreCategory values('90+')

select * from [dbo].[ScoreCategory]


insert into StudentRanks values(10,2020,2)
insert into StudentRanks values(9,2020,3)


insert into StudentRanks values(8,2020,2)
insert into StudentRanks values(7,2020,1)
insert into StudentRanks values(6,2020,5)
insert into StudentRanks values(5,2020,3)

insert into StudentRanks values(4,2020,3)
insert into StudentRanks values(3,2020,4)
insert into StudentRanks values(2,2020,4)
insert into StudentRanks values(1,2020,1)

insert into StudentRanks values(20,2020,2)
insert into StudentRanks values(19,2020,2)
insert into StudentRanks values(18,2020,5)
insert into StudentRanks values(17,2020,3)

insert into StudentRanks values(16,2020,1)
insert into StudentRanks values(15,2020,3)
insert into StudentRanks values(14,2020,3)
insert into StudentRanks values(13,2020,2)

insert into StudentRanks values(12,2020,4)
insert into StudentRanks values(11,2020,5)
insert into StudentRanks values(30,2020,5)
insert into StudentRanks values(29,2020,1)

insert into StudentRanks values(28,2020,3)
insert into StudentRanks values(27,2020,3)
insert into StudentRanks values(26,2020,2)
insert into StudentRanks values(25,2020,1)

insert into StudentRanks values(24,2020,5)
insert into StudentRanks values(23,2020,2)
insert into StudentRanks values(22,2020,2)
insert into StudentRanks values(21,2020,4)

insert into StudentRanks values(40,2020,2)
insert into StudentRanks values(39,2020,3)
insert into StudentRanks values(38,2020,1)
insert into StudentRanks values(37,2020,3)

insert into StudentRanks values(36,2020,2)
insert into StudentRanks values(35,2020,3)
insert into StudentRanks values(34,2020,1)
insert into StudentRanks values(33,2020,5)

insert into StudentRanks values(32,2020,4)
insert into StudentRanks values(31,2020,4)
insert into StudentRanks values(50,2020,4)
insert into StudentRanks values(49,2020,1)

insert into StudentRanks values(48,2020,3)
insert into StudentRanks values(47,2020,2)
insert into StudentRanks values(46,2020,1)
insert into StudentRanks values(45,2020,1)

insert into StudentRanks values(44,2020,3)
insert into StudentRanks values(43,2020,5)
insert into StudentRanks values(42,2020,1)
insert into StudentRanks values(41,2020,1)

insert into StudentRanks values(60,2020,2)
insert into StudentRanks values(59,2020,2)
insert into StudentRanks values(58,2020,5)
insert into StudentRanks values(57,2020,3)

insert into StudentRanks values(56,2020,1)
insert into StudentRanks values(55,2020,1)
insert into StudentRanks values(54,2020,3)
insert into StudentRanks values(53,2020,4)

insert into StudentRanks values(52,2020,2)
insert into StudentRanks values(51,2020,5)

select * from [dbo].[StudentRanks]


---------------------------------------------------------------



 
INSERT INTO [dbo].[Students] VALUES
('Pasupuleti','kusumanjali','Bhadrachalam','8688113525',3,3,3,1,2,2,16,4,3,1)
INSERT INTO [dbo].[Students] VALUES
('Patti','tharunkumar','Palvancha','9390903308',3,2,2,3,2,1,9,3,5,2)
INSERT INTO [dbo].[Students] VALUES
('Chollagi','hemanthkumar','Mannguru','8465884271',3,4,3,2,2,1,6,3,1,3)
INSERT INTO [dbo].[Students] VALUES
('Darapuneni','Manasa','Bhadrachalam','7815976779',3,5,5,4,2,2,22,5,4,4)
INSERT INTO [dbo].[Students] VALUES
('Somanaboina','vamshi','Bhadrachalam','7801035928',3,2,2,1,3,1,16,3,5,5)
INSERT INTO [dbo].[Students] VALUES
('Kombathineni','Navaya sri','kudunur','9573816271',2,1,1,3,2,2,6,2,2,6)
INSERT INTO [dbo].[Students] VALUES
('Porandla','Hrushikeesh','Kothagudem','6302836487',3,3,3,1,2,1,16,4,4,7)
INSERT INTO [dbo].[Students] VALUES
('Avula','Sai priya','Palvancha','8106654184',3,1,2,3,2,2,16,2,1,8)
INSERT INTO [dbo].[Students] VALUES
('Nadhendla','Kavaya','Mannguru','9381955487',3,3,4,6,3,2,16,3,4,9)
INSERT INTO [dbo].[Students] VALUES
('Danukula','laxmi prasanna','khammam','7815374005',4,2,3,2,3,2,6,2,3,10)
INSERT INTO [dbo].[Students] VALUES
('kotte','Hiranmi','Moundikunta','6304594434',2,3,4,1,2,2,16,4,2,11)
INSERT INTO [dbo].[Students] VALUES
('Dammala','Shiny Sharon','Dornakal','7671856531',4,3,5,3,2,2,6,2,2,12)
INSERT INTO [dbo].[Students] VALUES
('Marmam','Ganesh','Banjara','9346350115',2,2,2,2,2,1,1,3,5,13)
INSERT INTO [dbo].[Students] VALUES
('Sreeramoju','Saaketh','Kothagudem','8074066501',3,3,3,1,2,1,10,3,1,14)
INSERT INTO [dbo].[Students] VALUES
('Guda','Yuvanth','Kothagudem','9010238712',3,2,5,2,3,1,16,2,2,15)
INSERT INTO [dbo].[Students] VALUES
('Soma','Samitha','Ramachandrapuram','9398414435',3,4,3,3,2,2,22,3,3,16)
INSERT INTO [dbo].[Students] VALUES
('Mudideni','Uttam kalyan','Nekkonda','9490390194',3,3,4,1,3,1,10,3,5,17)
INSERT INTO [dbo].[Students] VALUES
('Kotte','Tharun Teja','Punukula','9347652736',4,2,4,2,2,1,6,3,4,18)
INSERT INTO [dbo].[Students] VALUES
('Maloth','Aravind','Palvancha','9392574857',3,4,4,1,2,1,1,4,1,19)
INSERT INTO [dbo].[Students] VALUES
('Reddymasi','Usha sree','Aswapuram','9346113136',3,3,3,1,2,2,22,3,5,20)
INSERT INTO [dbo].[Students] VALUES
('Nelapatla','Manisha','Mannguru','6305190367',2,4,3,5,2,2,22,3,4,21)
INSERT INTO [dbo].[Students] VALUES
('Muppidi','Dinesh Kumar','Mannguru','9550327957',3,2,3,5,2,1,16,3,1,22)
INSERT INTO [dbo].[Students] VALUES
('Nimmala','Snehitha','Rudrampur','7013738571',3,4,3,2,2,2,16,3,2,23)
INSERT INTO [dbo].[Students] VALUES
('Chatla','Subashini','Dammagudam','9390244015',2,3,3,1,2,2,22,4,5,24)
INSERT INTO [dbo].[Students] VALUES
('Palle','Sai Teja','Pedda pally','8019703825',3,2,2,3,3,1,4,2,2,25)
INSERT INTO [dbo].[Students] VALUES
('Yeddelli','Nithya','Charla','9581235354',1,1,1,1,2,2,6,1,2,26)
INSERT INTO [dbo].[Students] VALUES
('Pottapinjara','Shivaji','Madhira','8522858873',1,2,2,2,3,1,4,1,3,27)
INSERT INTO [dbo].[Students] VALUES
('Gone','Prashanth','Reddy gudam','8639647966',3,2,3,1,2,1,6,2,4,28)
INSERT INTO [dbo].[Students] VALUES
('Ellangi','Keerthi kowshik','Palvancha','7569689257',3,4,3,2,3,1,6,1,3,29)
INSERT INTO [dbo].[Students] VALUES
('Payam','Kalyani','Ramavaram','7995933796',3,2,3,3,2,2,1,2,2,30)
INSERT INTO [dbo].[Students] VALUES
('Vankudothu','Malsur','Venkatagiri','7569352574',3,2,3,1,2,1,1,3,1,31)
INSERT INTO [dbo].[Students] VALUES
('Vemula','Sindhuja','Kothagudem','8074860432',3,3,3,1,2,2,10,3,3,32)
INSERT INTO [dbo].[Students] VALUES
('Kandi','Mohan','Kothagudem','7396351734',3,1,1,2,2,1,7,1,4,33)
INSERT INTO [dbo].[Students] VALUES
('Badri','Niveditha','Sathupalli','8328350239',3,1,2,2,2,2,6,2,1,34)
INSERT INTO [dbo].[Students] VALUES
('Guduru','Manohar','Palvancha','7569928412',2,3,1,2,1,1,16,2,5,35)
INSERT INTO [dbo].[Students] VALUES
('Mandha','shaini','Kothagudem','8309332507',3,3,3,3,2,2,4,2,3,36)
INSERT INTO [dbo].[Students] VALUES
('Koyyala','Ajith','Sripur Kaghaznagar','8247693501',2,1,1,3,2,1,4,1,4,37)
INSERT INTO [dbo].[Students] VALUES
('Kambala','Jayanth','Bethampudi','9908485047',3,1,1,3,3,1,16,1,4,38)
INSERT INTO [dbo].[Students] VALUES
('Bairu','Jothirmai','Bhadrachalam','8523074819',3,3,4,2,2,2,16,3,2,39)
INSERT INTO [dbo].[Students] VALUES
('Nalabolu','Sai Sowmya','Mannguru','8074071665',2,2,2,5,2,2,22,1,4,40)
INSERT INTO [dbo].[Students] VALUES
('Yerragorla','Dileep kumar','Jagannatha puram','7032268125',1,2,1,3,2,1,16,1,5,41)
INSERT INTO [dbo].[Students] VALUES
('Swargam','Manoj','Sarapaka','9347238796',2,2,3,1,2,1,10,2,3,42)
INSERT INTO [dbo].[Students] VALUES
('Tandra','Mounika','Palvancha','8639389448',3,2,3,1,2,2,22,2,2,43)
INSERT INTO [dbo].[Students] VALUES
('Gunda','Lokesh','Palvancha','7815990957',2,3,4,5,4,1,22,2,2,44)
INSERT INTO [dbo].[Students] VALUES
('vemasani','Balaji','Bhadrachalam','7330698748',3,3,2,6,2,1,22,3,4,45)
INSERT INTO [dbo].[Students] VALUES
('Mekala','Nandithkar','Kothagudem','9515959368',3,3,3,2,2,1,22,1,1,46)
INSERT INTO [dbo].[Students] VALUES
('Kandi','Abhilash','Mannguru','6305854480',3,2,3,1,2,1,22,2,3,47)
INSERT INTO [dbo].[Students] VALUES
('Dodda','Udaysri','Kothagudem','8520818798',3,2,3,3,2,2,10,1,5,48)
INSERT INTO [dbo].[Students] VALUES
('Kodem','Devika','Ramavaram','6303468283',3,1,1,2,2,2,16,1,4,49)
INSERT INTO [dbo].[Students] VALUES
('Rayudu','Sai Preetham','Kothagudem','9014184537',3,1,2,2,2,2,10,1,2,50)
INSERT INTO [dbo].[Students] VALUES
('Muvva','Reshma','Bayyaram','6309748620',3,2,3,6,2,2,22,2,1,51)
INSERT INTO [dbo].[Students] VALUES
('Lavudya','Dharamendra','Bommanapally','9505125857',3,3,3,1,2,1,1,3,3,52)
INSERT INTO [dbo].[Students] VALUES
('Sreedhara','RamaKrishna','Palvancha','6301082800',3,1,1,2,2,1,10,1,4,53)
INSERT INTO [dbo].[Students] VALUES
('Janjarla','RaviTeja','Yellandu','6309553087',3,1,2,6,2,1,4,2,1,54)
INSERT INTO [dbo].[Students] VALUES
('Yedla','Rahul','Palvancha','8919088975',3,2,3,6,2,1,22,3,1,55)
INSERT INTO [dbo].[Students] VALUES
('Bangaru','Sanjay','Kothagudem','6303014620',3,3,3,1,2,1,4,3,3,56)
INSERT INTO [dbo].[Students] VALUES
('Sahu','Ashuthosh','Kothagudem','939168084',3,1,1,2,2,1,10,1,4,57)
INSERT INTO [dbo].[Students] VALUES
('Therdhala','Sruthika','Palvancha','8919234493',3,1,2,2,2,2,16,2,1,58)
INSERT INTO [dbo].[Students] VALUES
('Rohit','Sharma','Mumbai','8919531366',5,5,5,6,4,1,16,5,4,59)
INSERT INTO [dbo].[Students] VALUES
('Virat','Singh','Bangalore','9133848323',5,4,4,5,3,1,9,4,1,60)


SELECT * FROM [dbo].[Students]
