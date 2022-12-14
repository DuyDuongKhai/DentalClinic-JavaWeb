USE [master]
GO
/****** Object:  Database [DentalClinic]    Script Date: 8/4/2022 4:57:06 PM ******/
CREATE DATABASE [DentalClinic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DentalClinic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DentalClinic.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DentalClinic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DentalClinic_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DentalClinic] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DentalClinic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DentalClinic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DentalClinic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DentalClinic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DentalClinic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DentalClinic] SET ARITHABORT OFF 
GO
ALTER DATABASE [DentalClinic] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DentalClinic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DentalClinic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DentalClinic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DentalClinic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DentalClinic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DentalClinic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DentalClinic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DentalClinic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DentalClinic] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DentalClinic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DentalClinic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DentalClinic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DentalClinic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DentalClinic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DentalClinic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DentalClinic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DentalClinic] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DentalClinic] SET  MULTI_USER 
GO
ALTER DATABASE [DentalClinic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DentalClinic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DentalClinic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DentalClinic] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DentalClinic] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DentalClinic] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DentalClinic] SET QUERY_STORE = OFF
GO
USE [DentalClinic]
GO
/****** Object:  Table [dbo].[tblAppoinment_details]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAppoinment_details](
	[appoinmentID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](225) NULL,
	[email] [nvarchar](50) NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[appointment_date] [date] NULL,
	[note] [nvarchar](225) NULL,
	[serviceID] [int] NULL,
	[doctorID] [int] NULL,
	[wkID] [int] NULL,
	[status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[appoinmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBlogs]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBlogs](
	[blogID] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[img] [int] NULL,
	[date_up] [date] NULL,
	[detail_des] [nvarchar](1000) NULL,
	[content] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComments]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[rate] [int] NULL,
	[contentCmt] [nvarchar](500) NULL,
	[status] [nvarchar](255) NULL,
	[userID] [int] NULL,
	[name] [nvarchar](225) NULL,
	[doctorID] [int] NULL,
	[cmtDate] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiscount]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiscount](
	[discountID] [int] NOT NULL,
	[discount_value] [float] NULL,
	[expiration_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[discountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDoctors]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoctors](
	[doctorID] [int] NOT NULL,
	[userID] [int] NULL,
	[education] [nvarchar](225) NULL,
	[specialize] [int] NULL,
	[level] [nvarchar](255) NULL,
	[experience_year] [int] NULL,
	[wkID] [int] NULL,
	[slot_book] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[doctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMedicine]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMedicine](
	[medicineID] [int] NOT NULL,
	[medicineName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblMedicine] PRIMARY KEY CLUSTERED 
(
	[medicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPatients]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPatients](
	[patientID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](255) NULL,
	[email] [nvarchar](225) NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[doctorID] [int] NULL,
	[serviceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[patientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPrescription]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPrescription](
	[prescriptionID] [int] NOT NULL,
	[userID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPrescription_details]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPrescription_details](
	[medicineID] [int] NOT NULL,
	[prescriptionID] [int] NOT NULL,
	[create_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[medicineID] ASC,
	[prescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPrice_list]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPrice_list](
	[ID] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [float] NULL,
	[serviceID] [int] NULL,
	[discountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReply]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReply](
	[replyID] [int] NOT NULL,
	[content] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[replyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[roleID] [int] NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblService]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblService](
	[serviceID] [int] NOT NULL,
	[serviceName] [nvarchar](50) NOT NULL,
	[description1] [nvarchar](1000) NULL,
	[description2] [nvarchar](1000) NULL,
	[description3] [nvarchar](1000) NULL,
	[title1_img] [varchar](20) NULL,
	[title2_img] [varchar](20) NULL,
	[title3_img] [varchar](20) NULL,
	[title1] [nvarchar](200) NULL,
	[title2] [nvarchar](255) NULL,
	[title3] [nvarchar](255) NULL,
	[demo] [nvarchar](255) NULL,
	[service_img] [nvarchar](255) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblService] PRIMARY KEY CLUSTERED 
(
	[serviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTime_table]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTime_table](
	[ID] [int] NOT NULL,
	[weekdays] [nvarchar](255) NULL,
	[doctorID] [int] NULL,
	[work_time] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[age] [int] NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[gender] [int] NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[img] [nvarchar](100) NULL,
	[fullName] [nvarchar](100) NULL,
	[bio] [nvarchar](500) NULL,
	[userName] [nvarchar](20) NULL,
	[password] [nvarchar](20) NULL,
	[roleID] [int] NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWorking_time]    Script Date: 8/4/2022 4:57:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWorking_time](
	[wkID] [int] NOT NULL,
	[wkTime] [nvarchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[wkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAppoinment_details] ON 

INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (1, N'HOANG QUANG HOA', N'hquanghoa25092001@gmail.com', N'0912134773', CAST(N'2022-06-23' AS Date), N'Toi la Hoa', 1, 1, 1, N'processing')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (2, N'HOANG QUANG HOA', N'hquanghoa25092001@gmail.com', N'0912134773', CAST(N'2022-06-24' AS Date), N'Dat day', 2, 2, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (3, N'NGUYEN QUOC BAO LONG', N'hquanghoa25092001@gmail.com', N'0384510456', CAST(N'2022-06-25' AS Date), N'Long ne', 1, 1, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (4, N'NGUYEN QUOC BAO LONG', N'hquanghoa25092001@gmail.com', N'0384510456', CAST(N'2022-06-28' AS Date), N'nho cay vao bac sy', 4, 4, 3, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (5, N'TRAN QUANG DAT', N'hquanghoa25092001@gmail.com', N'0384510333', CAST(N'2022-06-29' AS Date), N'nhanh nhanh toi voi nha', 1, 1, 1, N'processing')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (6, N'DUONG KHAI DUY', N'hoahqse150436@fpt.edu.vn', N'0292138123', CAST(N'2022-06-29' AS Date), N'Zy toi choi', 1, 1, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (7, N'DUONG KHAI DUY', N'hoahqse150436@fpt.edu.vn', N'0292138123', CAST(N'2022-07-01' AS Date), N'tram phan nho bsi', 1, 1, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (8, N'TRAN BA CONG', N'hoahqse150436@fpt.edu.vn', N'0854734222', CAST(N'2022-07-03' AS Date), N'Cong toi ne', 2, 2, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (9, N'DUONG KHAI DUY', N'hoahqse150436@fpt.edu.vn', N'0292138123', CAST(N'2022-07-20' AS Date), N'Toi muon gap bac sy', 2, 2, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (10, N'DUONG KHAI DUY', N'hoahqse150436@fpt.edu.vn', N'0292138123', CAST(N'2022-07-21' AS Date), N'toi laHoa', 1, 1, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (11, N'DUONG KHAI DUY', N'dat@gmail.com', N'0292138123', CAST(N'2022-07-21' AS Date), N'Toi la hoa', 3, 3, 2, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (12, N'DUONG KHAI DUY', N'dat@gmail.com', N'0292138123', CAST(N'2022-07-25' AS Date), N'Zy neee', 2, 2, 1, N'not examined')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (13, N'User', N'Cong123@gmail.com', N'0837546989', CAST(N'2022-08-02' AS Date), N'Cong che', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (14, N'Khac Trung', N'bund4utuongot@gmail.com', N'0384510456', CAST(N'2022-08-03' AS Date), N'dau rang qua', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (15, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-03' AS Date), N'Duy day', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (16, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-03' AS Date), N'Duy day', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (17, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-03' AS Date), N'Duy day', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (18, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-03' AS Date), N'Duy day', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (19, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-03' AS Date), N'jkjk', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (20, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'ddd', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (21, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'ddd', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (22, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'llk', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (23, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-02' AS Date), N'hahha', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (24, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'dd', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (25, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (26, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (27, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (28, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (29, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-05' AS Date), N'', 1, 1, 1, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (30, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-07' AS Date), N'ss', 1, 1, 2, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (31, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-07' AS Date), N'ss', 1, 1, 2, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (32, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-07' AS Date), N'ss', 1, 1, 2, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (33, N'DUONG KHAI DUY', N'hquanghoa25092001@gmail.com', N'0292138123', CAST(N'2022-08-07' AS Date), N'', 1, 1, 2, N'deleted')
INSERT [dbo].[tblAppoinment_details] ([appoinmentID], [fullName], [email], [phoneNumber], [appointment_date], [note], [serviceID], [doctorID], [wkID], [status]) VALUES (34, N'jenie', N'hoahqse150436@fpt.edu.vn', N'0384510456', CAST(N'2022-08-05' AS Date), N'toi la hoa', 1, 1, 1, N'deleted')
SET IDENTITY_INSERT [dbo].[tblAppoinment_details] OFF
GO
SET IDENTITY_INSERT [dbo].[tblComments] ON 

INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (5, 4, N'really good', N'Available', 1, N'HOANG QUANG HOA', 1, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (6, 4, N'bad !!', N'Unavailable', 1, N'TRAN QUANG DAT', 1, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (7, 4, N'Chuyen mon kem', N'Available', 1, N'TRAN QUANG DAT', 1, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (19, 4, N'Bad', N'Unavailable', 1, N'HOANG QUANG HOA', 1, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (20, 3, N'Te qua', N'Deleted', 1, N'HOANG QUANG HOA', 1, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (21, 5, N'Perfect', N'Available', 1, N'HOANG QUANG HOA', 5, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (22, 3, N'really good', N'Available', 1, N'HOANG QUANG HOA', 5, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (23, 4, N'qua gioi', N'Available', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (24, 4, N'tuyet voi', N'Deleted', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (25, 3, N'Tay nghe kem', N'Unavailable', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (26, 4, N'gioi thuc su', N'Available', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (27, 4, N'chuyen mon cao', N'Available', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (28, 4, N'qua hieu tam ly', N'Available', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (29, 4, N'qua nhiet tinh', N'Unavailable', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (30, 4, N'qua hai huoc', N'Unavailable', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (31, 4, N'vui ve hoa dong', N'Available', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (32, 4, N'luon vui tuoi', N'Unavailable', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (33, 4, N'gioi qua', N'Unavailable', 1, N'HOANG QUANG HOA', 2, N'2022-06-22')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (34, 3, N'qua dinh', N'Unavailable', 1, N'TRAN QUANG DAT', 5, N'2022-06-27')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (35, 4, N'dinh cua chop', N'Unavailable', 1, N'DUONG KHAI DUY', 5, N'2022-06-28')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (36, 1, N'het cho che', N'Unavailable', 1, N'DUONG KHAI DUY', 2, N'2022-06-29')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (37, 2, N'bad !!', N'Unavailable', 1, N'DUONG KHAI DUY', 2, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (38, 2, N'bac sy qua te', N'Unavailable', 1, N'DUONG KHAI DUY', 2, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (39, 2, N'bac sy qua te', N'Unavailable', 1, N'DUONG KHAI DUY', 2, N'2022-07-21')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (40, 4, N'Bac Sy dep trai qua', N'Unavailable', 1, N'DUONG KHAI DUY', 1, N'2022-07-23')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (45, 4, N'aaa', N'Deleted', 1, N'DUONG KHAI DUY', 1, N'2022-08-03')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (46, 4, N'aaa', N'Deleted', 1, N'DUONG KHAI DUY', 1, N'2022-08-03')
INSERT [dbo].[tblComments] ([CommentID], [rate], [contentCmt], [status], [userID], [name], [doctorID], [cmtDate]) VALUES (47, 4, N'bac sy gioi qua', N'Deleted', 33, N'jenie', 2, N'2022-08-04')
SET IDENTITY_INSERT [dbo].[tblComments] OFF
GO
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (1, 0.05, CAST(N'2022-04-01' AS Date))
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (2, 0.05, CAST(N'2022-06-01' AS Date))
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (3, 0.1, CAST(N'2022-09-02' AS Date))
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (4, 0.25, CAST(N'2022-07-04' AS Date))
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (5, 0.05, CAST(N'2022-08-05' AS Date))
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (6, 0.25, CAST(N'2022-09-02' AS Date))
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (7, 0.2, CAST(N'2022-07-09' AS Date))
INSERT [dbo].[tblDiscount] ([discountID], [discount_value], [expiration_date]) VALUES (8, 0, CAST(N'2022-12-30' AS Date))
GO
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (1, 3, N'Tốt nghiệp đại học Y khoa Canada', 1, N'Thạc sỹ chuyên ngành nha khoa', 6, 1, 3)
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (2, 5, N'Tốt nghiệp đại học Y khoa Canada', 2, N'Tiến sỹ chuyên ngành nha khoa', 12, 1, 4)
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (3, 6, N'Tốt nghiệp đại học Y khoa Canada', 3, N'Thạc sỹ chuyên ngành nha khoa', 8, 2, 2)
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (4, 7, N'Tốt nghiệp đại học Y khoa Canada', 4, N'Thạc sỹ chuyên ngành nha khoa', 6, 3, 1)
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (5, 8, N'Tốt nghiệp đại học Y khoa Canada', 5, N'Thạc sỹ chuyên ngành nha khoa', 7, 4, 2)
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (6, 9, N'Tốt nghiệp đại học Y khoa Canada', 6, N'Thạc sỹ chuyên ngành nha khoa', 4, 4, 1)
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (7, 11, N'Tốt nghiệp đại học Y khoa Canada', 7, N'Thạc sỹ chuyên ngành nha khoa', 7, 5, 2)
INSERT [dbo].[tblDoctors] ([doctorID], [userID], [education], [specialize], [level], [experience_year], [wkID], [slot_book]) VALUES (8, 13, N'Tốt nghiệp đại học Y khoa Canada', 8, N'Tiến sỹ chuyên ngành nha khoa', 3, 5, 3)
GO
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (1, N'ETK (France)', 600.23, 1, 4)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (2, N'NR Lines (Korea)', 400.3, 1, 3)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (3, N'Hiossen (USA)', 300.44, 1, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (4, N'SIC (Switzerland)', 445.26, 1, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (5, N'C-Tech (Italia)', 560.13, 1, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (6, N'Neodent Straumann (Switzerland)', 560.23, 1, 3)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (7, N'Straumann SL Active ® (Switzerland)', 940.33, 1, 3)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (8, N'Răng sứ B1 (Germany)', 89.3, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (9, N'Răng sứ Titanium (Germany)', 105.44, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (10, N'Răng sứ Full Zirconia (Germany)', 220.26, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (11, N'Răng sứ Zirconia DDBio (Germany)', 225.13, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (12, N'Răng sứ Ceramill Zolid (Germany)', 250.23, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (13, N'Răng sứ Cercon (Germany)', 225.33, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (14, N'Răng sứ Cercon HT (Germany)', 270.33, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (15, N'Răng sứ 3M Lava Plus (USA)', 270.35, 2, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (16, N'Veneer IPS e.max® Press (Germany)', 255.3, 4, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (17, N'Veneer IPS e.max® Press Multi (Germany)', 306.44, 4, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (18, N'Mắc cài kim loại (MCKL)', 920.26, 5, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (19, N'Mắc cài kim loại tự đóng', 325.13, 5, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (20, N'Mắc cài sứ', 400.23, 5, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (21, N'Mắc cài sứ tự đóng', 560.33, 5, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (22, N'Invisalign Moderate', 3000.33, 5, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (23, N'Invisalign Combined', 4300.35, 5, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (24, N'Đắp mặt răng', 36.26, 6, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (25, N'Đắp kẽ hở, thưa', 42.13, 6, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (26, N'Inlay – Onlay', 122.23, 6, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (27, N'Cắt nướu kéo dài thân răng', 124.33, 6, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (28, N'Làm dài thân răng nguyên hàm', 500.33, 6, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (29, N'Đính đá, kim cương lên răng (công đính)', 20.35, 6, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (30, N'Tẩy trắng răng pola office 35%', 103.33, 7, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (31, N'Tẩy trắng răng tại nhà', 87.35, 7, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (32, N'Cạo vôi răng định kỳ', 10.26, 8, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (33, N'Nạo túi, điều trị nha chu', 50.13, 8, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (34, N'Nhổ răng khôn', 90.23, 8, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (35, N'Tiểu phẫu răng khó mọc ngầm, lệch', 104.33, 8, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (36, N'Trám răng sâu (Composite)', 20.33, 8, 8)
INSERT [dbo].[tblPrice_list] ([ID], [name], [price], [serviceID], [discountID]) VALUES (37, N'Nhổ răng sữa', 5.35, 8, 8)
GO
INSERT [dbo].[tblRole] ([roleID], [roleName]) VALUES (1, N'admin')
INSERT [dbo].[tblRole] ([roleID], [roleName]) VALUES (2, N'manager')
INSERT [dbo].[tblRole] ([roleID], [roleName]) VALUES (3, N'user')
INSERT [dbo].[tblRole] ([roleID], [roleName]) VALUES (4, N'doctor')
INSERT [dbo].[tblRole] ([roleID], [roleName]) VALUES (5, N'employee')
GO
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (1, N'CẤY GHÉP IMPLANT', N'Cấy ghép Implant là phương pháp trồng răng giả hiện đại và ưu việt nhất. Một trụ Implant được cấy trực tiếp vào xương hàm ở vị trí mất răng. Trụ Implant sẽ tích hợp hoàn toàn vào xương hàm và trở thành 1 chân răng vững chãi, ổn định trọn đời.<br>
Sau đó, mão sứ được cố định lên trên trụ Implant và răng đã được khôi phục hoàn toàn với: sức nhai khỏe, ăn nhai thuận tiện, ngăn tiêu xương hàm, thẩm mỹ cao và sử dụng trọn đời.', N'- Máy CT Cone Beam (USA), máy X-Quang 3 chiều KTS Gendex 700 Siries (USA), xét nghiệm máu tại chỗ.<br>
- Máy cắm implant hiện đại PS500 LED (Anh) & phần mềm hỗ trợ cấy ghép Implant Simplant <br>
- Ghế nha Kavo KAVO Primus 1058 Life hiện đại <br>
- Phòng phẫu thuật hiện đại, vô trùng bằng hệ thống cực tím', N'- Trụ Implant từ những thương hiệu toàn cầu: Straumann (Thụy sỹ), Hiossen (Mỹ), Tekka (Pháp), Nobel Biocare, Dentium Super Line (Mỹ)... Đều được bảo hành trọn đời tại Nha khoa Peace Dentistry <br>
- Răng sứ trên Implant chính hãng của Đức, Mỹ: Zirconia, Cercon HT, Titanium, Lava Plus...bảo hành đến 15 năm <br>
- Chính sách bảo hành rõ ràng, uy tín, hỗ trợ tối đa', N'tt22.jpg', N'tt02.jpg', N'tt03.jpg', N'Cấy ghép Implant là gì ?', N'Thiết bị cấy ghép Implant hiện đại (Mỹ, Anh, Úc)', N'Implant cao cấp, chính hãng – Bảo hành trọn đời', N'Cấy ghép Implant là phương pháp trồng răng giả hiện đại và ưu việt nhất. Một trụ Implant...', N'implant.png', N'Available')
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (2, N'THẨM MỸ RĂNG SỨ', N'Peace Dentistry Tp.HCM có 12 bác sĩ, trong đó chuyên khoa thẩm mỹ nha khoa có 6 bác sĩ đều tốt nghiệp loại giỏi Đại Học Y Dược Tp.HCM, đào tạo sau đại học và đào tạo chuyên sâu về thẩm mỹ nha khoa trong và ngoài nước, có nhiều năm kinh nghiệm.', N'Phòng điều trị hiện đại kết nối với hệ thống cơ sở dữ liệu trung tâm <br>
 Hệ thống chẩn đoán hình ảnh CT Cone Beam (USA), máy X-Quang 3 chiều KTS Gendex 700 Siries (USA), Máy chụp phim Quanh chóp Gendex (USA) <br>
 Ghế nha Kavo KAVO Primus 1058 Life và Osstem hiện đại và tích hợp đầu đủ thiết bị điều trị nha khoa <br>
 Công nghệ dựng hình thẩm mỹ nha khoa - thẩm mỹ nụ cười Digital Smile Design <br>
 Hệ thống chế tác răng sứ CAD/CAM Cerec MCXL điều khiển toàn bộ qua máy tính <br>
 Hệ thống vô trùng khép kín, vô trùng bằng hệ thống cực tím', N'100% chất liệu sứ được sử dụng đều là chính hãng, cao cấp xuất xứ của Đức hoặc Mỹ. Tất cả đều có chứng chỉ lưu hành toàn cầu và được cấp thẻ bảo hành IDPI (International Dental Prosthesis Identity – truy xuất nguồn gốc toàn cầu) <br>
Các loại răng sứ chính hãng như: Zirconia Ceramill Zolid, Cercon, Cercon HT, Cercon XT, Lava 3M Plus, Titanium...đều là vật liệu sứ hàng đầu thế giới với tính thẩm mỹ hoàn hảo, chịu lực gấp từ 5 – 8 lần răng thật, kháng màu, kháng mùi và chống mài mòn, thời gian sử dụng lâu dài vượt trội.', N'tt04.jpg', N'tt05.jpg', N'tt06.jpg', N'Đội ngũ bác sĩ trực tiếp điều trị', N'Công nghệ và trang thiết bị tham gia vào quá trình điều trị', N'Răng sứ cao cấp, chính hãng đều có mã số IDPI', N'Thẩm mỹ răng sứ không chỉ dừng lại ở một hàm răng đẹp. Đích đến của nó là nụ cười đẹp. Đích đến của nó là...', N'bocrangsu.png', N'Available')
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (3, N'TRỒNG RĂNG SỨ', N'Bác sĩ tiến hành mài 2 răng kế cận với các răng mất, sau đó, dùng 2 răng này làm cầu để gắn cố định một chuỗi răng sứ liên tiếp lên 2 răng sứ đã được mài. Các răng mất mất được khôi phục bằng cách dùng 2 răng kế cận làm cầu.<br>
Tại Peace Dentistry, một ca trồng răng sứ phải đảm bảo được 4 nguyên tắc: (1) ăn nhai khỏe và tiện, (2) thẩm mỹ cao, (3) thời gian sử dụng tốt trên 20 năm, (4) Tiết kiệm chi phí cho khách hàng.', N'Răng sứ titanium, zirconia, cercon, Ceramill, Lava (Đức) đều là răng sứ cao cấp, chịu lực gấp hơn 8 lần răng thật.', N'Peace Dentistry bảo hành răng sứ từ 10 đến 15 năm thông qua thẻ Khách hàng, thẻ bảo hành chính hãng', N'tt07.jpg', N'tt08.jpg', N'tt09.jpg', N'Trồng răng sứ được thự hiện như thế nào', N'Răng sứ chính hãng (Germany)', N'Chế độ bảo hành uy tín, dài lâu', N'Bác sĩ tiến hành mài 2 răng kế cận với các răng mất, sau đó, dùng 2 răng này làm cầu để gắn cố định...', N'trongrangsu.png', N'Available')
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (4, N'MẶT SỨ VENEER', N'Mặt dán sứ veneer là một trong những phương pháp thẩm mỹ răng sứ được đánh giá là hiện đại và ưu việt nhất hiện nay. Phương pháp này cũng mang lại hiệu quả như phương pháp bọc răng sứ thẩm mỹ nhưng có sự khác biệt rất lớn, đó là: mặt dán sứ veneer thì hạn chế tối đa việc mài răng và ưu tiên bảo tổn răng thật.<br>
Để làm veneer bác sĩ chỉ cần chỉ cần xử lý một lớp rất mỏng bề mặt men răng bên ngoài, cấu trúc răng thật được giữ lại tối đa. Sau đó, bác sĩ sẽ cố định một mặt sứ veneer mỏng hoặc siêu mỏng chỉ từ 0.2mm lên mắt trước của răng thật.<br>
Hiệu quả sau khi làm veneer đó là: khắc phục các khuyết điểm thẩm mỹ, răng sẽ có một diện mạo mới về hình thể và màu sắc thẩm mỹ hơn, răng thật được giữ lại tối đa và cũng hoàn toàn đáp ứng chức năng ăn nhai trong lâu dài.', N'“Thẩm mỹ răng sứ không chỉ là hàm răng đẹp mà còn là nụ cười đẹp, đẹp lâu dài và không hạn chế chức năng ăn nhai”. Đó là lý do mà Peace Dentistry chỉ sử dụng các loại mặt sứ veneer cao cấp nhất từ chính hãng Emax (Đức), gồm: Emax Press, Emax Multy.', N'Quy trình dán sứ veneer mà Peace Dentistry áp dụng là quy trình được khuyến nghị bởi HH thẩm mỹ nha khoa Hoa Kỳ - ADA và cũng được áp dụng ở hầu hết các nha khoa thẩm mỹ hàng đầu thế giới. Gồm các bước:
Bước 1: khám, chụp phim, đánh giá và ghi nhận các yếu tố: răng, khuôn miệng, nướu, nụ cười, khuôn mặt, màu da...và mong muốn thẩm mỹ cá nhân. Sau đó bác sĩ sẽ tư vấn giải pháp, lên kế hoạch điều trị chi tiết.<br>
Bước 2: Xử lý men răng, lấy dấu hàm <br>
Bước 3: Là quá trình Bác sĩ và các kỹ thuật viên phòng Labo thực hiện một loạt công việc: WAX-UP, MOCK-UP, DSD, và chế tác mặt sứ bằng hệ thống CAD/CAM <br>
Bước 4: Thử mặt sứ lên răng thật, tinh chỉnh thẩm mỹ <br>
Bước 5: Cố định mặt sứ và hoàn thành điều trị', N'tt010.jpg', N'tt11.jpg', N'tt12.jpg', N'Mặt dán sứ VENEERT', N'Mặt sứ veneer cao cấp, chính hãng Emax (Germany)', N'Quy trình chuẩn mực và hiện đại', N'Mặt dán sứ veneer là một trong những phương pháp thẩm mỹ răng sứ được đánh giá là...', N'matsuveneer.png', N'Available')
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (5, N'NIỀNG RĂNG CHỈNH NHA', N'Hệ thống nha khoa Peace Dentistry phát triển theo mô hình nha khoa chuẩn quốc tế và điều trị chuyên sâu với 5 chuyên khoa: Chỉnh nha niềng răng, cấy ghép Implant, thẩm mỹ nha khoa, nha tổng quát, nha khoa trẻ em. <br>
Trong đó, chuyên khoa chỉnh nha niềng răng là chuyên khoa lớn với những bác sĩ, chuyên gia chỉnh hình Răng Hàm Mặt giỏi và hội đủ 3 yếu tố: đã qua tu nghiệp sau đại học về chỉnh nha, tu nghiệp theo các chương trình chình nha ở nước ngoài, phải có thành tích trên 500 ca điều trị lâm sàng niềng răng. Đặc biệt, tại Peace Dentistry Quận 3, Giám đốc chuyên môn là bác sĩ chuyên gia RHM đầu ngành ThS.BS CKII Nguyễn Văn Khoa.', N'Mắc cài kim loại (tự đóng hoặc thông thường) với các loại mắc cài cao cấp có tính thẩm mỹ cao. <br>
Mắc cài sứ (tự đóng hoặc thông thường) với mặt mắc cài tương đồng với màu răng giúp đảm bảo thẩm mỹ cao trong quá trình niềng răng. <br>
Mắc cài mặt lưỡi (mặt trong) là loại mắc cài được đeo vào mặt trong của răng giúp khách hàng tự tin khi đeo mắc cài. ,br>
Niềng răng không mắc cài Invisalign: Toàn bộ quá trình niềng răng, kết quả sau niềng răng sẽ được phác thảo trên phần mềm Clincheck Pro, ngoài ra với khay niềng Invisalign trong suốt sẽ giúp khách hàng hoàn toàn tự tin và có thể tự tháo ra khi muốn.', N'Bằng đội ngũ bác sĩ giỏi, trang thiết bị hiện đại, quy trình chuyên môn hóa điều trị chuyên nghiệp với giá trị cốt lõi là Y Đức và Tận Tâm, tính đến cuối năm 2021, Peace Dentistry đã có gần 15,000 ca chỉnh nha đã hoàn thành và 3,000 ca đang điều trị đúng kế hoạch. Và đặc biệt, chúng tối chưa từng ghi nhận bất kỳ một trường hợp niềng răng nào không thành công.', N'tt13.jpg', N'tt14.jpg', N'tt15.jpg', N'Nha khoa chuẩn quốc tế, trong đó niềng răng là chuyên khoa chủ lực', N'Khách hàng có thể chọn 1 trong 4 phương pháp niềng răng hiện đại', N'Niềng răng tại Peace Dentistry – Kết quả luôn được đảm bảo', N'Chúng tôi thuộc TOP những nha khoa hàng đầu về chỉnh nha niềng răng chuyên sâu tại TP.HCM với hơn 15.000 ca...', N'niengrang.png', N'Available')
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (6, N'THẨM MỸ NHA KHOA', N'Đẹp tinh tế và tự nhiên: Form răng phải tinh tế & tự nhiên, màu sắc trắng sáng ấn tượng những nhìn rất tự nhiên (Hoặc đồng màu răng thật nếu lằm ít răng) <br>
Không để lại các nguy cơ có thể gây tổn hại về sau: Bảo tồn tối đa răng thật (mài răng ở mức tối thiểu), tuyệt đối không để lại bất kỳ nguy cơ viêm nhiễm. <br>
Tiết kiệm chi phí cho Khách hàng: Chỉ làm thẩm mỹ răng với những răng lộ diện ra khỏi khuôn miệng cười, ưu tiên giải pháp đảm bảo hiệu quả nhưng tiết kiệm chi phi.', N'- Vật liệu sứ thẩm mỹ chính hãng của Đức: Cercon, Cercon HT, Zirconia, ceramill Zolid, Veneer Emax... <br>
- Mác cài chỉnh nha thẩm mỹ Roth In – Ovation, DAMOND CLEAR, SMILE, Damon speed, Invisalign chính hãng.', N'Toàn bộ thiết bị của Peace Dentistry đều là các dòng hiện đại nhập từ Đức, Mỹ, Anh. <br>
Phần mềm chuyên dụng thẩm mỹ nha Digital smile Design – dựng hình thẩm mỹ nha giúp Bác sĩ lựa chọn phương án thẩm mỹ tối ưu nhất.', N'tt16.jpg', N'tt17.jpg', N'tt18.jpg', N'3 nguyên tắc mà Peace dentistry cam kết với một ca thẩm mỹ răng:', N'Vật liệu Nha khoa thẩm mỹ cao cấp, chính hãng', N'Trang thiết hiện đại - Công nghệ thẩm mỹ nha Degital Smile Design', N'Đẹp tinh tế và tự nhiên: Form răng phải tinh tế & tự nhiên, màu sắc trắng sáng ấn tượng...', N'tramrang.png', N'Available')
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (7, N'TẨY TRẮNG RĂNG', N'Là công nghệ hiện đại nhất hiện nay với hiệu quả trắng sáng cao, an toàn cho cơ thể và không hại men răng được FDI khuyên dùng. Nguyên lý: Ánh sáng Plasma + thuốc tẩy sẽ loại bỏ trên 95% sắc tố màu bám ở bề mặt răng hoặc nhiễm vào men răng giúp răng trắng, sáng và duy trì hiệu quả lâu dài', N'Sử dụng thuốc tẩy Pola Office 35% (Úc) của tập đoàn SDI (hàng đầu thế giới về sản xuất vật liệu nha khoa) là thuốc tẩy cho hiệu quả cao và đặc biệt là khả năng hạn chế ê buốt. Đây là thuốc tẩy có chứng chỉ lưu hành quốc tế, được chứng nhận và khuyên dùng bởi FDI.', N'Peace Dentistry cam kết: Nếu hiệu quả trắng sáng thấp sẽ không thu bất kỳ khoản phí nào của khách hàng. Khách hàng sẽ được đo màu răng trước và sau khi tẩy trắng để làm căn cứ đánh giá hiệu quả.', N'tt19.jpg', N'tt20.jpg', N'tt21.jpg', N'Công nghệ Tẩy trăng răng Plasma hiện đại', N'Thuốc tẩy chính hãng của Úc', N'Nha khoa duy nhất cam kết hiệu quả trắng sáng', N'Công nghệ Tẩy trăng răng Plasma hiện đại Là công nghệ hiện đại nhất hiện nay với hiệu quả...', N'taytrangrang.png', N'Available')
INSERT [dbo].[tblService] ([serviceID], [serviceName], [description1], [description2], [description3], [title1_img], [title2_img], [title3_img], [title1], [title2], [title3], [demo], [service_img], [status]) VALUES (8, N'NHA TỔNG QUÁT', N'Là công nghệ hiện đại nhất hiện nay với hiệu quả trắng sáng cao, an toàn cho cơ thể và không hại men răng được FDI khuyên dùng. Nguyên lý: Ánh sáng Plasma + thuốc tẩy sẽ loại bỏ trên 95% sắc tố màu bám ở bề mặt răng hoặc nhiễm vào men răng giúp răng trắng, sáng và duy trì hiệu quả lâu dài', N'Sử dụng thuốc tẩy Pola Office 35% (Úc) của tập đoàn SDI (hàng đầu thế giới về sản xuất vật liệu nha khoa) là thuốc tẩy cho hiệu quả cao và đặc biệt là khả năng hạn chế ê buốt. Đây là thuốc tẩy có chứng chỉ lưu hành quốc tế, được chứng nhận và khuyên dùng bởi FDI.', N'Peace Dentistry cam kết: Nếu hiệu quả trắng sáng thấp sẽ không thu bất kỳ khoản phí nào của khách hàng. Khách hàng sẽ được đo màu răng trước và sau khi tẩy trắng để làm căn cứ đánh giá hiệu quả.', N'tt19.jpg', N'tt20.jpg', N'tt21.jpg', N'Công nghệ Tẩy trăng răng Plasma hiện đại', N'Thuốc tẩy chính hãng của Úc', N'Nha khoa duy nhất cam kết hiệu quả trắng sáng', N'Trang bị đồng bộ hệ thống trang thiết bị Nha khoa hiện đại nhập từ Mỹ, Anh ,Úc, Canada, Nhật...', N'tatcadichvu.png', N'Available')
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (1, 21, N'Ho Chi Minh', N'hoahqse150436@fpt.edu.vn', 0, N'0292138123', N'Approved', N'KhaiZy.jpg', N'DUONG KHAI DUY', N'toi la sv fpt', N'khaiduy123', N'123456', 3)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (3, 29, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 0, N'0123456789', N'Approved', N'10.jpg', N'Calvin Carlo', NULL, N'doctor1', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (5, 41, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 0, N'0123456789', N'Approved', N'02.jpg', N'Cristino Murphy', N'I am a doctor', N'doctor2', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (6, 35, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 1, N'0123456789', N'Approved', N'03.jpg', N'Alia Reddy', N'I am a doctor', N'doctor3', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (7, 27, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 0, N'0123456789', N'Approved', N'04.jpg', N'Toni Kovar', N'I am a doctor', N'doctor4', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (8, 31, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 0, N'0123456789', N'Approved', N'05.jpg', N'Jessica McFarlane', N'I am a doctor', N'doctor5', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (9, 33, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 1, N'0123456789', N'Approved', N'06.jpg', N'Elsie Sherman', N'I am a doctor', N'doctor6', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (11, 28, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 1, N'0123456789', N'Approved', N'07.jpg', N'Bertha Magers', N'I am a doctor', N'doctor7', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (13, 55, N'HO CHI MINH CITY', N'hoahqse150436@fpt.edu.vn', 1, N'0123456789', N'Approved', N'08.jpg', N'Louis Batey', N'I am a doctor', N'doctor8', N'123456', 4)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (14, 22, N'BAO LOC', N'hoahqse150436@fpt.edu.vn', 0, N'0123578909', N'Approved', N'BaoLong.jpg', N'NGUYEN QUOC BAO LONG', N'toi yeu fpt', N'baolong123', N'123456', 3)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (15, 21, N'BINH DINH', N'hoahqse150436@fpt.edu.vn', 0, N'0999999999', N'Approved', N'QuangDat.jpg', N'TRAN QUANG DAT', N'toi yeu fpt', N'quangdat123', N'123456', 3)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (16, 21, N'QUANG BINH', N'hoahqse150436@fpt.edu.vn', 0, N'0837546898', N'Approved', N'HoaHoang.jpg', N'HOANG QUANG HOA', N'toi yeu fpt', N'quanghoa123', N'123456', 3)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (17, 21, N'CAN THO', N'hoahqse150436@fpt.edu.vn', 0, N'0854734222', N'Approved', N'BaCong.jpg', N'TRAN BA CONG', N'toi yeu fpt', N'bacong123', N'123456', 3)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (18, 30, N'Ho Chi Minh', N'hoahqse150436@fpt.edu.vn', 1, N'0949234773', N'Approved', N'employee.jpg', N'Thuy Tien', N'Toi la nhan vien', N'employee123', N'123456', 5)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (32, 22, N'Ho Chi Minh city', N'hoahqse150436@fpt.edu.vn', 0, N'0384510456', NULL, N'BaCong.jpg', N'Ronaldo', N'toi la sv fpt', N'user123', N'1234567', 3)
INSERT [dbo].[tblUser] ([userID], [age], [address], [email], [gender], [phoneNumber], [status], [img], [fullName], [bio], [userName], [password], [roleID]) VALUES (33, 20, N'Ho chi minh city', N'hoahqse150436@fpt.edu.vn', 0, N'0384510456', NULL, N'KhaiZy.jpg', N'jenie', N'i am a student', N'hoahoang25092001', N'123456', 3)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
INSERT [dbo].[tblWorking_time] ([wkID], [wkTime]) VALUES (1, N'09:00AM - 11:00AM')
INSERT [dbo].[tblWorking_time] ([wkID], [wkTime]) VALUES (2, N'12:00AM - 02:00PM')
INSERT [dbo].[tblWorking_time] ([wkID], [wkTime]) VALUES (3, N'02:00PM - 04:00PM')
INSERT [dbo].[tblWorking_time] ([wkID], [wkTime]) VALUES (4, N'04:00PM - 06:00PM')
INSERT [dbo].[tblWorking_time] ([wkID], [wkTime]) VALUES (5, N'07:00PM - 09:00PM')
GO
ALTER TABLE [dbo].[tblAppoinment_details]  WITH CHECK ADD FOREIGN KEY([doctorID])
REFERENCES [dbo].[tblDoctors] ([doctorID])
GO
ALTER TABLE [dbo].[tblAppoinment_details]  WITH CHECK ADD FOREIGN KEY([serviceID])
REFERENCES [dbo].[tblService] ([serviceID])
GO
ALTER TABLE [dbo].[tblAppoinment_details]  WITH CHECK ADD FOREIGN KEY([wkID])
REFERENCES [dbo].[tblWorking_time] ([wkID])
GO
ALTER TABLE [dbo].[tblComments]  WITH CHECK ADD FOREIGN KEY([doctorID])
REFERENCES [dbo].[tblDoctors] ([doctorID])
GO
ALTER TABLE [dbo].[tblComments]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblDoctors]  WITH CHECK ADD FOREIGN KEY([specialize])
REFERENCES [dbo].[tblService] ([serviceID])
GO
ALTER TABLE [dbo].[tblDoctors]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDoctors]  WITH CHECK ADD FOREIGN KEY([wkID])
REFERENCES [dbo].[tblWorking_time] ([wkID])
GO
ALTER TABLE [dbo].[tblPatients]  WITH CHECK ADD FOREIGN KEY([doctorID])
REFERENCES [dbo].[tblDoctors] ([doctorID])
GO
ALTER TABLE [dbo].[tblPatients]  WITH CHECK ADD FOREIGN KEY([serviceID])
REFERENCES [dbo].[tblService] ([serviceID])
GO
ALTER TABLE [dbo].[tblPrescription]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[tblUser] ([userID])
GO
ALTER TABLE [dbo].[tblPrescription_details]  WITH CHECK ADD FOREIGN KEY([medicineID])
REFERENCES [dbo].[tblMedicine] ([medicineID])
GO
ALTER TABLE [dbo].[tblPrescription_details]  WITH CHECK ADD FOREIGN KEY([prescriptionID])
REFERENCES [dbo].[tblPrescription] ([prescriptionID])
GO
ALTER TABLE [dbo].[tblPrice_list]  WITH CHECK ADD FOREIGN KEY([discountID])
REFERENCES [dbo].[tblDiscount] ([discountID])
GO
ALTER TABLE [dbo].[tblPrice_list]  WITH CHECK ADD FOREIGN KEY([serviceID])
REFERENCES [dbo].[tblService] ([serviceID])
GO
ALTER TABLE [dbo].[tblTime_table]  WITH CHECK ADD FOREIGN KEY([doctorID])
REFERENCES [dbo].[tblDoctors] ([doctorID])
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[tblRole] ([roleID])
GO
USE [master]
GO
ALTER DATABASE [DentalClinic] SET  READ_WRITE 
GO
