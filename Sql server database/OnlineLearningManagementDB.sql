USE [ExamSystem]
GO
/****** Object:  StoredProcedure [dbo].[AddNewCourse]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddNewCourse]
(
	@courseCode nvarchar(50),
	@courseName nvarchar(50),
	@semester nvarchar(50),
	@year nvarchar(50),
	@enrollKey nvarchar(50)

)
As
	Insert into Course
	(courseCode,courseName,semester,year,enrollKey)
	values
	(@courseCode,@courseName,@semester,@year,@enrollKey)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewCourseQestion]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[AddNewCourseQestion]
(
	@questionID int ,
	@courseID int 

)
As
	Insert into CourseQuestion
	(questionID,courseID)
	values
	(@questionID,@courseID)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewDiscussion]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[AddNewDiscussion]
(
	@Name nvarchar(50),
	@courseID nvarchar(50),
	@post nvarchar(50),
	@email nvarchar(50)
	

)
As
	Insert into Discussion
	(Name,courseID,post,email)
	values
	(@Name,@courseID,@post,@email)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewNotice]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddNewNotice]
(
	@notice nvarchar(50),
	@date nvarchar(50),
	@courseID int
	

)
As
	Insert into Notice
	(notice,date,courseID)
	values
	(@notice,@date,@courseID)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewQuestion]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddNewQuestion]
(
	@question nvarchar(300),
	@choiceA nvarchar(50),
	@choiceB nvarchar(50),
	@choiceC nvarchar(50),
	@choiceD nvarchar(50),
	@teacherAns nvarchar(1),
	@studentAns nvarchar(1),
	@questionFor nvarchar(10),
	@set nvarchar(10),
	@courseID int

)
As
	Insert into Question
	(question,choiceA,choiceB,choiceC,choiceD,teacherAns,studentAns,questionFor,setq,courseID)
	values
	(@question,@choiceA,@choiceB,@choiceC,@choiceD,@teacherAns,@studentAns,@questionFor,@set,@courseID)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewQuizAns]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[AddNewQuizAns]
(
		@courseID int ,
		@studentID int,
		@questionID int,
		@Ans nvarchar(50)
	

)
As
	Insert into StudentAns
	(courseID,studentID,questionId,ans)
	values
	(@courseID,@studentID,@questionID,@Ans)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewStudent]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddNewStudent]
(
	@fullName nvarchar(50),
	@IdNumber nvarchar(50),
	@email nvarchar(50),
	@password nvarchar(50)

)
As
	Insert into Student
	(fullName,IdNumber,email,password)
	values
	(@fullName,@IdNumber,@email,@password)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewStudentCourse]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddNewStudentCourse]
(
	@studentID int ,
	@courseID int 

)
As
	Insert into StudentCourse
	(studentID,courseID)
	values
	(@studentID,@courseID)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewTeacher]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[AddNewTeacher]
(
	@fullName nvarchar(50),
	@email nvarchar(50),
	@password nvarchar(50)

)
As
	Insert into Teacher
	(fullName,email,password)
	values
	(@fullName,@email,@password)
	return

GO
/****** Object:  StoredProcedure [dbo].[AddNewTeacherCourse]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[AddNewTeacherCourse]
(
	@teacherID int ,
	@courseID int 

)
As
	Insert into TeacherCourse
	(teacherID,courseID)
	values
	(@teacherID,@courseID)
	return

GO
/****** Object:  StoredProcedure [dbo].[GetCourseDetails]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCourseDetails]
(
	@courseID int 
)
As
	select * from Course
		where 
			courseID=@courseID
		
	return

GO
/****** Object:  StoredProcedure [dbo].[GetCourseList]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetCourseList]
As
	select * from Course order by courseName
		
	return

GO
/****** Object:  StoredProcedure [dbo].[GetDiscussion]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetDiscussion]
(
	
	@courseID int
	
	
	

)
As
	select * from Discussion where @courseId=courseID order by Id DESC
	
		
	return

GO
/****** Object:  StoredProcedure [dbo].[GetNotice]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetNotice]
(
	
	@courseID int
	
	
	

)
As
	select * from Notice where @courseId=courseID order by noticeID DESC
	
		
	return

GO
/****** Object:  StoredProcedure [dbo].[GetPassword]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetPassword]
(
	@password nvarchar(50)
	

)
As
	select * from Signup where @password=password 
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionDetails]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetQuestionDetails]
	(
		@questionID int 
	)
AS
	select * from Question 
		where 
			questionID=@questionID
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetQuestionList]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetQuestionList]

(
		@courseID int,
		@setq nvarchar(10)
	)
	
AS
	select * from Question where courseID=@courseID and setq=@setq
		
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetStudentCourse]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetStudentCourse]
	(
		@courseID int,
		@studentID int
	)
AS
	select * from StudentCourse 
		where 
			courseID=@courseID and studentID=@studentID
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetStudentDetails]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetStudentDetails]
	(
		@email nvarchar(50),
		@password nvarchar(50)
	)
AS
	select * from Student 
		where 
			email=@email and password=@password
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetStudentList]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetStudentList]
	(
		@courseID int
		
	)
AS
	select * from Student,StudentCourse 
		where 
			Student.studentID=StudentCourse.studentID and StudentCourse.courseID=@courseID
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetStudentUser]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetStudentUser]
(
	@password nvarchar(50),
	@email nvarchar(50)
	

)
As
	select * from Student where @password=password and email=@email
GO
/****** Object:  StoredProcedure [dbo].[GetTeacherDetails]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTeacherDetails]
	(
		@email nvarchar(50),
		@password nvarchar(50)
	)
AS
	select * from Teacher 
		where 
			email=@email and password=@password
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[GetTeacherUser]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetTeacherUser]
(
	@password nvarchar(50),
	@email nvarchar(50)
	

)
As
	select * from Teacher where @password=password and email=@email
GO
/****** Object:  StoredProcedure [dbo].[QuizStat]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[QuizStat]
	(
		@courseID int,
		@setq nvarchar(10)
		
	)
AS
	select * from Question
		where 
			courseID = @courseID and setq = @setq
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[StartQuiz]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[StartQuiz]
(
	
	@courseID int,
	@setq nvarchar(10)

)
As
	update Question
	set	
		setq = @setq
	where 
		courseID=@courseID
	return

GO
/****** Object:  StoredProcedure [dbo].[UpdateQuestionInfo]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateQuestionInfo]
	(
		@questionID int ,
		@question nvarchar(300),
		@choiceA nvarchar(50),
		@choiceB nvarchar(50),
		@choiceC nvarchar(50),
		@choiceD nvarchar(50),
		@teacherAns nvarchar(1),
		@studentAns nvarchar(1),
		@questionFor nvarchar(10)
	)
AS
	update Question
	set	
		question=@question,
		choiceA=@choiceA,
		choiceB=@choiceB,
		choiceC=@choiceC,
		choiceD=@choiceD,
		teacherAns=@teacherAns,
		studentAns=@studentAns,
		questionFor=@questionFor
	where 
		questionID=@questionID
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[UpdateQuizAns]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[UpdateQuizAns]
	(
		@courseID int ,
		@studentID int,
		@questionID int,
		@Ans nvarchar(50)
		
	)
AS
	update StudentAns
	set	
		courseID=@courseID,
		studentID=@studentID,
		questionId=@questionID,
		ans=@Ans
		
	where 
		courseID=@courseID and questionId=@questionID and @studentID=studentID
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentInfo]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateStudentInfo]
	(
		@studentID int ,
		@fullName nvarchar(50),
		@IdNumber nvarchar(50),
		@email nvarchar(50),
		@password nvarchar(50)
	)
AS
	update Student
	set	
		fullName=@fullName,@IdNumber=IdNumber,
		email=@email,
		password=@password
	where 
		studentID=@studentID
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[UpdateTeacherInfo]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateTeacherInfo]
	(
		@teacherID int ,
		@fullName nvarchar(50),
		@email nvarchar(50),
		@password nvarchar(50)
	)
AS
	update Teacher
	set	
		fullName=@fullName,
		email=@email,
		password=@password
	where 
		teacherID=@teacherID
	RETURN

GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[courseID] [int] IDENTITY(1,1) NOT NULL,
	[courseCode] [nvarchar](50) NULL,
	[courseName] [nvarchar](50) NULL,
	[semester] [nvarchar](50) NULL,
	[year] [nvarchar](50) NULL,
	[enrollKey] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseMaterial]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseMaterial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[courseID] [int] NULL,
	[ContentType] [nvarchar](50) NULL,
	[Size] [bigint] NULL,
	[Data] [varbinary](max) NULL,
 CONSTRAINT [PK_Filess1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discussion]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discussion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[courseID] [int] NULL,
	[post] [nvarchar](50) NULL,
	[email] [nchar](50) NULL,
 CONSTRAINT [PK_Discussion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Filess]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Filess](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[courseID] [int] NULL,
	[ContentType] [nvarchar](50) NULL,
	[Size] [bigint] NULL,
	[Data] [varbinary](max) NULL,
 CONSTRAINT [PK_Filess] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[noticeID] [int] IDENTITY(1,1) NOT NULL,
	[notice] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[courseID] [int] NULL,
 CONSTRAINT [PK_Notice] PRIMARY KEY CLUSTERED 
(
	[noticeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[questionID] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](300) NULL,
	[choiceA] [nvarchar](50) NULL,
	[choiceB] [nvarchar](50) NULL,
	[choiceC] [nvarchar](50) NULL,
	[choiceD] [nvarchar](50) NULL,
	[teacherAns] [nvarchar](1) NULL,
	[studentAns] [nvarchar](1) NULL,
	[questionFor] [nvarchar](50) NULL,
	[setq] [nvarchar](10) NULL,
	[courseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[questionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Signup]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Signup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Signup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[IdNumber] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentAns]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAns](
	[studentAnsID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [int] NOT NULL,
	[courseID] [int] NOT NULL,
	[questionId] [int] NOT NULL,
	[ans] [nvarchar](50) NULL,
 CONSTRAINT [PK_StudentAns] PRIMARY KEY CLUSTERED 
(
	[studentAnsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentCourse]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [int] NULL,
	[courseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[teacherID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[teacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TeacherCourse]    Script Date: 9/8/2016 4:11:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[teacherID] [int] NULL,
	[courseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
