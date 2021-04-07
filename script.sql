USE [master]
GO
/****** Object:  Database [Emp_SalaryDB]    Script Date: 11/16/2020 4:14:05 PM ******/
CREATE DATABASE [Emp_SalaryDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Emp_SalaryDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Emp_SalaryDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Emp_SalaryDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Emp_SalaryDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Emp_SalaryDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Emp_SalaryDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Emp_SalaryDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Emp_SalaryDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Emp_SalaryDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Emp_SalaryDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Emp_SalaryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Emp_SalaryDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Emp_SalaryDB] SET  MULTI_USER 
GO
ALTER DATABASE [Emp_SalaryDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Emp_SalaryDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Emp_SalaryDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Emp_SalaryDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Emp_SalaryDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Emp_SalaryDB] SET QUERY_STORE = OFF
GO
USE [Emp_SalaryDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Emp_SalaryDB]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/16/2020 4:14:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Department_ID] [int] IDENTITY(1,1) NOT NULL,
	[Department_Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Department_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 11/16/2020 4:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[Designation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Designation_Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Designation_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Details]    Script Date: 11/16/2020 4:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Details](
	[Emp_ID] [int] IDENTITY(12500,1) NOT NULL,
	[Emp_Name] [varchar](25) NULL,
	[Emp_Gender] [varchar](25) NULL,
	[Emp_DOB] [datetime] NULL,
	[Emp_Address] [varchar](40) NULL,
	[Emp_Email] [varchar](25) NULL,
	[Emp_Contact] [int] NULL,
	[Emp_Pic] [varchar](250) NULL,
	[Emp_Basic_Salary] [money] NULL,
	[Emp_Joining] [datetime] NULL,
	[Designation_Name] [varchar](20) NULL,
	[Department_Name] [varchar](20) NULL,
	[Gender_Name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeProfile]    Script Date: 11/16/2020 4:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[salary] [float] NOT NULL,
	[country] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[photopath] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 11/16/2020 4:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Gender_Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Gender_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 11/16/2020 4:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Department_ID], [Department_Name]) VALUES (1, N'Accounce')
INSERT [dbo].[Department] ([Department_ID], [Department_Name]) VALUES (3, N'HR')
INSERT [dbo].[Department] ([Department_ID], [Department_Name]) VALUES (2, N'IT')
INSERT [dbo].[Department] ([Department_ID], [Department_Name]) VALUES (4, N'Marketing')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (6, N'Analyst')
INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (5, N'Asst. Manager')
INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (2, N'executive')
INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (1, N'Head')
INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (4, N'Manager')
INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (8, N'Professional')
INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (7, N'Programer')
INSERT [dbo].[Designation] ([Designation_ID], [Designation_Name]) VALUES (3, N'Senior executive')
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Employee_Details] ON 

INSERT [dbo].[Employee_Details] ([Emp_ID], [Emp_Name], [Emp_Gender], [Emp_DOB], [Emp_Address], [Emp_Email], [Emp_Contact], [Emp_Pic], [Emp_Basic_Salary], [Emp_Joining], [Designation_Name], [Department_Name], [Gender_Name]) VALUES (12501, N'arif', NULL, CAST(N'2020-11-17T00:00:00.000' AS DateTime), N'dhaka', NULL, 12457, N'~/Images/20201109154649231.jpg', 215400.0000, CAST(N'2020-11-17T00:00:00.000' AS DateTime), N'Manager', N'Marketing', N'Male')
INSERT [dbo].[Employee_Details] ([Emp_ID], [Emp_Name], [Emp_Gender], [Emp_DOB], [Emp_Address], [Emp_Email], [Emp_Contact], [Emp_Pic], [Emp_Basic_Salary], [Emp_Joining], [Designation_Name], [Department_Name], [Gender_Name]) VALUES (12503, N'ariful', NULL, CAST(N'2020-11-18T00:00:00.000' AS DateTime), N'dhaka', NULL, 1245787, N'~/Images/20201110171248951.jpg', 12546.0000, CAST(N'2020-11-02T00:00:00.000' AS DateTime), N'Head', N'Marketing', N'Male')
INSERT [dbo].[Employee_Details] ([Emp_ID], [Emp_Name], [Emp_Gender], [Emp_DOB], [Emp_Address], [Emp_Email], [Emp_Contact], [Emp_Pic], [Emp_Basic_Salary], [Emp_Joining], [Designation_Name], [Department_Name], [Gender_Name]) VALUES (12504, N'Rajib', N'Male', CAST(N'1971-01-01T00:00:00.000' AS DateTime), N'Narshingdi', N'Raju_Babu@gmail.com', 1111214542, N'010121.jpg', 0.1100, CAST(N'1952-01-01T00:00:00.000' AS DateTime), N'Analyst', N'Marketing', N'Others')
SET IDENTITY_INSERT [dbo].[Employee_Details] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (2, N'Female')
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (1, N'Male')
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (3, N'Others')
SET IDENTITY_INSERT [dbo].[Gender] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserId], [Address], [Email], [FullName], [Mobile], [Password], [UserName]) VALUES (1, N'dhaka', N'arif@gmail.com', N'arif', N'01854739177', N'123', N'ariful')
INSERT [dbo].[UserInfo] ([UserId], [Address], [Email], [FullName], [Mobile], [Password], [UserName]) VALUES (2, N'Dhaka', N'Shakil@gmail.com', N'Shakil', N'0124578787', N'123', N'Shak')
INSERT [dbo].[UserInfo] ([UserId], [Address], [Email], [FullName], [Mobile], [Password], [UserName]) VALUES (3, N'dhaka', N'sharif@gmail.com', N'sharif', N'01854739177', N'123', N'shariful')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
ALTER TABLE [dbo].[Employee_Details]  WITH CHECK ADD FOREIGN KEY([Department_Name])
REFERENCES [dbo].[Department] ([Department_Name])
GO
ALTER TABLE [dbo].[Employee_Details]  WITH CHECK ADD FOREIGN KEY([Designation_Name])
REFERENCES [dbo].[Designation] ([Designation_Name])
GO
ALTER TABLE [dbo].[Employee_Details]  WITH CHECK ADD FOREIGN KEY([Gender_Name])
REFERENCES [dbo].[Gender] ([Gender_Name])
GO
USE [master]
GO
ALTER DATABASE [Emp_SalaryDB] SET  READ_WRITE 
GO
