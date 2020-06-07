USE [master]
GO
/****** Object:  Database [QLKD_ThoiTrang]    Script Date: 05-Jun-20 10:21:27 PM ******/
CREATE DATABASE [QLKD_ThoiTrang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLKD_ThoiTrang', FILENAME = N'E:\CSDL_SQL_Server\QLKD_ThoiTrang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLKD_ThoiTrang_log', FILENAME = N'E:\CSDL_SQL_Server\QLKD_ThoiTrang_log.ldf' , SIZE = 2624KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLKD_ThoiTrang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKD_ThoiTrang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKD_ThoiTrang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET  MULTI_USER 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKD_ThoiTrang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLKD_ThoiTrang] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLKD_ThoiTrang', N'ON'
GO
ALTER DATABASE [QLKD_ThoiTrang] SET QUERY_STORE = OFF
GO
USE [QLKD_ThoiTrang]
GO
/****** Object:  Table [dbo].[Catalogs]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[CatalogId] [varchar](50) NOT NULL,
	[CatalogName] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[LastModified] [datetime] NULL,
 CONSTRAINT [PK__DanhMuc__B37508870B273E83] PRIMARY KEY CLUSTERED 
(
	[CatalogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [varchar](50) NOT NULL,
	[CustomerSurname] [nvarchar](200) NULL,
	[CustomerName] [nvarchar](200) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
	[CusAddress] [nvarchar](200) NULL,
	[Avatar] [image] NULL,
	[Sex] [tinyint] NOT NULL,
	[DOB] [datetime] NULL,
	[IsDeleted] [int] NULL,
	[LastModified] [datetime] NULL,
 CONSTRAINT [PK__KhachHan__2725CF1EB707DF3C] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[DiscountId] [varchar](50) NOT NULL,
	[Value] [float] NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__BangUuDa__9650302A068EA096] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptedNote]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptedNote](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReceiptNoteId] [varchar](50) NOT NULL,
	[TotalValue] [float] NULL,
	[SupplierId] [varchar](50) NULL,
	[InputDate] [datetime] NULL,
	[TransferCost] [float] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__GoodsRec__1AB76D0154EFAF09] PRIMARY KEY CLUSTERED 
(
	[ReceiptNoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptedNoteDetail]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptedNoteDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptNoteId] [varchar](50) NULL,
	[ProductId] [varchar](50) NULL,
	[InputPrice] [nchar](10) NULL,
	[Quantity] [bigint] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](50) NOT NULL,
	[ProductId] [varchar](50) NULL,
	[Size] [nchar](10) NULL,
	[Quantity] [bigint] NULL,
	[OutputPrice] [float] NULL,
	[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](50) NOT NULL,
	[TotalValue] [float] NULL,
	[TotalQuantity] [int] NULL,
	[StaffId] [varchar](50) NULL,
	[CustomerId] [varchar](50) NULL,
	[DiscountId] [varchar](50) NULL,
	[Status] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__HoaDon__835ED13BC6778521] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[CatalogId] [varchar](50) NOT NULL,
	[SupplierId] [varchar](50) NULL,
	[ProductName] [nvarchar](200) NULL,
	[Barcode] [varchar](50) NULL,
	[OutputPrice] [float] NULL,
	[Status] [bit] NULL,
	[Quantity] [bigint] NULL,
	[ProductImage] [image] NULL,
	[IsDeleted] [bit] NULL,
	[LastModified] [datetime] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NULL,
	[Size] [nchar](10) NULL,
	[Quantity] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[StaffId] [varchar](50) NOT NULL,
	[StaffSurname] [nvarchar](200) NULL,
	[StaffName] [nvarchar](200) NULL,
	[BeginWork] [datetime] NULL,
	[Sex] [tinyint] NOT NULL,
	[DOB] [datetime] NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
	[Password] [varchar](200) NULL,
	[Avatar] [image] NULL,
	[Identification] [varchar](200) NULL,
	[Power] [tinyint] NULL,
	[IsDeleted] [bit] NULL,
	[LastModified] [datetime] NULL,
 CONSTRAINT [PK__NhanVien__77B2CA47D9ED9809] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[SupplierId] [varchar](50) NOT NULL,
	[SupplierName] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__NhaCungC__53DA9205C7C93C6B] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catalogs] ON 

INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (1, N'CTL1', N'Catalog 1', CAST(N'2016-08-04T00:00:00.000' AS DateTime), 0, CAST(N'2023-12-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (10, N'CTL10', N'Catalog 10', CAST(N'2017-05-05T00:00:00.000' AS DateTime), 0, CAST(N'2021-01-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (2, N'CTL2', N'Catalog 2', CAST(N'2017-01-15T00:00:00.000' AS DateTime), 0, CAST(N'2026-02-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (3, N'CTL3', N'Catalog 3', CAST(N'2015-09-07T00:00:00.000' AS DateTime), 0, CAST(N'2026-04-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (4, N'CTL4', N'Catalog 4', CAST(N'2016-03-21T00:00:00.000' AS DateTime), 0, CAST(N'2023-01-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (5, N'CTL5', N'Catalog 5', CAST(N'2015-09-02T00:00:00.000' AS DateTime), 0, CAST(N'2022-12-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (6, N'CTL6', N'Catalog 6', CAST(N'2017-01-16T00:00:00.000' AS DateTime), 0, CAST(N'2022-07-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (7, N'CTL7', N'Catalog 7', CAST(N'2016-06-18T00:00:00.000' AS DateTime), 0, CAST(N'2018-11-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (8, N'CTL8', N'Catalog 8', CAST(N'2016-08-07T00:00:00.000' AS DateTime), 0, CAST(N'2024-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Catalogs] ([id], [CatalogId], [CatalogName], [CreateTime], [IsDeleted], [LastModified]) VALUES (9, N'CTL9', N'Catalog 9', CAST(N'2015-08-15T00:00:00.000' AS DateTime), 0, CAST(N'2025-01-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Catalogs] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (1, N'CUS1', N'Jordin', N'Patience', N'0322081799', N'pjordin0@unc.edu', N'3 Bluestem Park', NULL, 0, CAST(N'1988-12-06T08:41:43.000' AS DateTime), 0, CAST(N'1981-04-02T09:21:08.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (10, N'CUS10', N'Braddon', N'Margery', N'0248076238', N'mbraddon9@berkeley.edu', N'22272 Lillian Junction', NULL, 1, CAST(N'1999-04-11T14:50:29.000' AS DateTime), 0, CAST(N'1990-07-07T15:47:36.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (100, N'CUS100', N'Becconsall', N'Marie-jeanne', N'0563137437', N'mbecconsall2r@zimbio.com', N'2 Center Drive', NULL, 0, CAST(N'1987-05-26T13:01:40.000' AS DateTime), 0, CAST(N'1990-02-26T23:59:34.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (101, N'CUS101', N'Gatenby', N'Eli', N'0460839330', N'egatenby2s@dmoz.org', N'645 Kensington Lane', NULL, 1, CAST(N'1992-09-11T07:19:18.000' AS DateTime), 0, CAST(N'2018-11-12T00:22:19.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (102, N'CUS102', N'Regitz', N'Mellisa', N'060757074', N'mregitz2t@hp.com', N'90 Golf Course Circle', NULL, 1, CAST(N'1982-09-26T11:10:31.000' AS DateTime), 0, CAST(N'1988-01-27T07:03:49.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (103, N'CUS103', N'Orniz', N'Dario', N'0733335813', N'dorniz2u@bigcartel.com', N'51247 7th Center', NULL, 1, CAST(N'1994-09-30T18:51:32.000' AS DateTime), 0, CAST(N'2004-05-16T14:22:22.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (104, N'CUS104', N'Zuker', N'Joeann', N'0232806978', N'jzuker2v@amazon.co.uk', N'92945 International Center', NULL, 1, CAST(N'1986-02-13T17:15:35.000' AS DateTime), 0, CAST(N'2012-02-27T15:39:37.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (105, N'CUS105', N'Beardsdale', N'Donelle', N'0157780812', N'dbeardsdale2w@merriam-webster.com', N'67104 Bartillon Road', NULL, 1, CAST(N'1992-11-21T16:38:53.000' AS DateTime), 0, CAST(N'1999-12-15T02:53:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (106, N'CUS106', N'Alldridge', N'Dannye', N'0300722870', N'dalldridge2x@buzzfeed.com', N'62279 Sutherland Terrace', NULL, 0, CAST(N'1986-10-29T19:05:09.000' AS DateTime), 0, CAST(N'1989-12-25T23:27:36.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (107, N'CUS107', N'Matusevich', N'Chrysler', N'0316885531', N'cmatusevich2y@github.io', N'7154 Dahle Junction', NULL, 1, CAST(N'1993-04-30T03:26:05.000' AS DateTime), 0, CAST(N'2001-11-01T00:40:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (108, N'CUS108', N'Olivari', N'Jemmie', N'0941628297', N'jolivari2z@geocities.com', N'39596 Bluestem Place', NULL, 1, CAST(N'1991-12-29T15:01:31.000' AS DateTime), 0, CAST(N'1993-07-20T09:19:45.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (109, N'CUS109', N'Connors', N'Evangelia', N'053714285', N'econnors30@illinois.edu', N'99257 Southridge Plaza', NULL, 0, CAST(N'1996-02-13T19:42:28.000' AS DateTime), 0, CAST(N'1991-04-17T07:43:18.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (11, N'CUS11', N'Butteris', N'Tatiania', N'044323484', N'tbutterisa@uiuc.edu', N'321 Riverside Hill', NULL, 1, CAST(N'1984-02-11T01:03:33.000' AS DateTime), 0, CAST(N'1986-03-31T01:26:46.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (110, N'CUS110', N'Polden', N'Ardyth', N'0862165982', N'apolden31@yelp.com', N'2073 Merchant Park', NULL, 0, CAST(N'1992-12-29T12:32:12.000' AS DateTime), 0, CAST(N'2012-02-07T22:40:34.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (111, N'CUS111', N'Laurens', N'Duky', N'0238297838', N'dlaurens32@rakuten.co.jp', N'10198 Elka Center', NULL, 1, CAST(N'1982-01-01T18:05:43.000' AS DateTime), 0, CAST(N'2000-09-03T03:58:50.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (112, N'CUS112', N'Laherty', N'Owen', N'062047559', N'olaherty33@sourceforge.net', N'3498 Bonner Alley', NULL, 1, CAST(N'1992-03-05T16:34:52.000' AS DateTime), 0, CAST(N'2015-07-19T15:22:46.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (113, N'CUS113', N'Darwin', N'Kacy', N'0374912290', N'kdarwin34@msn.com', N'01832 Cardinal Point', NULL, 0, CAST(N'1984-01-23T17:05:44.000' AS DateTime), 0, CAST(N'2016-10-31T10:11:58.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (114, N'CUS114', N'Mengue', N'Gusti', N'090472105', N'gmengue35@edublogs.org', N'9093 Towne Circle', NULL, 0, CAST(N'1988-02-14T15:51:26.000' AS DateTime), 0, CAST(N'2018-05-16T10:45:15.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (115, N'CUS115', N'Suston', N'Salvidor', N'056219330', N'ssuston36@ftc.gov', N'0332 Sutherland Pass', NULL, 0, CAST(N'1999-12-14T07:51:37.000' AS DateTime), 0, CAST(N'2018-04-21T02:45:45.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (116, N'CUS116', N'Harty', N'Gerhardt', N'0136421533', N'gharty37@digg.com', N'567 Garrison Crossing', NULL, 0, CAST(N'2000-03-24T15:06:34.000' AS DateTime), 0, CAST(N'2003-04-23T19:55:25.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (117, N'CUS117', N'Ridoutt', N'Grayce', N'0421419990', N'gridoutt38@wordpress.com', N'3965 Monument Parkway', NULL, 1, CAST(N'1997-11-30T16:46:56.000' AS DateTime), 0, CAST(N'2016-02-15T03:37:55.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (118, N'CUS118', N'Launder', N'Trefor', N'0460976507', N'tlaunder39@adobe.com', N'810 Hagan Point', NULL, 1, CAST(N'1982-11-05T03:52:46.000' AS DateTime), 0, CAST(N'1995-02-04T17:26:39.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (119, N'CUS119', N'Lambarton', N'Enoch', N'0962378888', N'elambarton3a@europa.eu', N'14049 Delaware Terrace', NULL, 0, CAST(N'2001-04-13T06:58:47.000' AS DateTime), 0, CAST(N'1987-11-12T01:10:43.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (12, N'CUS12', N'Hume', N'Hewet', N'0833045750', N'hhumeb@360.cn', N'7540 Barby Alley', NULL, 0, CAST(N'2000-12-13T01:02:47.000' AS DateTime), 0, CAST(N'2005-10-03T23:46:57.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (120, N'CUS120', N'Sarsfield', N'Domeniga', N'0708361222', N'dsarsfield3b@4shared.com', N'497 Sullivan Hill', NULL, 0, CAST(N'1989-02-23T08:15:49.000' AS DateTime), 0, CAST(N'1995-01-03T03:27:08.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (121, N'CUS121', N'Chevers', N'Ranna', N'0883010765', N'rchevers3c@mozilla.com', N'40851 Loomis Plaza', NULL, 1, CAST(N'1984-08-28T15:59:20.000' AS DateTime), 0, CAST(N'1988-11-18T06:58:33.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (122, N'CUS122', N'Boniface', N'Roxi', N'0135938769', N'rboniface3d@creativecommons.org', N'04267 Dawn Street', NULL, 0, CAST(N'2000-08-06T20:30:28.000' AS DateTime), 0, CAST(N'1984-04-07T02:49:47.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (123, N'CUS123', N'Symers', N'Giacobo', N'0742424422', N'gsymers3e@amazonaws.com', N'5807 Crescent Oaks Lane', NULL, 0, CAST(N'1991-08-15T16:39:07.000' AS DateTime), 0, CAST(N'1986-04-01T13:03:48.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (124, N'CUS124', N'Lukesch', N'Diarmid', N'0671941060', N'dlukesch3f@telegraph.co.uk', N'0 Thompson Plaza', NULL, 1, CAST(N'1991-09-27T16:29:23.000' AS DateTime), 0, CAST(N'2005-12-14T22:57:54.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (125, N'CUS125', N'Leonards', N'Rolando', N'0886715076', N'rleonards3g@ftc.gov', N'27 Boyd Terrace', NULL, 0, CAST(N'1984-03-25T03:27:06.000' AS DateTime), 0, CAST(N'2018-09-11T10:37:28.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (126, N'CUS126', N'McConnal', N'Garrard', N'0840485234', N'gmcconnal3h@columbia.edu', N'190 Norway Maple Point', NULL, 0, CAST(N'1999-12-05T01:45:29.000' AS DateTime), 0, CAST(N'1985-12-20T17:03:30.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (127, N'CUS127', N'Acom', N'Hillery', N'0732962869', N'hacom3i@delicious.com', N'52 Erie Avenue', NULL, 1, CAST(N'1980-08-08T11:05:05.000' AS DateTime), 0, CAST(N'2006-08-21T21:14:47.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (128, N'CUS128', N'Glanert', N'Beatriz', N'0389861613', N'bglanert3j@who.int', N'68040 Elmside Lane', NULL, 0, CAST(N'2001-12-15T21:05:45.000' AS DateTime), 0, CAST(N'2017-09-30T20:56:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (129, N'CUS129', N'Cawdell', N'Karrie', N'0632640935', N'kcawdell3k@timesonline.co.uk', N'28 Dennis Alley', NULL, 1, CAST(N'1987-06-06T05:27:09.000' AS DateTime), 0, CAST(N'1989-12-31T07:47:05.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (13, N'CUS13', N'Ybarra', N'Annabel', N'0659219207', N'aybarrac@opera.com', N'7122 Jay Circle', NULL, 0, CAST(N'1995-03-16T03:22:59.000' AS DateTime), 0, CAST(N'1987-09-10T11:48:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (130, N'CUS130', N'Deddum', N'Vernon', N'0921461384', N'vdeddum3l@list-manage.com', N'0 Westend Alley', NULL, 1, CAST(N'1994-05-15T08:59:11.000' AS DateTime), 0, CAST(N'2011-08-21T22:23:00.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (131, N'CUS131', N'Moyler', N'Helaine', N'053586767', N'hmoyler3m@jalbum.net', N'94 Vernon Way', NULL, 1, CAST(N'1992-10-21T22:25:58.000' AS DateTime), 0, CAST(N'1987-06-29T05:29:00.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (132, N'CUS132', N'Di Maggio', N'Marcel', N'0707691203', N'mdimaggio3n@nationalgeographic.com', N'01 Westridge Junction', NULL, 0, CAST(N'1990-09-23T06:14:26.000' AS DateTime), 0, CAST(N'1998-08-17T21:54:38.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (133, N'CUS133', N'Moules', N'Lowe', N'0253915307', N'lmoules3o@webeden.co.uk', N'7976 Center Plaza', NULL, 0, CAST(N'1998-11-22T08:04:08.000' AS DateTime), 0, CAST(N'2013-03-31T17:01:34.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (134, N'CUS134', N'Hazelhurst', N'Karena', N'0370148007', N'khazelhurst3p@unicef.org', N'19303 Burning Wood Parkway', NULL, 1, CAST(N'1984-02-27T15:31:41.000' AS DateTime), 0, CAST(N'2006-07-04T11:14:51.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (135, N'CUS135', N'Freckelton', N'Heddi', N'0795830872', N'hfreckelton3q@fastcompany.com', N'410 Maywood Alley', NULL, 0, CAST(N'1991-04-10T09:54:16.000' AS DateTime), 0, CAST(N'2008-11-07T09:58:21.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (136, N'CUS136', N'Mixture', N'Rinaldo', N'0471093287', N'rmixture3r@sakura.ne.jp', N'85378 Fremont Pass', NULL, 1, CAST(N'1989-07-01T00:44:22.000' AS DateTime), 0, CAST(N'1990-12-17T10:06:34.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (137, N'CUS137', N'Weller', N'Dido', N'0540529224', N'dweller3s@sun.com', N'629 Jenifer Park', NULL, 1, CAST(N'1992-04-11T07:05:29.000' AS DateTime), 0, CAST(N'2010-09-09T01:26:34.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (138, N'CUS138', N'Tedstone', N'Elyn', N'0871218964', N'etedstone3t@craigslist.org', N'216 Eastlawn Drive', NULL, 1, CAST(N'1985-08-29T00:43:13.000' AS DateTime), 0, CAST(N'1990-02-05T03:36:47.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (139, N'CUS139', N'Lutwidge', N'Gaye', N'0163612555', N'glutwidge3u@pcworld.com', N'3343 Jackson Center', NULL, 1, CAST(N'1994-01-26T05:02:49.000' AS DateTime), 0, CAST(N'1999-07-20T21:50:44.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (14, N'CUS14', N'Crayker', N'Malinda', N'0323436408', N'mcraykerd@nifty.com', N'04918 Warrior Terrace', NULL, 1, CAST(N'1992-01-07T20:47:40.000' AS DateTime), 0, CAST(N'2011-03-16T02:49:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (140, N'CUS140', N'Shillaber', N'Kenneth', N'0532998598', N'kshillaber3v@ycombinator.com', N'2 Beilfuss Circle', NULL, 1, CAST(N'1991-06-05T17:59:25.000' AS DateTime), 0, CAST(N'2016-05-25T07:35:39.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (141, N'CUS141', N'Rex', N'Ibrahim', N'0201455380', N'irex3w@tripadvisor.com', N'1 Garrison Avenue', NULL, 1, CAST(N'2000-07-17T00:49:01.000' AS DateTime), 0, CAST(N'1998-02-02T03:58:03.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (142, N'CUS142', N'Shirer', N'Kipp', N'0310469122', N'kshirer3x@microsoft.com', N'04133 Hazelcrest Street', NULL, 1, CAST(N'1997-11-07T11:11:32.000' AS DateTime), 0, CAST(N'2013-07-18T12:28:25.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (143, N'CUS143', N'Gabbott', N'Francois', N'0812774572', N'fgabbott3y@buzzfeed.com', N'7929 Melrose Junction', NULL, 0, CAST(N'1999-09-26T20:05:17.000' AS DateTime), 0, CAST(N'2001-05-07T15:19:08.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (144, N'CUS144', N'Balas', N'Brook', N'0640740819', N'bbalas3z@quantcast.com', N'0244 Lillian Crossing', NULL, 1, CAST(N'1990-12-20T19:05:04.000' AS DateTime), 0, CAST(N'2004-03-29T08:37:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (145, N'CUS145', N'Giocannoni', N'Giulietta', N'0443263666', N'ggiocannoni40@archive.org', N'4 Hanover Court', NULL, 0, CAST(N'1992-09-11T04:39:30.000' AS DateTime), 0, CAST(N'2012-01-20T20:43:23.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (146, N'CUS146', N'Hobbert', N'Laurens', N'0190634255', N'lhobbert41@hibu.com', N'3596 Eastlawn Lane', NULL, 1, CAST(N'1984-09-13T23:08:21.000' AS DateTime), 0, CAST(N'2007-09-23T04:06:58.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (147, N'CUS147', N'Agge', N'Harri', N'0525710670', N'hagge42@disqus.com', N'36 Starling Place', NULL, 0, CAST(N'1995-10-09T22:54:29.000' AS DateTime), 0, CAST(N'1994-02-14T20:52:57.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (148, N'CUS148', N'Maylin', N'Brande', N'0116717248', N'bmaylin43@jiathis.com', N'1 Goodland Trail', NULL, 1, CAST(N'1981-08-15T02:29:41.000' AS DateTime), 0, CAST(N'2002-04-21T12:19:06.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (149, N'CUS149', N'Ten Broek', N'Duffy', N'034635432', N'dtenbroek44@deliciousdays.com', N'52776 Colorado Lane', NULL, 1, CAST(N'1994-09-23T04:14:40.000' AS DateTime), 0, CAST(N'2006-10-14T05:48:25.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (15, N'CUS15', N'Larking', N'Bill', N'0891985256', N'blarkinge@adobe.com', N'01 Meadow Vale Center', NULL, 0, CAST(N'2000-06-05T10:24:48.000' AS DateTime), 0, CAST(N'2015-05-30T03:33:43.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (150, N'CUS150', N'Weightman', N'Kimball', N'085367749', N'kweightman45@arstechnica.com', N'7 High Crossing Center', NULL, 1, CAST(N'1999-12-31T20:53:55.000' AS DateTime), 0, CAST(N'2017-06-06T04:08:54.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (151, N'CUS151', N'Haughton', N'Quentin', N'036349217', N'qhaughton46@si.edu', N'964 Huxley Pass', NULL, 1, CAST(N'1985-06-10T08:50:00.000' AS DateTime), 0, CAST(N'1988-11-28T11:21:11.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (152, N'CUS152', N'Dallaghan', N'Neila', N'0907514054', N'ndallaghan47@cnet.com', N'0854 Holy Cross Trail', NULL, 0, CAST(N'2000-11-08T07:24:00.000' AS DateTime), 0, CAST(N'1995-04-09T09:21:28.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (153, N'CUS153', N'Le Batteur', N'Delores', N'0158524611', N'dlebatteur48@marriott.com', N'76 Starling Plaza', NULL, 0, CAST(N'1998-08-02T10:42:05.000' AS DateTime), 0, CAST(N'2009-10-06T11:36:44.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (154, N'CUS154', N'Gillicuddy', N'Eugen', N'0578806023', N'egillicuddy49@dropbox.com', N'2 Fairfield Junction', NULL, 1, CAST(N'1995-01-01T06:00:10.000' AS DateTime), 0, CAST(N'1996-08-14T20:27:08.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (155, N'CUS155', N'Izakoff', N'Con', N'0197407309', N'cizakoff4a@hostgator.com', N'71 Melrose Place', NULL, 1, CAST(N'1996-10-21T14:22:53.000' AS DateTime), 0, CAST(N'1985-12-11T15:38:54.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (156, N'CUS156', N'Meron', N'Jeanne', N'0923028499', N'jmeron4b@huffingtonpost.com', N'74206 Blackbird Circle', NULL, 0, CAST(N'1987-03-25T14:37:49.000' AS DateTime), 0, CAST(N'2009-07-15T10:33:04.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (157, N'CUS157', N'Bruin', N'Alanah', N'0831541047', N'abruin4c@about.me', N'22239 Lyons Place', NULL, 1, CAST(N'1998-05-07T21:33:32.000' AS DateTime), 0, CAST(N'1994-05-10T04:58:13.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (158, N'CUS158', N'Sutherby', N'Skell', N'0825927233', N'ssutherby4d@wix.com', N'682 Namekagon Circle', NULL, 1, CAST(N'2001-07-24T22:09:09.000' AS DateTime), 0, CAST(N'2010-08-28T18:03:33.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (159, N'CUS159', N'Balham', N'Nerty', N'0769529110', N'nbalham4e@networkadvertising.org', N'598 Lawn Parkway', NULL, 0, CAST(N'1981-08-23T23:28:43.000' AS DateTime), 0, CAST(N'2000-05-06T00:49:51.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (16, N'CUS16', N'Rennox', N'Byrann', N'0305091813', N'brennoxf@tiny.cc', N'88 Elka Point', NULL, 0, CAST(N'1999-05-23T02:38:05.000' AS DateTime), 0, CAST(N'1997-06-19T08:32:50.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (160, N'CUS160', N'Sapey', N'Cull', N'0894297162', N'csapey4f@army.mil', N'99790 High Crossing Center', NULL, 1, CAST(N'1985-03-17T20:00:42.000' AS DateTime), 0, CAST(N'2013-07-08T06:10:05.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (161, N'CUS161', N'Seagood', N'Wildon', N'0861376359', N'wseagood4g@berkeley.edu', N'4382 Pond Terrace', NULL, 1, CAST(N'1995-03-19T21:39:20.000' AS DateTime), 0, CAST(N'1995-02-04T11:32:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (162, N'CUS162', N'Peoples', N'Gabby', N'0655323140', N'gpeoples4h@cnet.com', N'5 Warrior Park', NULL, 0, CAST(N'1990-10-28T10:23:32.000' AS DateTime), 0, CAST(N'2009-12-01T15:58:34.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (163, N'CUS163', N'Flello', N'Cilka', N'0177949546', N'cflello4i@unc.edu', N'97572 Banding Street', NULL, 0, CAST(N'1980-09-14T05:03:13.000' AS DateTime), 0, CAST(N'2016-08-28T06:44:16.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (164, N'CUS164', N'Lamboll', N'Clementius', N'0185753645', N'clamboll4j@gizmodo.com', N'60716 Express Hill', NULL, 0, CAST(N'1997-04-01T22:28:58.000' AS DateTime), 0, CAST(N'1983-09-29T16:21:02.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (165, N'CUS165', N'Twiddy', N'Filia', N'0107141765', N'ftwiddy4k@sbwire.com', N'4 Carberry Drive', NULL, 0, CAST(N'1988-07-28T22:06:14.000' AS DateTime), 0, CAST(N'1990-03-03T23:20:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (166, N'CUS166', N'Angel', N'Vanny', N'0827536151', N'vangel4l@mail.ru', N'9 Waxwing Plaza', NULL, 0, CAST(N'1993-12-19T18:47:57.000' AS DateTime), 0, CAST(N'1986-03-06T13:00:02.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (167, N'CUS167', N'Pawnsford', N'Clemence', N'0339496799', N'cpawnsford4m@rediff.com', N'923 Atwood Trail', NULL, 0, CAST(N'2001-12-13T11:55:56.000' AS DateTime), 0, CAST(N'2013-09-19T22:59:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (168, N'CUS168', N'Glacken', N'Merla', N'0619880872', N'mglacken4n@g.co', N'31 Fuller Way', NULL, 0, CAST(N'1985-06-25T22:38:25.000' AS DateTime), 0, CAST(N'2014-10-20T09:48:32.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (169, N'CUS169', N'Levison', N'Connor', N'0890879097', N'clevison4o@skyrock.com', N'40935 Artisan Park', NULL, 1, CAST(N'1984-03-10T08:42:49.000' AS DateTime), 0, CAST(N'1983-03-12T22:44:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (17, N'CUS17', N'Shivlin', N'Jacky', N'0562083224', N'jshivling@stanford.edu', N'430 Mcguire Trail', NULL, 0, CAST(N'2001-02-19T21:46:12.000' AS DateTime), 0, CAST(N'1992-04-26T20:19:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (170, N'CUS170', N'Benjafield', N'Waiter', N'0862497360', N'wbenjafield4p@ebay.co.uk', N'5172 Lakewood Gardens Crossing', NULL, 0, CAST(N'1983-04-18T00:33:18.000' AS DateTime), 0, CAST(N'1992-12-03T14:09:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (171, N'CUS171', N'Dawby', N'Juliette', N'031197587', N'jdawby4q@tmall.com', N'2 Thompson Road', NULL, 0, CAST(N'1983-10-03T16:47:15.000' AS DateTime), 0, CAST(N'2009-06-05T16:29:29.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (172, N'CUS172', N'Jerrard', N'Lucine', N'0452965343', N'ljerrard4r@samsung.com', N'91 Sunfield Point', NULL, 1, CAST(N'1984-12-27T20:26:07.000' AS DateTime), 0, CAST(N'1992-12-09T09:20:44.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (173, N'CUS173', N'Smidmor', N'Janelle', N'0142895616', N'jsmidmor4s@lycos.com', N'1 7th Pass', NULL, 0, CAST(N'2001-09-30T20:12:01.000' AS DateTime), 0, CAST(N'2011-08-22T07:25:09.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (174, N'CUS174', N'Threadgold', N'Lucia', N'0897739258', N'lthreadgold4t@t-online.de', N'23 Twin Pines Avenue', NULL, 0, CAST(N'1994-09-29T05:13:26.000' AS DateTime), 0, CAST(N'1998-11-13T21:40:51.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (175, N'CUS175', N'Diperaus', N'Kenneth', N'057157048', N'kdiperaus4u@smugmug.com', N'464 Oriole Drive', NULL, 1, CAST(N'2001-11-25T19:40:06.000' AS DateTime), 0, CAST(N'2015-08-16T03:38:34.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (176, N'CUS176', N'Pinnell', N'Leola', N'0165551277', N'lpinnell4v@ning.com', N'09 Miller Parkway', NULL, 1, CAST(N'1995-12-27T10:07:23.000' AS DateTime), 0, CAST(N'1994-09-05T08:39:36.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (177, N'CUS177', N'Valasek', N'Titus', N'0394147243', N'tvalasek4w@usatoday.com', N'5550 Mitchell Center', NULL, 1, CAST(N'1998-03-25T00:47:14.000' AS DateTime), 0, CAST(N'1992-10-14T05:28:03.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (178, N'CUS178', N'Gut', N'Byrann', N'0909245646', N'bgut4x@mozilla.com', N'291 Forster Junction', NULL, 0, CAST(N'1983-12-06T01:30:01.000' AS DateTime), 0, CAST(N'2018-07-15T23:10:10.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (179, N'CUS179', N'Chardin', N'Leighton', N'0382848165', N'lchardin4y@networksolutions.com', N'38248 Norway Maple Street', NULL, 1, CAST(N'1990-06-13T09:52:46.000' AS DateTime), 0, CAST(N'1997-01-14T22:05:06.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (18, N'CUS18', N'Kerbler', N'Bride', N'0516441902', N'bkerblerh@globo.com', N'475 Little Fleur Alley', NULL, 0, CAST(N'1996-04-13T00:35:41.000' AS DateTime), 0, CAST(N'1983-06-06T10:52:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (180, N'CUS180', N'Corless', N'Wendall', N'0221513751', N'wcorless4z@xinhuanet.com', N'0 David Circle', NULL, 0, CAST(N'1991-02-16T01:58:42.000' AS DateTime), 0, CAST(N'1990-02-06T01:20:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (181, N'CUS181', N'Van Ross', N'Dore', N'0804292333', N'dvanross50@ted.com', N'7265 Duke Crossing', NULL, 1, CAST(N'1987-03-11T06:30:09.000' AS DateTime), 0, CAST(N'2017-12-08T21:26:22.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (182, N'CUS182', N'Elves', N'Raoul', N'0652110513', N'relves51@home.pl', N'4538 Columbus Way', NULL, 0, CAST(N'1983-10-20T04:16:19.000' AS DateTime), 0, CAST(N'1998-06-07T17:53:17.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (183, N'CUS183', N'Crews', N'Estel', N'095640730', N'ecrews52@de.vu', N'245 Burning Wood Circle', NULL, 0, CAST(N'1980-08-03T16:48:48.000' AS DateTime), 0, CAST(N'1992-11-06T19:31:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (184, N'CUS184', N'Horning', N'Tully', N'021177046', N'thorning53@google.com.hk', N'1082 Merchant Pass', NULL, 0, CAST(N'1985-02-13T20:59:53.000' AS DateTime), 0, CAST(N'1989-08-22T04:09:11.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (185, N'CUS185', N'Spire', N'Nolana', N'0461371294', N'nspire54@t-online.de', N'032 Rutledge Court', NULL, 1, CAST(N'1988-08-23T11:58:17.000' AS DateTime), 0, CAST(N'2005-03-27T22:57:18.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (186, N'CUS186', N'Champken', N'Jackquelin', N'0828323696', N'jchampken55@abc.net.au', N'5 Sundown Terrace', NULL, 1, CAST(N'1999-02-22T04:23:00.000' AS DateTime), 0, CAST(N'1983-10-24T21:26:44.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (187, N'CUS187', N'Joyce', N'Lynett', N'0757765259', N'ljoyce56@wufoo.com', N'8 Roxbury Crossing', NULL, 1, CAST(N'2000-02-24T20:11:12.000' AS DateTime), 0, CAST(N'2018-03-02T09:21:18.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (188, N'CUS188', N'Antrack', N'Tailor', N'0854777640', N'tantrack57@aol.com', N'9630 School Road', NULL, 1, CAST(N'1992-05-06T03:02:01.000' AS DateTime), 0, CAST(N'1987-04-15T14:40:17.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (189, N'CUS189', N'Borghese', N'Kacy', N'0718486541', N'kborghese58@ebay.com', N'073 Ludington Road', NULL, 0, CAST(N'1981-02-04T01:37:32.000' AS DateTime), 0, CAST(N'2004-11-28T08:45:30.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (19, N'CUS19', N'Westcarr', N'Charisse', N'0823901209', N'cwestcarri@netlog.com', N'908 Lillian Drive', NULL, 1, CAST(N'1998-07-17T16:02:52.000' AS DateTime), 0, CAST(N'2007-02-09T12:31:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (190, N'CUS190', N'Rohmer', N'Deina', N'0602495285', N'drohmer59@nyu.edu', N'8 High Crossing Terrace', NULL, 0, CAST(N'1987-04-16T07:26:31.000' AS DateTime), 0, CAST(N'2008-11-13T12:43:10.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (191, N'CUS191', N'Applegarth', N'Lanita', N'0871758691', N'lapplegarth5a@tripod.com', N'9 Novick Hill', NULL, 1, CAST(N'1989-10-16T04:24:05.000' AS DateTime), 0, CAST(N'1991-11-09T09:55:51.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (192, N'CUS192', N'Summerscales', N'Luce', N'0216160501', N'lsummerscales5b@paginegialle.it', N'69614 Lien Point', NULL, 0, CAST(N'1987-12-13T04:00:53.000' AS DateTime), 0, CAST(N'2012-12-25T05:44:36.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (193, N'CUS193', N'Davidovsky', N'Florie', N'051745603', N'fdavidovsky5c@hc360.com', N'3 Packers Parkway', NULL, 0, CAST(N'1999-01-17T10:05:14.000' AS DateTime), 0, CAST(N'2014-08-12T10:53:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (194, N'CUS194', N'MacCleay', N'Murielle', N'0472138135', N'mmaccleay5d@intel.com', N'4223 Bobwhite Crossing', NULL, 1, CAST(N'2002-02-03T21:06:09.000' AS DateTime), 0, CAST(N'1983-11-22T18:57:48.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (195, N'CUS195', N'Quinsee', N'Cass', N'0695404910', N'cquinsee5e@domainmarket.com', N'55 Prairie Rose Point', NULL, 0, CAST(N'1986-04-12T08:17:35.000' AS DateTime), 0, CAST(N'2006-11-19T19:59:00.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (196, N'CUS196', N'Karpenya', N'Marcellina', N'0218609435', N'mkarpenya5f@europa.eu', N'3 Maywood Lane', NULL, 1, CAST(N'1993-07-01T00:41:20.000' AS DateTime), 0, CAST(N'2011-03-06T06:38:41.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (197, N'CUS197', N'Kinson', N'Nannie', N'044563123', N'nkinson5g@reference.com', N'8621 Schiller Drive', NULL, 0, CAST(N'1994-05-10T19:50:14.000' AS DateTime), 0, CAST(N'1993-01-08T06:26:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (198, N'CUS198', N'Meikle', N'Ainslie', N'0292205470', N'ameikle5h@si.edu', N'2 Crownhardt Drive', NULL, 0, CAST(N'1985-11-06T04:46:55.000' AS DateTime), 0, CAST(N'1991-08-23T06:06:17.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (199, N'CUS199', N'Goulstone', N'Hedwig', N'0863721109', N'hgoulstone5i@noaa.gov', N'9244 Sullivan Parkway', NULL, 1, CAST(N'1994-01-25T20:32:20.000' AS DateTime), 0, CAST(N'1995-06-02T14:20:40.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (2, N'CUS2', N'Bristowe', N'Nollie', N'0733721309', N'nbristowe1@sun.com', N'3412 Hanson Lane', NULL, 0, CAST(N'1997-06-22T18:49:08.000' AS DateTime), 0, CAST(N'1981-12-05T06:42:33.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (20, N'CUS20', N'McLeod', N'Trefor', N'0269488276', N'tmcleodj@geocities.jp', N'35 Darwin Park', NULL, 0, CAST(N'1999-12-31T23:30:14.000' AS DateTime), 0, CAST(N'1990-08-19T07:07:44.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (200, N'CUS200', N'Kmieciak', N'Mikkel', N'0484878802', N'mkmieciak5j@cisco.com', N'112 Ridge Oak Pass', NULL, 0, CAST(N'1991-05-29T03:36:07.000' AS DateTime), 0, CAST(N'1998-09-06T09:09:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (21, N'CUS21', N'Rivett', N'Francesco', N'0767085924', N'frivettk@scribd.com', N'58721 Warrior Way', NULL, 1, CAST(N'1983-08-21T06:30:54.000' AS DateTime), 0, CAST(N'1995-08-07T19:44:08.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (22, N'CUS22', N'Cazereau', N'Vidovik', N'0245202549', N'vcazereaul@jalbum.net', N'1647 Center Crossing', NULL, 0, CAST(N'1986-10-27T22:47:27.000' AS DateTime), 0, CAST(N'2014-11-28T01:57:02.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (23, N'CUS23', N'Shalloo', N'Monica', N'0458093121', N'mshalloom@ycombinator.com', N'1 Blaine Avenue', NULL, 1, CAST(N'1985-09-25T12:40:00.000' AS DateTime), 0, CAST(N'1993-04-12T04:41:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (24, N'CUS24', N'O''Shevlan', N'Louisa', N'0926238433', N'loshevlann@yolasite.com', N'32764 Bonner Avenue', NULL, 1, CAST(N'1992-04-24T18:28:40.000' AS DateTime), 0, CAST(N'1996-09-13T17:25:37.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (25, N'CUS25', N'Kerwood', N'Odelle', N'0996783159', N'okerwoodo@pinterest.com', N'1 Commercial Crossing', NULL, 1, CAST(N'2001-04-21T21:55:26.000' AS DateTime), 0, CAST(N'2008-07-21T19:55:13.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (26, N'CUS26', N'Roache', N'Sayre', N'0488970794', N'sroachep@ebay.com', N'3 Loeprich Crossing', NULL, 0, CAST(N'1983-05-14T20:10:43.000' AS DateTime), 0, CAST(N'1994-05-07T04:28:29.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (27, N'CUS27', N'Brereton', N'Derek', N'0701351255', N'dbreretonq@archive.org', N'9 Bay Junction', NULL, 0, CAST(N'1998-11-30T20:40:32.000' AS DateTime), 0, CAST(N'1992-11-30T11:02:36.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (28, N'CUS28', N'Liggens', N'Claudine', N'0692087861', N'cliggensr@ning.com', N'9 Oriole Pass', NULL, 0, CAST(N'1999-02-15T02:23:15.000' AS DateTime), 0, CAST(N'2001-10-03T12:35:45.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (29, N'CUS29', N'Defty', N'Orion', N'0611665951', N'odeftys@taobao.com', N'109 Donald Alley', NULL, 0, CAST(N'1985-11-16T08:11:51.000' AS DateTime), 0, CAST(N'2005-08-01T01:55:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (3, N'CUS3', N'Jurasek', N'Olenolin', N'0421179111', N'ojurasek2@wikia.com', N'394 Continental Parkway', NULL, 0, CAST(N'1982-09-08T05:03:51.000' AS DateTime), 0, CAST(N'2018-04-18T22:39:22.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (30, N'CUS30', N'Moody', N'Putnam', N'0815201208', N'pmoodyt@gov.uk', N'9 Marquette Alley', NULL, 1, CAST(N'1989-07-22T06:45:39.000' AS DateTime), 0, CAST(N'2004-03-29T14:06:38.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (31, N'CUS31', N'Gilfillan', N'Lorita', N'0187068505', N'lgilfillanu@jalbum.net', N'51 Golf Parkway', NULL, 1, CAST(N'1980-10-14T04:22:15.000' AS DateTime), 0, CAST(N'2004-07-22T05:45:33.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (32, N'CUS32', N'Bowlands', N'Cara', N'0620309616', N'cbowlandsv@opensource.org', N'736 Tennessee Crossing', NULL, 0, CAST(N'1989-09-03T21:46:45.000' AS DateTime), 0, CAST(N'1986-03-05T15:03:42.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (33, N'CUS33', N'Dronsfield', N'Elden', N'0297521945', N'edronsfieldw@unesco.org', N'4018 Fuller Drive', NULL, 1, CAST(N'1984-04-08T20:02:27.000' AS DateTime), 0, CAST(N'2004-11-16T06:18:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (34, N'CUS34', N'Veltmann', N'Allyce', N'011716600', N'aveltmannx@blogs.com', N'189 Lindbergh Circle', NULL, 0, CAST(N'2000-08-04T03:07:43.000' AS DateTime), 0, CAST(N'2009-05-28T13:01:53.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (35, N'CUS35', N'Keir', N'Jennee', N'0703500910', N'jkeiry@theglobeandmail.com', N'9 Toban Center', NULL, 1, CAST(N'1987-08-06T05:50:24.000' AS DateTime), 0, CAST(N'1991-05-03T03:38:16.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (36, N'CUS36', N'Balharry', N'Bartlett', N'0872745306', N'bbalharryz@irs.gov', N'6 Canary Parkway', NULL, 0, CAST(N'1995-10-25T10:27:49.000' AS DateTime), 0, CAST(N'1992-09-04T03:46:42.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (37, N'CUS37', N'Kleinholz', N'Coralyn', N'0141079963', N'ckleinholz10@hibu.com', N'08 Dunning Junction', NULL, 0, CAST(N'1990-10-31T01:16:11.000' AS DateTime), 0, CAST(N'2013-06-30T01:34:11.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (38, N'CUS38', N'Klejin', N'Ancell', N'0326148961', N'aklejin11@hud.gov', N'43 South Plaza', NULL, 1, CAST(N'2001-01-31T05:05:26.000' AS DateTime), 0, CAST(N'2006-07-27T23:38:44.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (39, N'CUS39', N'Nollet', N'Sondra', N'0424030531', N'snollet12@economist.com', N'0768 Old Gate Hill', NULL, 0, CAST(N'1997-06-16T20:59:48.000' AS DateTime), 0, CAST(N'2008-02-18T04:19:13.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (4, N'CUS4', N'Bossingham', N'Trstram', N'0631420438', N'tbossingham3@blog.com', N'253 Havey Hill', NULL, 0, CAST(N'1997-08-23T09:34:34.000' AS DateTime), 0, CAST(N'1981-12-16T03:24:02.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (40, N'CUS40', N'MacPeake', N'Adelbert', N'0145486872', N'amacpeake13@samsung.com', N'66922 Kingsford Pass', NULL, 1, CAST(N'1989-06-15T18:06:53.000' AS DateTime), 0, CAST(N'2008-02-01T17:14:58.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (41, N'CUS41', N'Sigge', N'Tracey', N'080987764', N'tsigge14@weibo.com', N'7720 Spaight Lane', NULL, 0, CAST(N'1991-05-04T05:10:41.000' AS DateTime), 0, CAST(N'1981-05-17T23:42:03.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (42, N'CUS42', N'Ferras', N'Carolina', N'0723551228', N'cferras15@senate.gov', N'00 East Alley', NULL, 1, CAST(N'1983-08-29T09:16:23.000' AS DateTime), 0, CAST(N'1991-01-08T01:28:29.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (43, N'CUS43', N'Rhys', N'Olenka', N'0894072662', N'orhys16@symantec.com', N'6578 Melody Road', NULL, 0, CAST(N'1988-01-18T13:29:00.000' AS DateTime), 0, CAST(N'2018-05-30T23:10:07.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (44, N'CUS44', N'Giorgio', N'Tiphani', N'032566779', N'tgiorgio17@furl.net', N'3 Larry Park', NULL, 0, CAST(N'1996-08-24T10:48:07.000' AS DateTime), 0, CAST(N'1990-01-27T20:31:02.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (45, N'CUS45', N'Cullin', N'Ty', N'0644534723', N'tcullin18@com.com', N'84 Dovetail Parkway', NULL, 1, CAST(N'1986-04-08T02:41:53.000' AS DateTime), 0, CAST(N'2009-05-01T00:08:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (46, N'CUS46', N'Hansill', N'Gerard', N'0323570873', N'ghansill19@japanpost.jp', N'7088 Arrowood Street', NULL, 1, CAST(N'1992-01-23T09:07:25.000' AS DateTime), 0, CAST(N'2010-07-18T06:45:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (47, N'CUS47', N'Balazin', N'Hillery', N'0305303961', N'hbalazin1a@shop-pro.jp', N'74 Spohn Park', NULL, 0, CAST(N'1981-10-26T09:50:41.000' AS DateTime), 0, CAST(N'1994-10-05T18:07:11.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (48, N'CUS48', N'Drivers', N'Abdul', N'0502192046', N'adrivers1b@creativecommons.org', N'59436 Mariners Cove Plaza', NULL, 0, CAST(N'1984-07-16T14:08:07.000' AS DateTime), 0, CAST(N'2013-02-05T13:56:54.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (49, N'CUS49', N'Yakobovicz', N'Hagen', N'0395181976', N'hyakobovicz1c@uol.com.br', N'40476 Mallory Hill', NULL, 0, CAST(N'1985-12-28T11:56:49.000' AS DateTime), 0, CAST(N'1986-07-30T18:42:24.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (5, N'CUS5', N'Cudiff', N'Nilson', N'0931814384', N'ncudiff4@ycombinator.com', N'85664 Elgar Plaza', NULL, 0, CAST(N'1991-02-26T09:32:11.000' AS DateTime), 0, CAST(N'1983-08-16T20:26:42.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (50, N'CUS50', N'Gunthorpe', N'Melli', N'0633187968', N'mgunthorpe1d@photobucket.com', N'8 Coleman Alley', NULL, 0, CAST(N'1991-08-09T18:01:22.000' AS DateTime), 0, CAST(N'2006-03-04T17:48:11.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (51, N'CUS51', N'Lewry', N'Reiko', N'0711609309', N'rlewry1e@gravatar.com', N'3 Del Mar Place', NULL, 0, CAST(N'1989-02-05T08:16:01.000' AS DateTime), 0, CAST(N'1999-02-18T20:21:57.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (52, N'CUS52', N'Powner', N'Alair', N'0544826184', N'apowner1f@parallels.com', N'6 Morning Place', NULL, 1, CAST(N'1995-09-04T20:43:35.000' AS DateTime), 0, CAST(N'1992-09-08T04:20:08.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (53, N'CUS53', N'Rickaby', N'Chere', N'0833872066', N'crickaby1g@netvibes.com', N'49 Burning Wood Alley', NULL, 0, CAST(N'1989-11-06T06:30:46.000' AS DateTime), 0, CAST(N'1983-08-08T06:52:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (54, N'CUS54', N'Chat', N'Nanice', N'0355998597', N'nchat1h@123-reg.co.uk', N'0 Dottie Place', NULL, 0, CAST(N'1996-01-11T13:49:01.000' AS DateTime), 0, CAST(N'2015-05-24T06:07:46.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (55, N'CUS55', N'Rash', N'Jerrold', N'0443350729', N'jrash1i@google.com', N'71 Shopko Center', NULL, 1, CAST(N'1996-07-17T23:03:18.000' AS DateTime), 0, CAST(N'2017-12-17T11:08:48.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (56, N'CUS56', N'Tante', N'Merrill', N'0105608671', N'mtante1j@google.pl', N'1021 Oneill Point', NULL, 0, CAST(N'1998-12-18T18:06:28.000' AS DateTime), 0, CAST(N'1981-09-17T00:27:10.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (57, N'CUS57', N'Aspy', N'Cyrille', N'0858111087', N'caspy1k@simplemachines.org', N'3018 5th Parkway', NULL, 1, CAST(N'1989-05-11T16:36:52.000' AS DateTime), 0, CAST(N'2003-11-23T20:30:18.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (58, N'CUS58', N'Kubis', N'Veronika', N'0389058072', N'vkubis1l@harvard.edu', N'8243 Manley Point', NULL, 1, CAST(N'1992-03-31T22:27:54.000' AS DateTime), 0, CAST(N'2000-12-29T21:54:17.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (59, N'CUS59', N'Meadowcroft', N'Mercie', N'060470093', N'mmeadowcroft1m@census.gov', N'9 Bay Hill', NULL, 0, CAST(N'1994-06-26T05:20:16.000' AS DateTime), 0, CAST(N'2012-01-13T07:08:06.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (6, N'CUS6', N'Castelin', N'Celeste', N'081966741', N'ccastelin5@imageshack.us', N'4128 Shasta Way', NULL, 0, CAST(N'1981-02-12T13:37:13.000' AS DateTime), 0, CAST(N'2008-04-21T07:30:58.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (60, N'CUS60', N'Sleit', N'Flin', N'0415114945', N'fsleit1n@census.gov', N'237 Warrior Avenue', NULL, 1, CAST(N'1984-11-07T17:59:48.000' AS DateTime), 0, CAST(N'2002-08-27T04:03:16.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (61, N'CUS61', N'Taunton.', N'Doro', N'0587405147', N'dtaunton1o@jalbum.net', N'7494 6th Parkway', NULL, 0, CAST(N'1987-04-12T08:45:40.000' AS DateTime), 0, CAST(N'1988-01-18T12:21:37.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (62, N'CUS62', N'Gaize', N'Farris', N'0748976485', N'fgaize1p@squidoo.com', N'95 Reindahl Plaza', NULL, 1, CAST(N'1996-07-27T15:27:48.000' AS DateTime), 0, CAST(N'2003-10-06T20:37:33.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (63, N'CUS63', N'Streight', N'Wolfy', N'0952393357', N'wstreight1q@va.gov', N'8 Clarendon Way', NULL, 0, CAST(N'1992-09-24T14:59:47.000' AS DateTime), 0, CAST(N'1990-01-19T13:35:13.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (64, N'CUS64', N'Angelo', N'Sandro', N'080090171', N'sangelo1r@goo.gl', N'2574 Waubesa Center', NULL, 0, CAST(N'1988-11-05T10:46:29.000' AS DateTime), 0, CAST(N'2014-08-03T06:37:57.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (65, N'CUS65', N'Seater', N'Sharyl', N'0402807398', N'sseater1s@army.mil', N'6 Sheridan Plaza', NULL, 0, CAST(N'2000-02-05T09:23:20.000' AS DateTime), 0, CAST(N'2015-05-09T00:41:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (66, N'CUS66', N'Witterick', N'Budd', N'0227223614', N'bwitterick1t@dedecms.com', N'5 Muir Court', NULL, 0, CAST(N'1997-01-18T10:03:13.000' AS DateTime), 0, CAST(N'1988-08-05T21:41:43.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (67, N'CUS67', N'Ramsdell', N'Rea', N'097411142', N'rramsdell1u@google.ca', N'228 Montana Point', NULL, 0, CAST(N'1999-06-26T14:04:06.000' AS DateTime), 0, CAST(N'2001-08-06T19:51:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (68, N'CUS68', N'Davall', N'Kliment', N'0413129258', N'kdavall1v@mlb.com', N'54665 Petterle Alley', NULL, 1, CAST(N'2000-01-31T12:04:14.000' AS DateTime), 0, CAST(N'1996-06-20T23:04:43.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (69, N'CUS69', N'McGreary', N'Val', N'0358698113', N'vmcgreary1w@accuweather.com', N'6942 Atwood Center', NULL, 1, CAST(N'1996-06-03T22:59:54.000' AS DateTime), 0, CAST(N'2018-01-25T11:04:39.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (7, N'CUS7', N'Trendle', N'Kimmie', N'0924614103', N'ktrendle6@java.com', N'80 Pierstorff Parkway', NULL, 0, CAST(N'1986-01-01T23:45:09.000' AS DateTime), 0, CAST(N'2008-10-11T14:27:23.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (70, N'CUS70', N'Gossage', N'Christian', N'0624238870', N'cgossage1x@wired.com', N'37 Welch Circle', NULL, 0, CAST(N'2002-02-10T19:32:53.000' AS DateTime), 0, CAST(N'2003-09-28T07:47:12.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (71, N'CUS71', N'Maletratt', N'Horatia', N'0711414930', N'hmaletratt1y@amazonaws.com', N'525 Badeau Drive', NULL, 1, CAST(N'1981-11-10T19:06:31.000' AS DateTime), 0, CAST(N'2016-04-28T23:16:43.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (72, N'CUS72', N'Edelman', N'Belvia', N'0186405164', N'bedelman1z@timesonline.co.uk', N'2 Shasta Court', NULL, 1, CAST(N'1990-11-23T00:59:03.000' AS DateTime), 0, CAST(N'1985-12-02T11:24:41.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (73, N'CUS73', N'Skrines', N'Michel', N'0398400629', N'mskrines20@jigsy.com', N'745 Rutledge Plaza', NULL, 0, CAST(N'1984-11-29T20:07:40.000' AS DateTime), 0, CAST(N'1989-01-14T20:54:54.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (74, N'CUS74', N'Callingham', N'Jayson', N'0311975560', N'jcallingham21@sun.com', N'9 Cherokee Pass', NULL, 1, CAST(N'1981-02-22T06:22:52.000' AS DateTime), 0, CAST(N'2012-02-22T18:44:47.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (75, N'CUS75', N'Buttwell', N'Marianne', N'0368631601', N'mbuttwell22@chicagotribune.com', N'7118 Browning Street', NULL, 1, CAST(N'1997-01-28T19:46:35.000' AS DateTime), 0, CAST(N'1992-01-26T04:12:46.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (76, N'CUS76', N'Ferron', N'Morna', N'0143844602', N'mferron23@oaic.gov.au', N'313 Chinook Junction', NULL, 0, CAST(N'1993-06-02T18:28:16.000' AS DateTime), 0, CAST(N'2008-10-14T21:25:59.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (77, N'CUS77', N'Levet', N'Olivia', N'0308337357', N'olevet24@washingtonpost.com', N'332 Red Cloud Pass', NULL, 0, CAST(N'2000-08-30T16:07:58.000' AS DateTime), 0, CAST(N'1998-02-22T17:44:21.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (78, N'CUS78', N'Kemmey', N'Prudence', N'093285165', N'pkemmey25@vinaora.com', N'05989 Fairfield Place', NULL, 1, CAST(N'1993-12-14T01:17:07.000' AS DateTime), 0, CAST(N'2008-06-29T13:05:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (79, N'CUS79', N'Childs', N'Linea', N'0388893842', N'lchilds26@chron.com', N'55 Buell Trail', NULL, 0, CAST(N'1997-04-19T09:45:48.000' AS DateTime), 0, CAST(N'1990-12-19T17:50:30.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (8, N'CUS8', N'Shorthill', N'Mischa', N'0522052477', N'mshorthill7@washingtonpost.com', N'8 Farmco Avenue', NULL, 0, CAST(N'1991-03-04T01:51:16.000' AS DateTime), 0, CAST(N'1985-07-24T03:16:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (80, N'CUS80', N'Heyns', N'Baxie', N'0510075839', N'bheyns27@bigcartel.com', N'442 Roth Way', NULL, 1, CAST(N'1995-06-13T21:33:31.000' AS DateTime), 0, CAST(N'1986-11-01T12:35:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (81, N'CUS81', N'Skuce', N'Verina', N'064713536', N'vskuce28@php.net', N'776 Crest Line Drive', NULL, 0, CAST(N'2000-09-20T09:35:12.000' AS DateTime), 0, CAST(N'1990-07-28T20:18:32.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (82, N'CUS82', N'Borham', N'Ulrich', N'0283149674', N'uborham29@over-blog.com', N'2 Bultman Center', NULL, 0, CAST(N'1999-08-29T22:45:47.000' AS DateTime), 0, CAST(N'1981-04-01T11:34:46.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (83, N'CUS83', N'Andersson', N'Viviyan', N'0534255450', N'vandersson2a@dyndns.org', N'69785 Burning Wood Avenue', NULL, 0, CAST(N'2001-07-22T02:28:28.000' AS DateTime), 0, CAST(N'1981-10-28T03:10:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (84, N'CUS84', N'Ruos', N'Andras', N'013965561', N'aruos2b@canalblog.com', N'0371 Schurz Lane', NULL, 1, CAST(N'1987-09-26T10:32:55.000' AS DateTime), 0, CAST(N'2004-05-28T08:24:46.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (85, N'CUS85', N'Esh', N'Nadeen', N'0820016261', N'nesh2c@4shared.com', N'75998 Dorton Drive', NULL, 0, CAST(N'1988-02-03T19:23:05.000' AS DateTime), 0, CAST(N'1999-02-16T12:46:40.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (86, N'CUS86', N'Arzu', N'Allyn', N'076622016', N'aarzu2d@photobucket.com', N'4 Oxford Park', NULL, 1, CAST(N'1998-05-31T02:54:38.000' AS DateTime), 0, CAST(N'1984-09-08T11:47:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (87, N'CUS87', N'de Merida', N'Jemima', N'0264526505', N'jdemerida2e@theguardian.com', N'631 5th Way', NULL, 1, CAST(N'1988-10-30T13:01:42.000' AS DateTime), 0, CAST(N'2002-03-16T20:43:14.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (88, N'CUS88', N'Rockcliffe', N'Alanah', N'0368699114', N'arockcliffe2f@4shared.com', N'8918 Cascade Parkway', NULL, 0, CAST(N'1988-04-23T14:44:17.000' AS DateTime), 0, CAST(N'1988-09-13T16:10:31.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (89, N'CUS89', N'Olifaunt', N'Saudra', N'0984999050', N'solifaunt2g@adobe.com', N'23 Marquette Plaza', NULL, 0, CAST(N'1993-05-22T23:54:44.000' AS DateTime), 0, CAST(N'1982-10-11T22:01:10.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (9, N'CUS9', N'Hounsom', N'Granny', N'044234068', N'ghounsom8@nba.com', N'90645 Michigan Road', NULL, 0, CAST(N'1998-06-03T12:30:30.000' AS DateTime), 0, CAST(N'1987-01-22T03:26:29.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (90, N'CUS90', N'Stapels', N'Anthea', N'0918553909', N'astapels2h@cornell.edu', N'82 Starling Lane', NULL, 1, CAST(N'1996-09-12T06:43:26.000' AS DateTime), 0, CAST(N'1985-11-28T22:21:32.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (91, N'CUS91', N'Shoreman', N'Inez', N'0280050239', N'ishoreman2i@opera.com', N'40 Alpine Way', NULL, 0, CAST(N'1995-10-20T19:55:11.000' AS DateTime), 0, CAST(N'1981-07-12T08:16:24.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (92, N'CUS92', N'Need', N'Nara', N'0965227890', N'nneed2j@woothemes.com', N'2 Huxley Place', NULL, 1, CAST(N'1995-09-01T15:06:55.000' AS DateTime), 0, CAST(N'1996-06-22T16:44:11.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (93, N'CUS93', N'Crinion', N'Allistir', N'0190342470', N'acrinion2k@sphinn.com', N'07 Johnson Alley', NULL, 0, CAST(N'1998-04-23T02:21:33.000' AS DateTime), 0, CAST(N'2009-02-18T19:37:50.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (94, N'CUS94', N'Petrolli', N'Torrey', N'0687763317', N'tpetrolli2l@parallels.com', N'7 Debs Plaza', NULL, 1, CAST(N'1981-08-09T13:38:42.000' AS DateTime), 0, CAST(N'1990-04-28T07:39:07.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (95, N'CUS95', N'Massie', N'Catriona', N'0792688715', N'cmassie2m@wunderground.com', N'599 Hansons Center', NULL, 1, CAST(N'1994-11-22T17:07:21.000' AS DateTime), 0, CAST(N'2005-02-12T17:10:01.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (96, N'CUS96', N'Ketteman', N'Bourke', N'0709777470', N'bketteman2n@sbwire.com', N'3 Stone Corner Junction', NULL, 1, CAST(N'1992-12-10T13:44:55.000' AS DateTime), 0, CAST(N'1981-03-16T12:55:17.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (97, N'CUS97', N'Pearde', N'Roshelle', N'0717179185', N'rpearde2o@businesswire.com', N'3469 Waxwing Trail', NULL, 0, CAST(N'1982-01-19T09:21:17.000' AS DateTime), 0, CAST(N'1990-01-12T06:00:20.000' AS DateTime))
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (98, N'CUS98', N'Sneesbie', N'Gaven', N'0249171991', N'gsneesbie2p@blogger.com', N'35742 Northland Trail', NULL, 1, CAST(N'1985-01-04T09:02:04.000' AS DateTime), 0, CAST(N'1994-01-07T15:23:05.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([id], [CustomerId], [CustomerSurname], [CustomerName], [Phone], [Email], [CusAddress], [Avatar], [Sex], [DOB], [IsDeleted], [LastModified]) VALUES (99, N'CUS99', N'Adams', N'Carissa', N'0209974958', N'cadams2q@imgur.com', N'43 Sachs Circle', NULL, 1, CAST(N'2002-01-20T23:32:35.000' AS DateTime), 0, CAST(N'2012-08-24T11:08:31.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (1, N'DSC1', 0.1, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2019-06-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (10, N'DSC10', 0.1, CAST(N'2018-08-10T00:00:00.000' AS DateTime), CAST(N'2020-03-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (100, N'DSC100', 0.2, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2019-11-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (101, N'DSC101', 0.5, CAST(N'2018-11-27T00:00:00.000' AS DateTime), CAST(N'2019-06-04T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (102, N'DSC102', 0.5, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2020-03-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (103, N'DSC103', 0.5, CAST(N'2019-02-16T00:00:00.000' AS DateTime), CAST(N'2019-12-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (104, N'DSC104', 0.5, CAST(N'2018-06-08T00:00:00.000' AS DateTime), CAST(N'2020-03-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (105, N'DSC105', 0.5, CAST(N'2018-09-11T00:00:00.000' AS DateTime), CAST(N'2019-06-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (106, N'DSC106', 0.5, CAST(N'2019-01-02T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (107, N'DSC107', 0.5, CAST(N'2019-04-24T00:00:00.000' AS DateTime), CAST(N'2020-03-16T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (108, N'DSC108', 0.5, CAST(N'2018-11-25T00:00:00.000' AS DateTime), CAST(N'2020-03-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (109, N'DSC109', 0.5, CAST(N'2019-02-25T00:00:00.000' AS DateTime), CAST(N'2020-05-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (11, N'DSC11', 0.1, CAST(N'2018-10-25T00:00:00.000' AS DateTime), CAST(N'2019-10-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (110, N'DSC110', 0.5, CAST(N'2018-11-24T00:00:00.000' AS DateTime), CAST(N'2019-12-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (111, N'DSC111', 0.5, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2019-12-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (112, N'DSC112', 0.5, CAST(N'2018-11-30T00:00:00.000' AS DateTime), CAST(N'2019-12-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (113, N'DSC113', 0.5, CAST(N'2018-07-21T00:00:00.000' AS DateTime), CAST(N'2020-03-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (114, N'DSC114', 0.5, CAST(N'2018-08-05T00:00:00.000' AS DateTime), CAST(N'2020-03-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (115, N'DSC115', 0.5, CAST(N'2019-03-31T00:00:00.000' AS DateTime), CAST(N'2020-01-26T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (116, N'DSC116', 0.5, CAST(N'2019-04-10T00:00:00.000' AS DateTime), CAST(N'2020-05-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (117, N'DSC117', 0.5, CAST(N'2019-03-08T00:00:00.000' AS DateTime), CAST(N'2020-02-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (118, N'DSC118', 0.5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2020-03-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (119, N'DSC119', 0.5, CAST(N'2019-02-15T00:00:00.000' AS DateTime), CAST(N'2020-01-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (12, N'DSC12', 0.1, CAST(N'2019-02-14T00:00:00.000' AS DateTime), CAST(N'2020-02-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (120, N'DSC120', 0.5, CAST(N'2019-02-15T00:00:00.000' AS DateTime), CAST(N'2019-11-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (121, N'DSC121', 0.5, CAST(N'2018-06-17T00:00:00.000' AS DateTime), CAST(N'2020-03-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (122, N'DSC122', 0.5, CAST(N'2018-09-18T00:00:00.000' AS DateTime), CAST(N'2020-04-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (123, N'DSC123', 0.5, CAST(N'2019-02-22T00:00:00.000' AS DateTime), CAST(N'2019-11-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (124, N'DSC124', 0.5, CAST(N'2019-02-14T00:00:00.000' AS DateTime), CAST(N'2020-05-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (125, N'DSC125', 0.5, CAST(N'2019-06-02T00:00:00.000' AS DateTime), CAST(N'2019-12-27T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (126, N'DSC126', 0.5, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2019-07-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (127, N'DSC127', 0.5, CAST(N'2018-08-06T00:00:00.000' AS DateTime), CAST(N'2019-09-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (128, N'DSC128', 0.5, CAST(N'2019-05-01T00:00:00.000' AS DateTime), CAST(N'2019-12-27T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (129, N'DSC129', 0.5, CAST(N'2019-02-24T00:00:00.000' AS DateTime), CAST(N'2019-11-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (13, N'DSC13', 0.1, CAST(N'2019-01-17T00:00:00.000' AS DateTime), CAST(N'2019-09-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (130, N'DSC130', 0.5, CAST(N'2019-02-18T00:00:00.000' AS DateTime), CAST(N'2019-08-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (131, N'DSC131', 0.5, CAST(N'2019-02-05T00:00:00.000' AS DateTime), CAST(N'2019-07-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (132, N'DSC132', 0.5, CAST(N'2019-03-19T00:00:00.000' AS DateTime), CAST(N'2019-10-16T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (133, N'DSC133', 0.5, CAST(N'2019-01-24T00:00:00.000' AS DateTime), CAST(N'2020-03-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (134, N'DSC134', 0.5, CAST(N'2019-01-05T00:00:00.000' AS DateTime), CAST(N'2019-11-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (135, N'DSC135', 0.5, CAST(N'2018-09-01T00:00:00.000' AS DateTime), CAST(N'2019-06-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (136, N'DSC136', 0.5, CAST(N'2019-02-28T00:00:00.000' AS DateTime), CAST(N'2019-06-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (137, N'DSC137', 0.5, CAST(N'2018-06-11T00:00:00.000' AS DateTime), CAST(N'2019-07-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (138, N'DSC138', 0.5, CAST(N'2019-05-05T00:00:00.000' AS DateTime), CAST(N'2020-04-16T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (139, N'DSC139', 0.5, CAST(N'2018-10-07T00:00:00.000' AS DateTime), CAST(N'2019-12-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (14, N'DSC14', 0.1, CAST(N'2018-11-10T00:00:00.000' AS DateTime), CAST(N'2019-12-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (140, N'DSC140', 0.5, CAST(N'2019-02-22T00:00:00.000' AS DateTime), CAST(N'2020-04-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (141, N'DSC141', 0.5, CAST(N'2019-02-09T00:00:00.000' AS DateTime), CAST(N'2019-12-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (142, N'DSC142', 0.5, CAST(N'2019-05-22T00:00:00.000' AS DateTime), CAST(N'2020-01-17T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (143, N'DSC143', 0.5, CAST(N'2018-10-27T00:00:00.000' AS DateTime), CAST(N'2019-08-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (144, N'DSC144', 0.5, CAST(N'2018-06-26T00:00:00.000' AS DateTime), CAST(N'2019-10-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (145, N'DSC145', 0.5, CAST(N'2018-10-08T00:00:00.000' AS DateTime), CAST(N'2019-09-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (146, N'DSC146', 0.5, CAST(N'2018-07-31T00:00:00.000' AS DateTime), CAST(N'2019-06-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (147, N'DSC147', 0.5, CAST(N'2019-01-26T00:00:00.000' AS DateTime), CAST(N'2020-04-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (148, N'DSC148', 0.5, CAST(N'2018-09-22T00:00:00.000' AS DateTime), CAST(N'2019-07-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (149, N'DSC149', 0.5, CAST(N'2019-01-21T00:00:00.000' AS DateTime), CAST(N'2020-05-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (15, N'DSC15', 0.1, CAST(N'2019-05-22T00:00:00.000' AS DateTime), CAST(N'2020-05-15T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (150, N'DSC150', 0.5, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2019-09-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (151, N'DSC151', 0.7, CAST(N'2018-10-26T00:00:00.000' AS DateTime), CAST(N'2020-01-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (152, N'DSC152', 0.7, CAST(N'2018-07-05T00:00:00.000' AS DateTime), CAST(N'2019-12-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (153, N'DSC153', 0.7, CAST(N'2018-09-16T00:00:00.000' AS DateTime), CAST(N'2019-09-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (154, N'DSC154', 0.7, CAST(N'2019-04-08T00:00:00.000' AS DateTime), CAST(N'2019-10-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (155, N'DSC155', 0.7, CAST(N'2018-11-23T00:00:00.000' AS DateTime), CAST(N'2019-11-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (156, N'DSC156', 0.7, CAST(N'2019-02-04T00:00:00.000' AS DateTime), CAST(N'2020-02-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (157, N'DSC157', 0.7, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2020-03-17T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (158, N'DSC158', 0.7, CAST(N'2018-10-29T00:00:00.000' AS DateTime), CAST(N'2019-09-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (159, N'DSC159', 0.7, CAST(N'2019-04-26T00:00:00.000' AS DateTime), CAST(N'2019-12-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (16, N'DSC16', 0.1, CAST(N'2019-05-06T00:00:00.000' AS DateTime), CAST(N'2019-12-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (160, N'DSC160', 0.7, CAST(N'2018-09-30T00:00:00.000' AS DateTime), CAST(N'2019-12-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (161, N'DSC161', 0.7, CAST(N'2019-01-02T00:00:00.000' AS DateTime), CAST(N'2020-03-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (162, N'DSC162', 0.7, CAST(N'2019-01-20T00:00:00.000' AS DateTime), CAST(N'2020-05-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (163, N'DSC163', 0.7, CAST(N'2019-03-19T00:00:00.000' AS DateTime), CAST(N'2019-08-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (164, N'DSC164', 0.7, CAST(N'2018-07-11T00:00:00.000' AS DateTime), CAST(N'2019-10-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (165, N'DSC165', 0.7, CAST(N'2018-09-26T00:00:00.000' AS DateTime), CAST(N'2020-02-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (166, N'DSC166', 0.7, CAST(N'2019-03-02T00:00:00.000' AS DateTime), CAST(N'2019-08-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (167, N'DSC167', 0.7, CAST(N'2019-01-29T00:00:00.000' AS DateTime), CAST(N'2020-05-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (168, N'DSC168', 0.7, CAST(N'2019-04-24T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (169, N'DSC169', 0.7, CAST(N'2019-02-06T00:00:00.000' AS DateTime), CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (17, N'DSC17', 0.1, CAST(N'2018-09-29T00:00:00.000' AS DateTime), CAST(N'2020-05-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (170, N'DSC170', 0.7, CAST(N'2018-11-24T00:00:00.000' AS DateTime), CAST(N'2019-10-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (171, N'DSC171', 0.7, CAST(N'2018-06-28T00:00:00.000' AS DateTime), CAST(N'2020-05-26T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (172, N'DSC172', 0.7, CAST(N'2019-05-30T00:00:00.000' AS DateTime), CAST(N'2019-10-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (173, N'DSC173', 0.7, CAST(N'2018-11-04T00:00:00.000' AS DateTime), CAST(N'2020-05-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (174, N'DSC174', 0.7, CAST(N'2018-09-14T00:00:00.000' AS DateTime), CAST(N'2019-06-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (175, N'DSC175', 0.7, CAST(N'2018-10-17T00:00:00.000' AS DateTime), CAST(N'2020-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (176, N'DSC176', 0.7, CAST(N'2019-02-10T00:00:00.000' AS DateTime), CAST(N'2020-05-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (177, N'DSC177', 0.7, CAST(N'2019-02-07T00:00:00.000' AS DateTime), CAST(N'2019-11-15T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (178, N'DSC178', 0.7, CAST(N'2019-04-30T00:00:00.000' AS DateTime), CAST(N'2020-04-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (179, N'DSC179', 0.7, CAST(N'2019-04-21T00:00:00.000' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (18, N'DSC18', 0.1, CAST(N'2019-01-16T00:00:00.000' AS DateTime), CAST(N'2019-07-16T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (180, N'DSC180', 0.7, CAST(N'2019-03-25T00:00:00.000' AS DateTime), CAST(N'2020-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (181, N'DSC181', 0.7, CAST(N'2018-09-05T00:00:00.000' AS DateTime), CAST(N'2020-03-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (182, N'DSC182', 0.7, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2020-04-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (183, N'DSC183', 0.7, CAST(N'2018-06-23T00:00:00.000' AS DateTime), CAST(N'2020-04-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (184, N'DSC184', 0.7, CAST(N'2019-03-23T00:00:00.000' AS DateTime), CAST(N'2019-12-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (185, N'DSC185', 0.7, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2019-06-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (186, N'DSC186', 0.7, CAST(N'2019-05-23T00:00:00.000' AS DateTime), CAST(N'2019-12-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (187, N'DSC187', 0.7, CAST(N'2018-11-06T00:00:00.000' AS DateTime), CAST(N'2020-04-19T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (188, N'DSC188', 0.7, CAST(N'2018-07-15T00:00:00.000' AS DateTime), CAST(N'2020-03-01T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (189, N'DSC189', 0.7, CAST(N'2018-10-09T00:00:00.000' AS DateTime), CAST(N'2019-12-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (19, N'DSC19', 0.1, CAST(N'2019-01-26T00:00:00.000' AS DateTime), CAST(N'2019-07-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (190, N'DSC190', 0.7, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2019-10-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (191, N'DSC191', 0.7, CAST(N'2018-09-19T00:00:00.000' AS DateTime), CAST(N'2019-08-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (192, N'DSC192', 0.7, CAST(N'2018-11-18T00:00:00.000' AS DateTime), CAST(N'2020-01-03T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (193, N'DSC193', 0.7, CAST(N'2019-03-07T00:00:00.000' AS DateTime), CAST(N'2020-04-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (194, N'DSC194', 0.7, CAST(N'2018-07-24T00:00:00.000' AS DateTime), CAST(N'2019-08-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (195, N'DSC195', 0.7, CAST(N'2019-03-02T00:00:00.000' AS DateTime), CAST(N'2019-12-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (196, N'DSC196', 0.7, CAST(N'2019-05-01T00:00:00.000' AS DateTime), CAST(N'2019-12-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (197, N'DSC197', 0.7, CAST(N'2019-03-22T00:00:00.000' AS DateTime), CAST(N'2020-03-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (198, N'DSC198', 0.7, CAST(N'2018-09-30T00:00:00.000' AS DateTime), CAST(N'2020-02-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (199, N'DSC199', 0.7, CAST(N'2019-02-16T00:00:00.000' AS DateTime), CAST(N'2019-08-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (2, N'DSC2', 0.1, CAST(N'2018-11-24T00:00:00.000' AS DateTime), CAST(N'2019-09-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (20, N'DSC20', 0.1, CAST(N'2019-02-26T00:00:00.000' AS DateTime), CAST(N'2019-12-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (200, N'DSC200', 0.7, CAST(N'2018-06-21T00:00:00.000' AS DateTime), CAST(N'2020-01-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (21, N'DSC21', 0.1, CAST(N'2019-03-21T00:00:00.000' AS DateTime), CAST(N'2020-04-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (22, N'DSC22', 0.1, CAST(N'2018-08-07T00:00:00.000' AS DateTime), CAST(N'2019-10-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (23, N'DSC23', 0.1, CAST(N'2019-02-22T00:00:00.000' AS DateTime), CAST(N'2019-12-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (24, N'DSC24', 0.1, CAST(N'2019-04-12T00:00:00.000' AS DateTime), CAST(N'2019-12-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (25, N'DSC25', 0.1, CAST(N'2018-11-12T00:00:00.000' AS DateTime), CAST(N'2020-04-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (26, N'DSC26', 0.1, CAST(N'2019-02-22T00:00:00.000' AS DateTime), CAST(N'2019-12-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (27, N'DSC27', 0.1, CAST(N'2019-01-22T00:00:00.000' AS DateTime), CAST(N'2020-02-17T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (28, N'DSC28', 0.1, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2020-05-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (29, N'DSC29', 0.1, CAST(N'2019-03-23T00:00:00.000' AS DateTime), CAST(N'2020-04-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (3, N'DSC3', 0.1, CAST(N'2018-07-23T00:00:00.000' AS DateTime), CAST(N'2020-03-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (30, N'DSC30', 0.1, CAST(N'2018-10-19T00:00:00.000' AS DateTime), CAST(N'2019-08-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (31, N'DSC31', 0.1, CAST(N'2018-10-19T00:00:00.000' AS DateTime), CAST(N'2019-09-03T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (32, N'DSC32', 0.1, CAST(N'2018-08-04T00:00:00.000' AS DateTime), CAST(N'2019-11-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (33, N'DSC33', 0.1, CAST(N'2018-09-01T00:00:00.000' AS DateTime), CAST(N'2019-12-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (34, N'DSC34', 0.1, CAST(N'2019-02-21T00:00:00.000' AS DateTime), CAST(N'2019-09-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (35, N'DSC35', 0.1, CAST(N'2018-11-23T00:00:00.000' AS DateTime), CAST(N'2019-07-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (36, N'DSC36', 0.1, CAST(N'2019-03-25T00:00:00.000' AS DateTime), CAST(N'2019-12-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (37, N'DSC37', 0.1, CAST(N'2018-07-28T00:00:00.000' AS DateTime), CAST(N'2020-02-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (38, N'DSC38', 0.1, CAST(N'2018-06-07T00:00:00.000' AS DateTime), CAST(N'2019-10-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (39, N'DSC39', 0.1, CAST(N'2018-10-29T00:00:00.000' AS DateTime), CAST(N'2019-12-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (4, N'DSC4', 0.1, CAST(N'2019-03-27T00:00:00.000' AS DateTime), CAST(N'2019-10-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (40, N'DSC40', 0.1, CAST(N'2019-03-10T00:00:00.000' AS DateTime), CAST(N'2020-02-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (41, N'DSC41', 0.1, CAST(N'2019-05-16T00:00:00.000' AS DateTime), CAST(N'2020-05-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (42, N'DSC42', 0.1, CAST(N'2018-09-17T00:00:00.000' AS DateTime), CAST(N'2019-12-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (43, N'DSC43', 0.1, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2020-01-27T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (44, N'DSC44', 0.1, CAST(N'2019-04-13T00:00:00.000' AS DateTime), CAST(N'2019-12-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (45, N'DSC45', 0.1, CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-02-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (46, N'DSC46', 0.1, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2019-08-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (47, N'DSC47', 0.1, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2019-10-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (48, N'DSC48', 0.1, CAST(N'2018-07-09T00:00:00.000' AS DateTime), CAST(N'2020-01-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (49, N'DSC49', 0.1, CAST(N'2018-10-27T00:00:00.000' AS DateTime), CAST(N'2020-03-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (5, N'DSC5', 0.1, CAST(N'2019-01-10T00:00:00.000' AS DateTime), CAST(N'2019-07-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (50, N'DSC50', 0.1, CAST(N'2018-11-14T00:00:00.000' AS DateTime), CAST(N'2019-08-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (51, N'DSC51', 0.2, CAST(N'2019-01-30T00:00:00.000' AS DateTime), CAST(N'2020-04-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (52, N'DSC52', 0.2, CAST(N'2018-09-27T00:00:00.000' AS DateTime), CAST(N'2019-09-19T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (53, N'DSC53', 0.2, CAST(N'2018-07-27T00:00:00.000' AS DateTime), CAST(N'2019-10-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (54, N'DSC54', 0.2, CAST(N'2019-02-23T00:00:00.000' AS DateTime), CAST(N'2019-11-15T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (55, N'DSC55', 0.2, CAST(N'2018-11-16T00:00:00.000' AS DateTime), CAST(N'2020-05-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (56, N'DSC56', 0.2, CAST(N'2019-04-05T00:00:00.000' AS DateTime), CAST(N'2019-09-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (57, N'DSC57', 0.2, CAST(N'2019-05-13T00:00:00.000' AS DateTime), CAST(N'2020-05-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (58, N'DSC58', 0.2, CAST(N'2018-08-26T00:00:00.000' AS DateTime), CAST(N'2020-02-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (59, N'DSC59', 0.2, CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2020-05-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (6, N'DSC6', 0.1, CAST(N'2019-05-31T00:00:00.000' AS DateTime), CAST(N'2019-08-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (60, N'DSC60', 0.2, CAST(N'2018-06-20T00:00:00.000' AS DateTime), CAST(N'2020-04-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (61, N'DSC61', 0.2, CAST(N'2019-04-03T00:00:00.000' AS DateTime), CAST(N'2019-06-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (62, N'DSC62', 0.2, CAST(N'2019-02-17T00:00:00.000' AS DateTime), CAST(N'2019-12-19T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (63, N'DSC63', 0.2, CAST(N'2018-07-28T00:00:00.000' AS DateTime), CAST(N'2019-12-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (64, N'DSC64', 0.2, CAST(N'2018-10-03T00:00:00.000' AS DateTime), CAST(N'2019-08-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (65, N'DSC65', 0.2, CAST(N'2019-01-09T00:00:00.000' AS DateTime), CAST(N'2020-02-29T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (66, N'DSC66', 0.2, CAST(N'2019-04-28T00:00:00.000' AS DateTime), CAST(N'2019-12-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (67, N'DSC67', 0.2, CAST(N'2018-11-30T00:00:00.000' AS DateTime), CAST(N'2019-10-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (68, N'DSC68', 0.2, CAST(N'2018-06-23T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (69, N'DSC69', 0.2, CAST(N'2019-03-22T00:00:00.000' AS DateTime), CAST(N'2020-03-17T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (7, N'DSC7', 0.1, CAST(N'2018-11-14T00:00:00.000' AS DateTime), CAST(N'2019-07-15T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (70, N'DSC70', 0.2, CAST(N'2019-03-13T00:00:00.000' AS DateTime), CAST(N'2019-09-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (71, N'DSC71', 0.2, CAST(N'2018-08-10T00:00:00.000' AS DateTime), CAST(N'2020-05-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (72, N'DSC72', 0.2, CAST(N'2019-02-05T00:00:00.000' AS DateTime), CAST(N'2020-04-04T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (73, N'DSC73', 0.2, CAST(N'2018-10-24T00:00:00.000' AS DateTime), CAST(N'2019-11-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (74, N'DSC74', 0.2, CAST(N'2018-09-28T00:00:00.000' AS DateTime), CAST(N'2020-03-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (75, N'DSC75', 0.2, CAST(N'2018-09-09T00:00:00.000' AS DateTime), CAST(N'2019-11-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (76, N'DSC76', 0.2, CAST(N'2018-07-04T00:00:00.000' AS DateTime), CAST(N'2020-02-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (77, N'DSC77', 0.2, CAST(N'2019-02-01T00:00:00.000' AS DateTime), CAST(N'2019-10-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (78, N'DSC78', 0.2, CAST(N'2019-05-09T00:00:00.000' AS DateTime), CAST(N'2019-08-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (79, N'DSC79', 0.2, CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-09-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (8, N'DSC8', 0.1, CAST(N'2019-04-29T00:00:00.000' AS DateTime), CAST(N'2019-08-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (80, N'DSC80', 0.2, CAST(N'2018-09-09T00:00:00.000' AS DateTime), CAST(N'2019-06-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (81, N'DSC81', 0.2, CAST(N'2019-02-24T00:00:00.000' AS DateTime), CAST(N'2019-11-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (82, N'DSC82', 0.2, CAST(N'2019-03-12T00:00:00.000' AS DateTime), CAST(N'2020-02-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (83, N'DSC83', 0.2, CAST(N'2019-05-20T00:00:00.000' AS DateTime), CAST(N'2019-10-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (84, N'DSC84', 0.2, CAST(N'2018-10-14T00:00:00.000' AS DateTime), CAST(N'2019-12-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (85, N'DSC85', 0.2, CAST(N'2018-08-09T00:00:00.000' AS DateTime), CAST(N'2019-11-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (86, N'DSC86', 0.2, CAST(N'2018-10-03T00:00:00.000' AS DateTime), CAST(N'2019-11-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (87, N'DSC87', 0.2, CAST(N'2019-04-19T00:00:00.000' AS DateTime), CAST(N'2020-03-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (88, N'DSC88', 0.2, CAST(N'2018-11-05T00:00:00.000' AS DateTime), CAST(N'2020-03-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (89, N'DSC89', 0.2, CAST(N'2019-04-18T00:00:00.000' AS DateTime), CAST(N'2019-11-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (9, N'DSC9', 0.1, CAST(N'2018-11-09T00:00:00.000' AS DateTime), CAST(N'2019-08-16T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (90, N'DSC90', 0.2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2019-09-03T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (91, N'DSC91', 0.2, CAST(N'2018-11-24T00:00:00.000' AS DateTime), CAST(N'2020-01-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (92, N'DSC92', 0.2, CAST(N'2018-09-23T00:00:00.000' AS DateTime), CAST(N'2019-07-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (93, N'DSC93', 0.2, CAST(N'2018-11-25T00:00:00.000' AS DateTime), CAST(N'2019-10-29T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (94, N'DSC94', 0.2, CAST(N'2019-01-24T00:00:00.000' AS DateTime), CAST(N'2020-04-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (95, N'DSC95', 0.2, CAST(N'2019-02-02T00:00:00.000' AS DateTime), CAST(N'2020-04-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (96, N'DSC96', 0.2, CAST(N'2018-10-24T00:00:00.000' AS DateTime), CAST(N'2020-02-24T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (97, N'DSC97', 0.2, CAST(N'2019-02-21T00:00:00.000' AS DateTime), CAST(N'2019-09-26T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (98, N'DSC98', 0.2, CAST(N'2018-08-23T00:00:00.000' AS DateTime), CAST(N'2019-07-03T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Discount] ([id], [DiscountId], [Value], [BeginDate], [EndDate], [IsDeleted]) VALUES (99, N'DSC99', 0.2, CAST(N'2018-07-31T00:00:00.000' AS DateTime), CAST(N'2019-09-27T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Discount] OFF
SET IDENTITY_INSERT [dbo].[GoodsReceiptedNote] ON 

INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (2, N'GR01', 30000000, N'SPL5', CAST(N'2020-06-04T23:43:23.413' AS DateTime), 5000000, 0)
INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (3, N'GR02', 32000000, N'SPL4', CAST(N'2020-05-25T23:43:23.437' AS DateTime), 5000000, 0)
INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (4, N'GR03', 31000000, N'SPL3', CAST(N'2020-05-30T23:43:23.437' AS DateTime), 4500000, 0)
INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (5, N'GR04', 32000000, N'SPL2', CAST(N'2020-02-25T23:43:23.437' AS DateTime), 3000000, 0)
INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (6, N'GR05', 34000000, N'SPL1', CAST(N'2019-11-17T23:43:23.437' AS DateTime), 3500000, 0)
INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (7, N'GR06', 20000000, N'SPL5', CAST(N'2020-02-25T23:43:23.440' AS DateTime), 5000000, 0)
INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (8, N'GR07', 30000000, N'SPL1', CAST(N'2020-02-25T23:43:23.440' AS DateTime), 5000000, 0)
INSERT [dbo].[GoodsReceiptedNote] ([id], [ReceiptNoteId], [TotalValue], [SupplierId], [InputDate], [TransferCost], [IsDeleted]) VALUES (9, N'GR08', 20000000, N'SPL5', CAST(N'2019-06-05T23:43:23.440' AS DateTime), 5000000, 0)
SET IDENTITY_INSERT [dbo].[GoodsReceiptedNote] OFF
SET IDENTITY_INSERT [dbo].[GoodsReceiptedNoteDetail] ON 

INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (13, N'GR06', N'P12', N'100000    ', 200, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (2, N'GR01', N'P1', N'150000    ', 200, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (3, N'GR02', N'P2', N'150000    ', 100, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (4, N'GR02', N'P3', N'100000    ', 50, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (5, N'GR02', N'P4', N'120000    ', 100, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (6, N'GR03', N'P5', N'155000    ', 200, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (7, N'GR04', N'P6', N'120000    ', 100, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (8, N'GR04', N'P7', N'100000    ', 200, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (9, N'GR05', N'P8', N'100000    ', 50, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (10, N'GR05', N'P9', N'100000    ', 50, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (11, N'GR05', N'P10', N'200000    ', 100, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (12, N'GR05', N'P11', N'80000     ', 50, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (14, N'GR07', N'P1', N'150000    ', 200, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (15, N'GR08', N'P13', N'100000    ', 100, 0)
INSERT [dbo].[GoodsReceiptedNoteDetail] ([id], [ReceiptNoteId], [ProductId], [InputPrice], [Quantity], [IsDeleted]) VALUES (16, N'GR08', N'P14', N'100000    ', 100, 0)
SET IDENTITY_INSERT [dbo].[GoodsReceiptedNoteDetail] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1, N'ORD1', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (2, N'ORD1', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (3, N'ORD2', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (4, N'ORD2', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (5, N'ORD3', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (6, N'ORD3', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (7, N'ORD4', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (8, N'ORD4', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (9, N'ORD5', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (10, N'ORD5', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (11, N'ORD6', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (12, N'ORD6', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (13, N'ORD7', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (14, N'ORD7', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (15, N'ORD8', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (16, N'ORD8', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (17, N'ORD9', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (18, N'ORD9', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (19, N'ORD10', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (20, N'ORD10', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (21, N'ORD11', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (22, N'ORD11', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (23, N'ORD12', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (24, N'ORD12', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (25, N'ORD13', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (26, N'ORD13', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (27, N'ORD14', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (28, N'ORD14', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (29, N'ORD15', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (30, N'ORD15', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (31, N'ORD16', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (32, N'ORD16', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (33, N'ORD17', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (34, N'ORD17', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (35, N'ORD18', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (36, N'ORD18', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (37, N'ORD19', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (38, N'ORD19', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (39, N'ORD20', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (40, N'ORD20', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (41, N'ORD21', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (42, N'ORD21', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (43, N'ORD22', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (44, N'ORD22', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (45, N'ORD23', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (46, N'ORD23', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (47, N'ORD24', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (48, N'ORD24', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (49, N'ORD25', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (50, N'ORD25', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (51, N'ORD26', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (52, N'ORD26', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (53, N'ORD27', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (54, N'ORD27', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (55, N'ORD28', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (56, N'ORD28', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (57, N'ORD29', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (58, N'ORD29', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (59, N'ORD30', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (60, N'ORD30', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (61, N'ORD31', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (62, N'ORD31', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (63, N'ORD32', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (64, N'ORD32', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (65, N'ORD33', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (66, N'ORD33', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (67, N'ORD34', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (68, N'ORD34', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (69, N'ORD35', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (70, N'ORD35', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (71, N'ORD36', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (72, N'ORD36', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (73, N'ORD37', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (74, N'ORD37', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (75, N'ORD38', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (76, N'ORD38', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (77, N'ORD39', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (78, N'ORD39', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (79, N'ORD40', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (80, N'ORD40', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (81, N'ORD41', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (82, N'ORD41', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (83, N'ORD42', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (84, N'ORD42', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (85, N'ORD43', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (86, N'ORD43', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (87, N'ORD44', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (88, N'ORD44', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (89, N'ORD45', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (90, N'ORD45', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (91, N'ORD46', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (92, N'ORD46', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (93, N'ORD47', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (94, N'ORD47', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (95, N'ORD48', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (96, N'ORD48', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (97, N'ORD49', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (98, N'ORD49', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (99, N'ORD50', N'P9', N'S         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (100, N'ORD50', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (101, N'ORD51', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (102, N'ORD51', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (103, N'ORD52', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (104, N'ORD52', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (105, N'ORD53', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (106, N'ORD53', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (107, N'ORD54', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (108, N'ORD54', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (109, N'ORD55', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (110, N'ORD55', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (111, N'ORD56', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (112, N'ORD56', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (113, N'ORD57', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (114, N'ORD57', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (115, N'ORD58', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (116, N'ORD58', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (117, N'ORD59', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (118, N'ORD59', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (119, N'ORD60', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (120, N'ORD60', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (121, N'ORD61', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (122, N'ORD61', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (123, N'ORD62', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (124, N'ORD62', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (125, N'ORD63', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (126, N'ORD63', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (127, N'ORD64', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (128, N'ORD64', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (129, N'ORD65', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (130, N'ORD65', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (131, N'ORD66', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (132, N'ORD66', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (133, N'ORD67', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (134, N'ORD67', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (135, N'ORD68', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (136, N'ORD68', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (137, N'ORD69', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (138, N'ORD69', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (139, N'ORD70', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (140, N'ORD70', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (141, N'ORD71', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (142, N'ORD71', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (143, N'ORD72', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (144, N'ORD72', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (145, N'ORD73', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (146, N'ORD73', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (147, N'ORD74', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (148, N'ORD74', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (149, N'ORD75', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (150, N'ORD75', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (151, N'ORD76', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (152, N'ORD76', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (153, N'ORD77', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (154, N'ORD77', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (155, N'ORD78', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (156, N'ORD78', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (157, N'ORD79', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (158, N'ORD79', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (159, N'ORD80', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (160, N'ORD80', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (161, N'ORD81', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (162, N'ORD81', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (163, N'ORD82', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (164, N'ORD82', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (165, N'ORD83', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (166, N'ORD83', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (167, N'ORD84', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (168, N'ORD84', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (169, N'ORD85', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (170, N'ORD85', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (171, N'ORD86', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (172, N'ORD86', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (173, N'ORD87', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (174, N'ORD87', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (175, N'ORD88', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (176, N'ORD88', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (177, N'ORD89', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (178, N'ORD89', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (179, N'ORD90', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (180, N'ORD90', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (181, N'ORD91', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (182, N'ORD91', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (183, N'ORD92', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (184, N'ORD92', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (185, N'ORD93', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (186, N'ORD93', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (187, N'ORD94', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (188, N'ORD94', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (189, N'ORD95', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (190, N'ORD95', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (191, N'ORD96', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (192, N'ORD96', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (193, N'ORD97', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (194, N'ORD97', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (195, N'ORD98', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (196, N'ORD98', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (197, N'ORD99', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (198, N'ORD99', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (199, N'ORD100', N'P19', N'S         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (200, N'ORD100', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (201, N'ORD101', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (202, N'ORD101', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (203, N'ORD102', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (204, N'ORD102', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (205, N'ORD103', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (206, N'ORD103', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (207, N'ORD104', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (208, N'ORD104', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (209, N'ORD105', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (210, N'ORD105', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (211, N'ORD106', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (212, N'ORD106', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (213, N'ORD107', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (214, N'ORD107', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (215, N'ORD108', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (216, N'ORD108', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (217, N'ORD109', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (218, N'ORD109', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (219, N'ORD110', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (220, N'ORD110', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (221, N'ORD111', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (222, N'ORD111', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (223, N'ORD112', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (224, N'ORD112', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (225, N'ORD113', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (226, N'ORD113', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (227, N'ORD114', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (228, N'ORD114', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (229, N'ORD115', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (230, N'ORD115', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (231, N'ORD116', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (232, N'ORD116', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (233, N'ORD117', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (234, N'ORD117', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (235, N'ORD118', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (236, N'ORD118', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (237, N'ORD119', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (238, N'ORD119', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (239, N'ORD120', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (240, N'ORD120', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (241, N'ORD121', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (242, N'ORD121', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (243, N'ORD122', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (244, N'ORD122', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (245, N'ORD123', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (246, N'ORD123', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (247, N'ORD124', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (248, N'ORD124', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (249, N'ORD125', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (250, N'ORD125', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (251, N'ORD126', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (252, N'ORD126', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (253, N'ORD127', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (254, N'ORD127', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (255, N'ORD128', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (256, N'ORD128', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (257, N'ORD129', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (258, N'ORD129', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (259, N'ORD130', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (260, N'ORD130', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (261, N'ORD131', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (262, N'ORD131', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (263, N'ORD132', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (264, N'ORD132', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (265, N'ORD133', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (266, N'ORD133', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (267, N'ORD134', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (268, N'ORD134', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (269, N'ORD135', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (270, N'ORD135', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (271, N'ORD136', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (272, N'ORD136', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (273, N'ORD137', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (274, N'ORD137', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (275, N'ORD138', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (276, N'ORD138', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (277, N'ORD139', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (278, N'ORD139', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (279, N'ORD140', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (280, N'ORD140', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (281, N'ORD141', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (282, N'ORD141', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (283, N'ORD142', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (284, N'ORD142', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (285, N'ORD143', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (286, N'ORD143', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (287, N'ORD144', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (288, N'ORD144', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (289, N'ORD145', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (290, N'ORD145', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (291, N'ORD146', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (292, N'ORD146', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (293, N'ORD147', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (294, N'ORD147', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (295, N'ORD148', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (296, N'ORD148', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (297, N'ORD149', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (298, N'ORD149', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (299, N'ORD150', N'P29', N'S         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (300, N'ORD150', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (301, N'ORD151', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (302, N'ORD151', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (303, N'ORD152', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (304, N'ORD152', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (305, N'ORD153', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (306, N'ORD153', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (307, N'ORD154', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (308, N'ORD154', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (309, N'ORD155', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (310, N'ORD155', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (311, N'ORD156', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (312, N'ORD156', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (313, N'ORD157', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (314, N'ORD157', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (315, N'ORD158', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (316, N'ORD158', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (317, N'ORD159', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (318, N'ORD159', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (319, N'ORD160', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (320, N'ORD160', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (321, N'ORD161', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (322, N'ORD161', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (323, N'ORD162', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (324, N'ORD162', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (325, N'ORD163', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (326, N'ORD163', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (327, N'ORD164', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (328, N'ORD164', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (329, N'ORD165', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (330, N'ORD165', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (331, N'ORD166', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (332, N'ORD166', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (333, N'ORD167', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (334, N'ORD167', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (335, N'ORD168', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (336, N'ORD168', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (337, N'ORD169', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (338, N'ORD169', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (339, N'ORD170', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (340, N'ORD170', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (341, N'ORD171', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (342, N'ORD171', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (343, N'ORD172', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (344, N'ORD172', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (345, N'ORD173', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (346, N'ORD173', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (347, N'ORD174', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (348, N'ORD174', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (349, N'ORD175', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (350, N'ORD175', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (351, N'ORD176', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (352, N'ORD176', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (353, N'ORD177', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (354, N'ORD177', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (355, N'ORD178', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (356, N'ORD178', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (357, N'ORD179', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (358, N'ORD179', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (359, N'ORD180', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (360, N'ORD180', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (361, N'ORD181', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (362, N'ORD181', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (363, N'ORD182', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (364, N'ORD182', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (365, N'ORD183', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (366, N'ORD183', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (367, N'ORD184', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (368, N'ORD184', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (369, N'ORD185', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (370, N'ORD185', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (371, N'ORD186', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (372, N'ORD186', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (373, N'ORD187', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (374, N'ORD187', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (375, N'ORD188', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (376, N'ORD188', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (377, N'ORD189', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (378, N'ORD189', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (379, N'ORD190', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (380, N'ORD190', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (381, N'ORD191', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (382, N'ORD191', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (383, N'ORD192', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (384, N'ORD192', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (385, N'ORD193', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (386, N'ORD193', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (387, N'ORD194', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (388, N'ORD194', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (389, N'ORD195', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (390, N'ORD195', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (391, N'ORD196', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (392, N'ORD196', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (393, N'ORD197', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (394, N'ORD197', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (395, N'ORD198', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (396, N'ORD198', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (397, N'ORD199', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (398, N'ORD199', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (399, N'ORD200', N'P9', N'S         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (400, N'ORD200', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (401, N'ORD201', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (402, N'ORD201', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (403, N'ORD202', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (404, N'ORD202', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (405, N'ORD203', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (406, N'ORD203', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (407, N'ORD204', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (408, N'ORD204', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (409, N'ORD205', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (410, N'ORD205', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (411, N'ORD206', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (412, N'ORD206', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (413, N'ORD207', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (414, N'ORD207', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (415, N'ORD208', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (416, N'ORD208', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (417, N'ORD209', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (418, N'ORD209', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (419, N'ORD210', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (420, N'ORD210', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (421, N'ORD211', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (422, N'ORD211', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (423, N'ORD212', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (424, N'ORD212', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (425, N'ORD213', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (426, N'ORD213', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (427, N'ORD214', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (428, N'ORD214', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (429, N'ORD215', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (430, N'ORD215', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (431, N'ORD216', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (432, N'ORD216', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (433, N'ORD217', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (434, N'ORD217', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (435, N'ORD218', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (436, N'ORD218', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (437, N'ORD219', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (438, N'ORD219', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (439, N'ORD220', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (440, N'ORD220', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (441, N'ORD221', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (442, N'ORD221', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (443, N'ORD222', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (444, N'ORD222', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (445, N'ORD223', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (446, N'ORD223', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (447, N'ORD224', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (448, N'ORD224', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (449, N'ORD225', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (450, N'ORD225', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (451, N'ORD226', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (452, N'ORD226', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (453, N'ORD227', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (454, N'ORD227', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (455, N'ORD228', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (456, N'ORD228', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (457, N'ORD229', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (458, N'ORD229', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (459, N'ORD230', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (460, N'ORD230', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (461, N'ORD231', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (462, N'ORD231', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (463, N'ORD232', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (464, N'ORD232', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (465, N'ORD233', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (466, N'ORD233', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (467, N'ORD234', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (468, N'ORD234', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (469, N'ORD235', N'P19', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (470, N'ORD235', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (471, N'ORD236', N'P21', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (472, N'ORD236', N'P22', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (473, N'ORD237', N'P23', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (474, N'ORD237', N'P24', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (475, N'ORD238', N'P25', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (476, N'ORD238', N'P26', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (477, N'ORD239', N'P27', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (478, N'ORD239', N'P28', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (479, N'ORD240', N'P29', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (480, N'ORD240', N'P30', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (481, N'ORD241', N'P1', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (482, N'ORD241', N'P2', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (483, N'ORD242', N'P3', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (484, N'ORD242', N'P4', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (485, N'ORD243', N'P5', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (486, N'ORD243', N'P6', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (487, N'ORD244', N'P7', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (488, N'ORD244', N'P8', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (489, N'ORD245', N'P9', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (490, N'ORD245', N'P10', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (491, N'ORD246', N'P11', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (492, N'ORD246', N'P12', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (493, N'ORD247', N'P13', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (494, N'ORD247', N'P14', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (495, N'ORD248', N'P15', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (496, N'ORD248', N'P16', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (497, N'ORD249', N'P17', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (498, N'ORD249', N'P18', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (499, N'ORD250', N'P19', N'S         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (500, N'ORD250', N'P20', N'S         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (501, N'ORD251', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (502, N'ORD251', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (503, N'ORD252', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (504, N'ORD252', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (505, N'ORD253', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (506, N'ORD253', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (507, N'ORD254', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (508, N'ORD254', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (509, N'ORD255', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (510, N'ORD255', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (511, N'ORD256', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (512, N'ORD256', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (513, N'ORD257', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (514, N'ORD257', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (515, N'ORD258', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (516, N'ORD258', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (517, N'ORD259', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (518, N'ORD259', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (519, N'ORD260', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (520, N'ORD260', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (521, N'ORD261', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (522, N'ORD261', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (523, N'ORD262', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (524, N'ORD262', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (525, N'ORD263', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (526, N'ORD263', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (527, N'ORD264', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (528, N'ORD264', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (529, N'ORD265', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (530, N'ORD265', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (531, N'ORD266', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (532, N'ORD266', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (533, N'ORD267', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (534, N'ORD267', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (535, N'ORD268', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (536, N'ORD268', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (537, N'ORD269', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (538, N'ORD269', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (539, N'ORD270', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (540, N'ORD270', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (541, N'ORD271', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (542, N'ORD271', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (543, N'ORD272', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (544, N'ORD272', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (545, N'ORD273', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (546, N'ORD273', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (547, N'ORD274', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (548, N'ORD274', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (549, N'ORD275', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (550, N'ORD275', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (551, N'ORD276', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (552, N'ORD276', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (553, N'ORD277', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (554, N'ORD277', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (555, N'ORD278', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (556, N'ORD278', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (557, N'ORD279', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (558, N'ORD279', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (559, N'ORD280', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (560, N'ORD280', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (561, N'ORD281', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (562, N'ORD281', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (563, N'ORD282', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (564, N'ORD282', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (565, N'ORD283', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (566, N'ORD283', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (567, N'ORD284', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (568, N'ORD284', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (569, N'ORD285', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (570, N'ORD285', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (571, N'ORD286', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (572, N'ORD286', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (573, N'ORD287', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (574, N'ORD287', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (575, N'ORD288', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (576, N'ORD288', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (577, N'ORD289', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (578, N'ORD289', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (579, N'ORD290', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (580, N'ORD290', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (581, N'ORD291', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (582, N'ORD291', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (583, N'ORD292', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (584, N'ORD292', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (585, N'ORD293', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (586, N'ORD293', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (587, N'ORD294', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (588, N'ORD294', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (589, N'ORD295', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (590, N'ORD295', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (591, N'ORD296', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (592, N'ORD296', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (593, N'ORD297', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (594, N'ORD297', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (595, N'ORD298', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (596, N'ORD298', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (597, N'ORD299', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (598, N'ORD299', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (599, N'ORD300', N'P29', N'M         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (600, N'ORD300', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (601, N'ORD301', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (602, N'ORD301', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (603, N'ORD302', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (604, N'ORD302', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (605, N'ORD303', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (606, N'ORD303', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (607, N'ORD304', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (608, N'ORD304', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (609, N'ORD305', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (610, N'ORD305', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (611, N'ORD306', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (612, N'ORD306', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (613, N'ORD307', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (614, N'ORD307', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (615, N'ORD308', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (616, N'ORD308', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (617, N'ORD309', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (618, N'ORD309', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (619, N'ORD310', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (620, N'ORD310', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (621, N'ORD311', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (622, N'ORD311', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (623, N'ORD312', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (624, N'ORD312', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (625, N'ORD313', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (626, N'ORD313', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (627, N'ORD314', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (628, N'ORD314', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (629, N'ORD315', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (630, N'ORD315', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (631, N'ORD316', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (632, N'ORD316', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (633, N'ORD317', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (634, N'ORD317', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (635, N'ORD318', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (636, N'ORD318', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (637, N'ORD319', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (638, N'ORD319', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (639, N'ORD320', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (640, N'ORD320', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (641, N'ORD321', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (642, N'ORD321', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (643, N'ORD322', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (644, N'ORD322', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (645, N'ORD323', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (646, N'ORD323', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (647, N'ORD324', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (648, N'ORD324', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (649, N'ORD325', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (650, N'ORD325', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (651, N'ORD326', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (652, N'ORD326', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (653, N'ORD327', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (654, N'ORD327', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (655, N'ORD328', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (656, N'ORD328', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (657, N'ORD329', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (658, N'ORD329', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (659, N'ORD330', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (660, N'ORD330', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (661, N'ORD331', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (662, N'ORD331', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (663, N'ORD332', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (664, N'ORD332', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (665, N'ORD333', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (666, N'ORD333', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (667, N'ORD334', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (668, N'ORD334', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (669, N'ORD335', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (670, N'ORD335', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (671, N'ORD336', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (672, N'ORD336', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (673, N'ORD337', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (674, N'ORD337', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (675, N'ORD338', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (676, N'ORD338', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (677, N'ORD339', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (678, N'ORD339', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (679, N'ORD340', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (680, N'ORD340', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (681, N'ORD341', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (682, N'ORD341', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (683, N'ORD342', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (684, N'ORD342', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (685, N'ORD343', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (686, N'ORD343', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (687, N'ORD344', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (688, N'ORD344', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (689, N'ORD345', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (690, N'ORD345', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (691, N'ORD346', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (692, N'ORD346', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (693, N'ORD347', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (694, N'ORD347', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (695, N'ORD348', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (696, N'ORD348', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (697, N'ORD349', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (698, N'ORD349', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (699, N'ORD350', N'P9', N'M         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (700, N'ORD350', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (701, N'ORD351', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (702, N'ORD351', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (703, N'ORD352', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (704, N'ORD352', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (705, N'ORD353', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (706, N'ORD353', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (707, N'ORD354', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (708, N'ORD354', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (709, N'ORD355', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (710, N'ORD355', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (711, N'ORD356', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (712, N'ORD356', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (713, N'ORD357', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (714, N'ORD357', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (715, N'ORD358', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (716, N'ORD358', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (717, N'ORD359', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (718, N'ORD359', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (719, N'ORD360', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (720, N'ORD360', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (721, N'ORD361', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (722, N'ORD361', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (723, N'ORD362', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (724, N'ORD362', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (725, N'ORD363', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (726, N'ORD363', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (727, N'ORD364', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (728, N'ORD364', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (729, N'ORD365', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (730, N'ORD365', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (731, N'ORD366', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (732, N'ORD366', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (733, N'ORD367', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (734, N'ORD367', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (735, N'ORD368', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (736, N'ORD368', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (737, N'ORD369', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (738, N'ORD369', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (739, N'ORD370', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (740, N'ORD370', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (741, N'ORD371', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (742, N'ORD371', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (743, N'ORD372', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (744, N'ORD372', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (745, N'ORD373', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (746, N'ORD373', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (747, N'ORD374', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (748, N'ORD374', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (749, N'ORD375', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (750, N'ORD375', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (751, N'ORD376', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (752, N'ORD376', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (753, N'ORD377', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (754, N'ORD377', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (755, N'ORD378', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (756, N'ORD378', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (757, N'ORD379', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (758, N'ORD379', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (759, N'ORD380', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (760, N'ORD380', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (761, N'ORD381', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (762, N'ORD381', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (763, N'ORD382', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (764, N'ORD382', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (765, N'ORD383', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (766, N'ORD383', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (767, N'ORD384', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (768, N'ORD384', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (769, N'ORD385', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (770, N'ORD385', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (771, N'ORD386', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (772, N'ORD386', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (773, N'ORD387', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (774, N'ORD387', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (775, N'ORD388', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (776, N'ORD388', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (777, N'ORD389', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (778, N'ORD389', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (779, N'ORD390', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (780, N'ORD390', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (781, N'ORD391', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (782, N'ORD391', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (783, N'ORD392', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (784, N'ORD392', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (785, N'ORD393', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (786, N'ORD393', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (787, N'ORD394', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (788, N'ORD394', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (789, N'ORD395', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (790, N'ORD395', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (791, N'ORD396', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (792, N'ORD396', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (793, N'ORD397', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (794, N'ORD397', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (795, N'ORD398', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (796, N'ORD398', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (797, N'ORD399', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (798, N'ORD399', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (799, N'ORD400', N'P19', N'M         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (800, N'ORD400', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (801, N'ORD401', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (802, N'ORD401', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (803, N'ORD402', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (804, N'ORD402', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (805, N'ORD403', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (806, N'ORD403', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (807, N'ORD404', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (808, N'ORD404', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (809, N'ORD405', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (810, N'ORD405', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (811, N'ORD406', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (812, N'ORD406', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (813, N'ORD407', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (814, N'ORD407', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (815, N'ORD408', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (816, N'ORD408', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (817, N'ORD409', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (818, N'ORD409', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (819, N'ORD410', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (820, N'ORD410', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (821, N'ORD411', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (822, N'ORD411', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (823, N'ORD412', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (824, N'ORD412', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (825, N'ORD413', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (826, N'ORD413', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (827, N'ORD414', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (828, N'ORD414', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (829, N'ORD415', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (830, N'ORD415', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (831, N'ORD416', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (832, N'ORD416', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (833, N'ORD417', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (834, N'ORD417', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (835, N'ORD418', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (836, N'ORD418', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (837, N'ORD419', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (838, N'ORD419', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (839, N'ORD420', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (840, N'ORD420', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (841, N'ORD421', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (842, N'ORD421', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (843, N'ORD422', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (844, N'ORD422', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (845, N'ORD423', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (846, N'ORD423', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (847, N'ORD424', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (848, N'ORD424', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (849, N'ORD425', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (850, N'ORD425', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (851, N'ORD426', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (852, N'ORD426', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (853, N'ORD427', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (854, N'ORD427', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (855, N'ORD428', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (856, N'ORD428', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (857, N'ORD429', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (858, N'ORD429', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (859, N'ORD430', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (860, N'ORD430', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (861, N'ORD431', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (862, N'ORD431', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (863, N'ORD432', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (864, N'ORD432', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (865, N'ORD433', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (866, N'ORD433', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (867, N'ORD434', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (868, N'ORD434', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (869, N'ORD435', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (870, N'ORD435', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (871, N'ORD436', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (872, N'ORD436', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (873, N'ORD437', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (874, N'ORD437', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (875, N'ORD438', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (876, N'ORD438', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (877, N'ORD439', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (878, N'ORD439', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (879, N'ORD440', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (880, N'ORD440', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (881, N'ORD441', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (882, N'ORD441', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (883, N'ORD442', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (884, N'ORD442', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (885, N'ORD443', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (886, N'ORD443', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (887, N'ORD444', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (888, N'ORD444', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (889, N'ORD445', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (890, N'ORD445', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (891, N'ORD446', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (892, N'ORD446', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (893, N'ORD447', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (894, N'ORD447', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (895, N'ORD448', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (896, N'ORD448', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (897, N'ORD449', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (898, N'ORD449', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (899, N'ORD450', N'P29', N'M         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (900, N'ORD450', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (901, N'ORD451', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (902, N'ORD451', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (903, N'ORD452', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (904, N'ORD452', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (905, N'ORD453', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (906, N'ORD453', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (907, N'ORD454', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (908, N'ORD454', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (909, N'ORD455', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (910, N'ORD455', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (911, N'ORD456', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (912, N'ORD456', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (913, N'ORD457', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (914, N'ORD457', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (915, N'ORD458', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (916, N'ORD458', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (917, N'ORD459', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (918, N'ORD459', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (919, N'ORD460', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (920, N'ORD460', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (921, N'ORD461', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (922, N'ORD461', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (923, N'ORD462', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (924, N'ORD462', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (925, N'ORD463', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (926, N'ORD463', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (927, N'ORD464', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (928, N'ORD464', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (929, N'ORD465', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (930, N'ORD465', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (931, N'ORD466', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (932, N'ORD466', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (933, N'ORD467', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (934, N'ORD467', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (935, N'ORD468', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (936, N'ORD468', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (937, N'ORD469', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (938, N'ORD469', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (939, N'ORD470', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (940, N'ORD470', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (941, N'ORD471', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (942, N'ORD471', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (943, N'ORD472', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (944, N'ORD472', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (945, N'ORD473', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (946, N'ORD473', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (947, N'ORD474', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (948, N'ORD474', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (949, N'ORD475', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (950, N'ORD475', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (951, N'ORD476', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (952, N'ORD476', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (953, N'ORD477', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (954, N'ORD477', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (955, N'ORD478', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (956, N'ORD478', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (957, N'ORD479', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (958, N'ORD479', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (959, N'ORD480', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (960, N'ORD480', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (961, N'ORD481', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (962, N'ORD481', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (963, N'ORD482', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (964, N'ORD482', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (965, N'ORD483', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (966, N'ORD483', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (967, N'ORD484', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (968, N'ORD484', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (969, N'ORD485', N'P9', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (970, N'ORD485', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (971, N'ORD486', N'P11', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (972, N'ORD486', N'P12', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (973, N'ORD487', N'P13', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (974, N'ORD487', N'P14', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (975, N'ORD488', N'P15', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (976, N'ORD488', N'P16', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (977, N'ORD489', N'P17', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (978, N'ORD489', N'P18', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (979, N'ORD490', N'P19', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (980, N'ORD490', N'P20', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (981, N'ORD491', N'P21', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (982, N'ORD491', N'P22', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (983, N'ORD492', N'P23', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (984, N'ORD492', N'P24', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (985, N'ORD493', N'P25', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (986, N'ORD493', N'P26', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (987, N'ORD494', N'P27', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (988, N'ORD494', N'P28', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (989, N'ORD495', N'P29', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (990, N'ORD495', N'P30', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (991, N'ORD496', N'P1', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (992, N'ORD496', N'P2', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (993, N'ORD497', N'P3', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (994, N'ORD497', N'P4', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (995, N'ORD498', N'P5', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (996, N'ORD498', N'P6', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (997, N'ORD499', N'P7', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (998, N'ORD499', N'P8', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (999, N'ORD500', N'P9', N'M         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1000, N'ORD500', N'P10', N'M         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1001, N'ORD501', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1002, N'ORD501', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1003, N'ORD502', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1004, N'ORD502', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1005, N'ORD503', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1006, N'ORD503', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1007, N'ORD504', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1008, N'ORD504', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1009, N'ORD505', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1010, N'ORD505', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1011, N'ORD506', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1012, N'ORD506', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1013, N'ORD507', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1014, N'ORD507', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1015, N'ORD508', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1016, N'ORD508', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1017, N'ORD509', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1018, N'ORD509', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1019, N'ORD510', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1020, N'ORD510', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1021, N'ORD511', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1022, N'ORD511', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1023, N'ORD512', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1024, N'ORD512', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1025, N'ORD513', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1026, N'ORD513', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1027, N'ORD514', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1028, N'ORD514', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1029, N'ORD515', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1030, N'ORD515', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1031, N'ORD516', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1032, N'ORD516', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1033, N'ORD517', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1034, N'ORD517', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1035, N'ORD518', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1036, N'ORD518', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1037, N'ORD519', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1038, N'ORD519', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1039, N'ORD520', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1040, N'ORD520', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1041, N'ORD521', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1042, N'ORD521', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1043, N'ORD522', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1044, N'ORD522', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1045, N'ORD523', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1046, N'ORD523', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1047, N'ORD524', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1048, N'ORD524', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1049, N'ORD525', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1050, N'ORD525', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1051, N'ORD526', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1052, N'ORD526', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1053, N'ORD527', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1054, N'ORD527', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1055, N'ORD528', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1056, N'ORD528', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1057, N'ORD529', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1058, N'ORD529', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1059, N'ORD530', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1060, N'ORD530', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1061, N'ORD531', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1062, N'ORD531', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1063, N'ORD532', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1064, N'ORD532', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1065, N'ORD533', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1066, N'ORD533', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1067, N'ORD534', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1068, N'ORD534', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1069, N'ORD535', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1070, N'ORD535', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1071, N'ORD536', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1072, N'ORD536', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1073, N'ORD537', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1074, N'ORD537', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1075, N'ORD538', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1076, N'ORD538', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1077, N'ORD539', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1078, N'ORD539', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1079, N'ORD540', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1080, N'ORD540', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1081, N'ORD541', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1082, N'ORD541', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1083, N'ORD542', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1084, N'ORD542', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1085, N'ORD543', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1086, N'ORD543', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1087, N'ORD544', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1088, N'ORD544', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1089, N'ORD545', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1090, N'ORD545', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1091, N'ORD546', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1092, N'ORD546', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1093, N'ORD547', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1094, N'ORD547', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1095, N'ORD548', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1096, N'ORD548', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1097, N'ORD549', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1098, N'ORD549', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1099, N'ORD550', N'P19', N'L         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1100, N'ORD550', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1101, N'ORD551', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1102, N'ORD551', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1103, N'ORD552', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1104, N'ORD552', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1105, N'ORD553', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1106, N'ORD553', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1107, N'ORD554', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1108, N'ORD554', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1109, N'ORD555', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1110, N'ORD555', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1111, N'ORD556', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1112, N'ORD556', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1113, N'ORD557', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1114, N'ORD557', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1115, N'ORD558', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1116, N'ORD558', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1117, N'ORD559', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1118, N'ORD559', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1119, N'ORD560', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1120, N'ORD560', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1121, N'ORD561', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1122, N'ORD561', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1123, N'ORD562', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1124, N'ORD562', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1125, N'ORD563', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1126, N'ORD563', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1127, N'ORD564', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1128, N'ORD564', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1129, N'ORD565', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1130, N'ORD565', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1131, N'ORD566', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1132, N'ORD566', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1133, N'ORD567', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1134, N'ORD567', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1135, N'ORD568', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1136, N'ORD568', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1137, N'ORD569', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1138, N'ORD569', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1139, N'ORD570', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1140, N'ORD570', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1141, N'ORD571', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1142, N'ORD571', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1143, N'ORD572', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1144, N'ORD572', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1145, N'ORD573', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1146, N'ORD573', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1147, N'ORD574', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1148, N'ORD574', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1149, N'ORD575', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1150, N'ORD575', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1151, N'ORD576', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1152, N'ORD576', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1153, N'ORD577', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1154, N'ORD577', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1155, N'ORD578', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1156, N'ORD578', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1157, N'ORD579', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1158, N'ORD579', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1159, N'ORD580', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1160, N'ORD580', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1161, N'ORD581', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1162, N'ORD581', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1163, N'ORD582', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1164, N'ORD582', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1165, N'ORD583', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1166, N'ORD583', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1167, N'ORD584', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1168, N'ORD584', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1169, N'ORD585', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1170, N'ORD585', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1171, N'ORD586', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1172, N'ORD586', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1173, N'ORD587', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1174, N'ORD587', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1175, N'ORD588', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1176, N'ORD588', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1177, N'ORD589', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1178, N'ORD589', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1179, N'ORD590', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1180, N'ORD590', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1181, N'ORD591', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1182, N'ORD591', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1183, N'ORD592', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1184, N'ORD592', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1185, N'ORD593', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1186, N'ORD593', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1187, N'ORD594', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1188, N'ORD594', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1189, N'ORD595', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1190, N'ORD595', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1191, N'ORD596', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1192, N'ORD596', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1193, N'ORD597', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1194, N'ORD597', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1195, N'ORD598', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1196, N'ORD598', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1197, N'ORD599', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1198, N'ORD599', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1199, N'ORD600', N'P29', N'L         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1200, N'ORD600', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1201, N'ORD601', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1202, N'ORD601', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1203, N'ORD602', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1204, N'ORD602', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1205, N'ORD603', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1206, N'ORD603', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1207, N'ORD604', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1208, N'ORD604', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1209, N'ORD605', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1210, N'ORD605', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1211, N'ORD606', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1212, N'ORD606', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1213, N'ORD607', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1214, N'ORD607', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1215, N'ORD608', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1216, N'ORD608', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1217, N'ORD609', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1218, N'ORD609', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1219, N'ORD610', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1220, N'ORD610', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1221, N'ORD611', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1222, N'ORD611', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1223, N'ORD612', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1224, N'ORD612', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1225, N'ORD613', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1226, N'ORD613', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1227, N'ORD614', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1228, N'ORD614', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1229, N'ORD615', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1230, N'ORD615', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1231, N'ORD616', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1232, N'ORD616', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1233, N'ORD617', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1234, N'ORD617', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1235, N'ORD618', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1236, N'ORD618', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1237, N'ORD619', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1238, N'ORD619', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1239, N'ORD620', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1240, N'ORD620', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1241, N'ORD621', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1242, N'ORD621', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1243, N'ORD622', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1244, N'ORD622', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1245, N'ORD623', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1246, N'ORD623', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1247, N'ORD624', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1248, N'ORD624', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1249, N'ORD625', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1250, N'ORD625', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1251, N'ORD626', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1252, N'ORD626', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1253, N'ORD627', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1254, N'ORD627', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1255, N'ORD628', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1256, N'ORD628', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1257, N'ORD629', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1258, N'ORD629', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1259, N'ORD630', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1260, N'ORD630', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1261, N'ORD631', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1262, N'ORD631', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1263, N'ORD632', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1264, N'ORD632', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1265, N'ORD633', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1266, N'ORD633', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1267, N'ORD634', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1268, N'ORD634', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1269, N'ORD635', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1270, N'ORD635', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1271, N'ORD636', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1272, N'ORD636', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1273, N'ORD637', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1274, N'ORD637', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1275, N'ORD638', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1276, N'ORD638', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1277, N'ORD639', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1278, N'ORD639', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1279, N'ORD640', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1280, N'ORD640', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1281, N'ORD641', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1282, N'ORD641', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1283, N'ORD642', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1284, N'ORD642', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1285, N'ORD643', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1286, N'ORD643', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1287, N'ORD644', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1288, N'ORD644', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1289, N'ORD645', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1290, N'ORD645', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1291, N'ORD646', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1292, N'ORD646', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1293, N'ORD647', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1294, N'ORD647', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1295, N'ORD648', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1296, N'ORD648', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1297, N'ORD649', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1298, N'ORD649', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1299, N'ORD650', N'P9', N'L         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1300, N'ORD650', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1301, N'ORD651', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1302, N'ORD651', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1303, N'ORD652', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1304, N'ORD652', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1305, N'ORD653', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1306, N'ORD653', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1307, N'ORD654', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1308, N'ORD654', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1309, N'ORD655', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1310, N'ORD655', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1311, N'ORD656', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1312, N'ORD656', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1313, N'ORD657', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1314, N'ORD657', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1315, N'ORD658', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1316, N'ORD658', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1317, N'ORD659', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1318, N'ORD659', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1319, N'ORD660', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1320, N'ORD660', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1321, N'ORD661', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1322, N'ORD661', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1323, N'ORD662', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1324, N'ORD662', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1325, N'ORD663', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1326, N'ORD663', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1327, N'ORD664', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1328, N'ORD664', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1329, N'ORD665', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1330, N'ORD665', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1331, N'ORD666', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1332, N'ORD666', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1333, N'ORD667', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1334, N'ORD667', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1335, N'ORD668', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1336, N'ORD668', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1337, N'ORD669', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1338, N'ORD669', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1339, N'ORD670', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1340, N'ORD670', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1341, N'ORD671', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1342, N'ORD671', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1343, N'ORD672', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1344, N'ORD672', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1345, N'ORD673', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1346, N'ORD673', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1347, N'ORD674', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1348, N'ORD674', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1349, N'ORD675', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1350, N'ORD675', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1351, N'ORD676', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1352, N'ORD676', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1353, N'ORD677', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1354, N'ORD677', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1355, N'ORD678', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1356, N'ORD678', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1357, N'ORD679', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1358, N'ORD679', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1359, N'ORD680', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1360, N'ORD680', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1361, N'ORD681', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1362, N'ORD681', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1363, N'ORD682', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1364, N'ORD682', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1365, N'ORD683', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1366, N'ORD683', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1367, N'ORD684', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1368, N'ORD684', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1369, N'ORD685', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1370, N'ORD685', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1371, N'ORD686', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1372, N'ORD686', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1373, N'ORD687', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1374, N'ORD687', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1375, N'ORD688', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1376, N'ORD688', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1377, N'ORD689', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1378, N'ORD689', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1379, N'ORD690', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1380, N'ORD690', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1381, N'ORD691', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1382, N'ORD691', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1383, N'ORD692', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1384, N'ORD692', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1385, N'ORD693', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1386, N'ORD693', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1387, N'ORD694', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1388, N'ORD694', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1389, N'ORD695', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1390, N'ORD695', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1391, N'ORD696', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1392, N'ORD696', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1393, N'ORD697', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1394, N'ORD697', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1395, N'ORD698', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1396, N'ORD698', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1397, N'ORD699', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1398, N'ORD699', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1399, N'ORD700', N'P19', N'L         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1400, N'ORD700', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1401, N'ORD701', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1402, N'ORD701', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1403, N'ORD702', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1404, N'ORD702', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1405, N'ORD703', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1406, N'ORD703', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1407, N'ORD704', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1408, N'ORD704', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1409, N'ORD705', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1410, N'ORD705', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1411, N'ORD706', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1412, N'ORD706', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1413, N'ORD707', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1414, N'ORD707', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1415, N'ORD708', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1416, N'ORD708', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1417, N'ORD709', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1418, N'ORD709', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1419, N'ORD710', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1420, N'ORD710', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1421, N'ORD711', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1422, N'ORD711', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1423, N'ORD712', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1424, N'ORD712', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1425, N'ORD713', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1426, N'ORD713', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1427, N'ORD714', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1428, N'ORD714', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1429, N'ORD715', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1430, N'ORD715', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1431, N'ORD716', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1432, N'ORD716', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1433, N'ORD717', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1434, N'ORD717', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1435, N'ORD718', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1436, N'ORD718', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1437, N'ORD719', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1438, N'ORD719', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1439, N'ORD720', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1440, N'ORD720', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1441, N'ORD721', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1442, N'ORD721', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1443, N'ORD722', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1444, N'ORD722', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1445, N'ORD723', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1446, N'ORD723', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1447, N'ORD724', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1448, N'ORD724', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1449, N'ORD725', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1450, N'ORD725', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1451, N'ORD726', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1452, N'ORD726', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1453, N'ORD727', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1454, N'ORD727', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1455, N'ORD728', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1456, N'ORD728', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1457, N'ORD729', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1458, N'ORD729', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1459, N'ORD730', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1460, N'ORD730', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1461, N'ORD731', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1462, N'ORD731', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1463, N'ORD732', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1464, N'ORD732', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1465, N'ORD733', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1466, N'ORD733', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1467, N'ORD734', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1468, N'ORD734', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1469, N'ORD735', N'P29', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1470, N'ORD735', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1471, N'ORD736', N'P1', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1472, N'ORD736', N'P2', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1473, N'ORD737', N'P3', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1474, N'ORD737', N'P4', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1475, N'ORD738', N'P5', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1476, N'ORD738', N'P6', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1477, N'ORD739', N'P7', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1478, N'ORD739', N'P8', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1479, N'ORD740', N'P9', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1480, N'ORD740', N'P10', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1481, N'ORD741', N'P11', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1482, N'ORD741', N'P12', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1483, N'ORD742', N'P13', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1484, N'ORD742', N'P14', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1485, N'ORD743', N'P15', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1486, N'ORD743', N'P16', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1487, N'ORD744', N'P17', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1488, N'ORD744', N'P18', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1489, N'ORD745', N'P19', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1490, N'ORD745', N'P20', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1491, N'ORD746', N'P21', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1492, N'ORD746', N'P22', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1493, N'ORD747', N'P23', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1494, N'ORD747', N'P24', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1495, N'ORD748', N'P25', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1496, N'ORD748', N'P26', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1497, N'ORD749', N'P27', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1498, N'ORD749', N'P28', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1499, N'ORD750', N'P29', N'L         ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1500, N'ORD750', N'P30', N'L         ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1501, N'ORD751', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1502, N'ORD751', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1503, N'ORD752', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1504, N'ORD752', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1505, N'ORD753', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1506, N'ORD753', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1507, N'ORD754', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1508, N'ORD754', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1509, N'ORD755', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1510, N'ORD755', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1511, N'ORD756', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1512, N'ORD756', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1513, N'ORD757', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1514, N'ORD757', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1515, N'ORD758', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1516, N'ORD758', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1517, N'ORD759', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1518, N'ORD759', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1519, N'ORD760', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1520, N'ORD760', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1521, N'ORD761', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1522, N'ORD761', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1523, N'ORD762', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1524, N'ORD762', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1525, N'ORD763', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1526, N'ORD763', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1527, N'ORD764', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1528, N'ORD764', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1529, N'ORD765', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1530, N'ORD765', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1531, N'ORD766', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1532, N'ORD766', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1533, N'ORD767', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1534, N'ORD767', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1535, N'ORD768', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1536, N'ORD768', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1537, N'ORD769', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1538, N'ORD769', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1539, N'ORD770', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1540, N'ORD770', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1541, N'ORD771', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1542, N'ORD771', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1543, N'ORD772', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1544, N'ORD772', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1545, N'ORD773', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1546, N'ORD773', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1547, N'ORD774', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1548, N'ORD774', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1549, N'ORD775', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1550, N'ORD775', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1551, N'ORD776', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1552, N'ORD776', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1553, N'ORD777', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1554, N'ORD777', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1555, N'ORD778', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1556, N'ORD778', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1557, N'ORD779', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1558, N'ORD779', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1559, N'ORD780', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1560, N'ORD780', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1561, N'ORD781', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1562, N'ORD781', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1563, N'ORD782', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1564, N'ORD782', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1565, N'ORD783', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1566, N'ORD783', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1567, N'ORD784', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1568, N'ORD784', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1569, N'ORD785', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1570, N'ORD785', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1571, N'ORD786', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1572, N'ORD786', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1573, N'ORD787', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1574, N'ORD787', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1575, N'ORD788', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1576, N'ORD788', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1577, N'ORD789', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1578, N'ORD789', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1579, N'ORD790', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1580, N'ORD790', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1581, N'ORD791', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1582, N'ORD791', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1583, N'ORD792', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1584, N'ORD792', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1585, N'ORD793', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1586, N'ORD793', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1587, N'ORD794', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1588, N'ORD794', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1589, N'ORD795', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1590, N'ORD795', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1591, N'ORD796', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1592, N'ORD796', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1593, N'ORD797', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1594, N'ORD797', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1595, N'ORD798', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1596, N'ORD798', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1597, N'ORD799', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1598, N'ORD799', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1599, N'ORD800', N'P9', N'XL        ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1600, N'ORD800', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1601, N'ORD801', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1602, N'ORD801', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1603, N'ORD802', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1604, N'ORD802', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1605, N'ORD803', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1606, N'ORD803', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1607, N'ORD804', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1608, N'ORD804', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1609, N'ORD805', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1610, N'ORD805', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1611, N'ORD806', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1612, N'ORD806', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1613, N'ORD807', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1614, N'ORD807', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1615, N'ORD808', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1616, N'ORD808', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1617, N'ORD809', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1618, N'ORD809', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1619, N'ORD810', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1620, N'ORD810', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1621, N'ORD811', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1622, N'ORD811', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1623, N'ORD812', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1624, N'ORD812', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1625, N'ORD813', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1626, N'ORD813', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1627, N'ORD814', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1628, N'ORD814', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1629, N'ORD815', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1630, N'ORD815', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1631, N'ORD816', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1632, N'ORD816', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1633, N'ORD817', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1634, N'ORD817', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1635, N'ORD818', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1636, N'ORD818', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1637, N'ORD819', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1638, N'ORD819', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1639, N'ORD820', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1640, N'ORD820', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1641, N'ORD821', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1642, N'ORD821', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1643, N'ORD822', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1644, N'ORD822', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1645, N'ORD823', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1646, N'ORD823', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1647, N'ORD824', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1648, N'ORD824', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1649, N'ORD825', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1650, N'ORD825', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1651, N'ORD826', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1652, N'ORD826', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1653, N'ORD827', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1654, N'ORD827', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1655, N'ORD828', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1656, N'ORD828', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1657, N'ORD829', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1658, N'ORD829', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1659, N'ORD830', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1660, N'ORD830', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1661, N'ORD831', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1662, N'ORD831', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1663, N'ORD832', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1664, N'ORD832', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1665, N'ORD833', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1666, N'ORD833', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1667, N'ORD834', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1668, N'ORD834', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1669, N'ORD835', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1670, N'ORD835', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1671, N'ORD836', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1672, N'ORD836', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1673, N'ORD837', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1674, N'ORD837', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1675, N'ORD838', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1676, N'ORD838', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1677, N'ORD839', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1678, N'ORD839', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1679, N'ORD840', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1680, N'ORD840', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1681, N'ORD841', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1682, N'ORD841', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1683, N'ORD842', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1684, N'ORD842', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1685, N'ORD843', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1686, N'ORD843', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1687, N'ORD844', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1688, N'ORD844', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1689, N'ORD845', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1690, N'ORD845', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1691, N'ORD846', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1692, N'ORD846', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1693, N'ORD847', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1694, N'ORD847', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1695, N'ORD848', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1696, N'ORD848', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1697, N'ORD849', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1698, N'ORD849', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1699, N'ORD850', N'P19', N'XL        ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1700, N'ORD850', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1701, N'ORD851', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1702, N'ORD851', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1703, N'ORD852', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1704, N'ORD852', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1705, N'ORD853', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1706, N'ORD853', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1707, N'ORD854', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1708, N'ORD854', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1709, N'ORD855', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1710, N'ORD855', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1711, N'ORD856', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1712, N'ORD856', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1713, N'ORD857', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1714, N'ORD857', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1715, N'ORD858', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1716, N'ORD858', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1717, N'ORD859', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1718, N'ORD859', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1719, N'ORD860', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1720, N'ORD860', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1721, N'ORD861', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1722, N'ORD861', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1723, N'ORD862', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1724, N'ORD862', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1725, N'ORD863', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1726, N'ORD863', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1727, N'ORD864', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1728, N'ORD864', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1729, N'ORD865', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1730, N'ORD865', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1731, N'ORD866', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1732, N'ORD866', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1733, N'ORD867', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1734, N'ORD867', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1735, N'ORD868', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1736, N'ORD868', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1737, N'ORD869', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1738, N'ORD869', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1739, N'ORD870', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1740, N'ORD870', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1741, N'ORD871', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1742, N'ORD871', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1743, N'ORD872', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1744, N'ORD872', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1745, N'ORD873', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1746, N'ORD873', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1747, N'ORD874', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1748, N'ORD874', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1749, N'ORD875', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1750, N'ORD875', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1751, N'ORD876', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1752, N'ORD876', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1753, N'ORD877', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1754, N'ORD877', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1755, N'ORD878', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1756, N'ORD878', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1757, N'ORD879', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1758, N'ORD879', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1759, N'ORD880', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1760, N'ORD880', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1761, N'ORD881', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1762, N'ORD881', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1763, N'ORD882', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1764, N'ORD882', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1765, N'ORD883', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1766, N'ORD883', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1767, N'ORD884', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1768, N'ORD884', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1769, N'ORD885', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1770, N'ORD885', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1771, N'ORD886', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1772, N'ORD886', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1773, N'ORD887', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1774, N'ORD887', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1775, N'ORD888', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1776, N'ORD888', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1777, N'ORD889', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1778, N'ORD889', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1779, N'ORD890', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1780, N'ORD890', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1781, N'ORD891', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1782, N'ORD891', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1783, N'ORD892', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1784, N'ORD892', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1785, N'ORD893', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1786, N'ORD893', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1787, N'ORD894', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1788, N'ORD894', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1789, N'ORD895', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1790, N'ORD895', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1791, N'ORD896', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1792, N'ORD896', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1793, N'ORD897', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1794, N'ORD897', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1795, N'ORD898', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1796, N'ORD898', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1797, N'ORD899', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1798, N'ORD899', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1799, N'ORD900', N'P29', N'XL        ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1800, N'ORD900', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1801, N'ORD901', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1802, N'ORD901', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1803, N'ORD902', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1804, N'ORD902', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1805, N'ORD903', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1806, N'ORD903', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1807, N'ORD904', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1808, N'ORD904', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1809, N'ORD905', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1810, N'ORD905', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1811, N'ORD906', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1812, N'ORD906', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1813, N'ORD907', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1814, N'ORD907', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1815, N'ORD908', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1816, N'ORD908', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1817, N'ORD909', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1818, N'ORD909', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1819, N'ORD910', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1820, N'ORD910', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1821, N'ORD911', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1822, N'ORD911', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1823, N'ORD912', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1824, N'ORD912', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1825, N'ORD913', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1826, N'ORD913', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1827, N'ORD914', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1828, N'ORD914', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1829, N'ORD915', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1830, N'ORD915', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1831, N'ORD916', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1832, N'ORD916', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1833, N'ORD917', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1834, N'ORD917', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1835, N'ORD918', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1836, N'ORD918', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1837, N'ORD919', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1838, N'ORD919', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1839, N'ORD920', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1840, N'ORD920', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1841, N'ORD921', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1842, N'ORD921', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1843, N'ORD922', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1844, N'ORD922', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1845, N'ORD923', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1846, N'ORD923', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1847, N'ORD924', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1848, N'ORD924', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1849, N'ORD925', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1850, N'ORD925', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1851, N'ORD926', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1852, N'ORD926', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1853, N'ORD927', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1854, N'ORD927', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1855, N'ORD928', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1856, N'ORD928', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1857, N'ORD929', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1858, N'ORD929', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1859, N'ORD930', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1860, N'ORD930', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1861, N'ORD931', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1862, N'ORD931', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1863, N'ORD932', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1864, N'ORD932', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1865, N'ORD933', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1866, N'ORD933', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1867, N'ORD934', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1868, N'ORD934', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1869, N'ORD935', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1870, N'ORD935', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1871, N'ORD936', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1872, N'ORD936', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1873, N'ORD937', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1874, N'ORD937', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1875, N'ORD938', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1876, N'ORD938', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1877, N'ORD939', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1878, N'ORD939', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1879, N'ORD940', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1880, N'ORD940', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1881, N'ORD941', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1882, N'ORD941', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1883, N'ORD942', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1884, N'ORD942', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1885, N'ORD943', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1886, N'ORD943', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1887, N'ORD944', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1888, N'ORD944', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1889, N'ORD945', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1890, N'ORD945', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1891, N'ORD946', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1892, N'ORD946', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1893, N'ORD947', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1894, N'ORD947', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1895, N'ORD948', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1896, N'ORD948', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1897, N'ORD949', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1898, N'ORD949', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1899, N'ORD950', N'P9', N'XL        ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1900, N'ORD950', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1901, N'ORD951', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1902, N'ORD951', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1903, N'ORD952', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1904, N'ORD952', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1905, N'ORD953', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1906, N'ORD953', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1907, N'ORD954', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1908, N'ORD954', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1909, N'ORD955', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1910, N'ORD955', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1911, N'ORD956', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1912, N'ORD956', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1913, N'ORD957', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1914, N'ORD957', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1915, N'ORD958', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1916, N'ORD958', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1917, N'ORD959', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1918, N'ORD959', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1919, N'ORD960', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1920, N'ORD960', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1921, N'ORD961', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1922, N'ORD961', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1923, N'ORD962', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1924, N'ORD962', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1925, N'ORD963', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1926, N'ORD963', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1927, N'ORD964', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1928, N'ORD964', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1929, N'ORD965', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1930, N'ORD965', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1931, N'ORD966', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1932, N'ORD966', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1933, N'ORD967', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1934, N'ORD967', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1935, N'ORD968', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1936, N'ORD968', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1937, N'ORD969', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1938, N'ORD969', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1939, N'ORD970', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1940, N'ORD970', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1941, N'ORD971', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1942, N'ORD971', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1943, N'ORD972', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1944, N'ORD972', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1945, N'ORD973', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1946, N'ORD973', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1947, N'ORD974', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1948, N'ORD974', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1949, N'ORD975', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1950, N'ORD975', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1951, N'ORD976', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1952, N'ORD976', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1953, N'ORD977', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1954, N'ORD977', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1955, N'ORD978', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1956, N'ORD978', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1957, N'ORD979', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1958, N'ORD979', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1959, N'ORD980', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1960, N'ORD980', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1961, N'ORD981', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1962, N'ORD981', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1963, N'ORD982', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1964, N'ORD982', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1965, N'ORD983', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1966, N'ORD983', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1967, N'ORD984', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1968, N'ORD984', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1969, N'ORD985', N'P19', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1970, N'ORD985', N'P20', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1971, N'ORD986', N'P21', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1972, N'ORD986', N'P22', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1973, N'ORD987', N'P23', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1974, N'ORD987', N'P24', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1975, N'ORD988', N'P25', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1976, N'ORD988', N'P26', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1977, N'ORD989', N'P27', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1978, N'ORD989', N'P28', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1979, N'ORD990', N'P29', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1980, N'ORD990', N'P30', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1981, N'ORD991', N'P1', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1982, N'ORD991', N'P2', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1983, N'ORD992', N'P3', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1984, N'ORD992', N'P4', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1985, N'ORD993', N'P5', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1986, N'ORD993', N'P6', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1987, N'ORD994', N'P7', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1988, N'ORD994', N'P8', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1989, N'ORD995', N'P9', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1990, N'ORD995', N'P10', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1991, N'ORD996', N'P11', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1992, N'ORD996', N'P12', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1993, N'ORD997', N'P13', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1994, N'ORD997', N'P14', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1995, N'ORD998', N'P15', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1996, N'ORD998', N'P16', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1997, N'ORD999', N'P17', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1998, N'ORD999', N'P18', N'XL        ', 1, 100000, 0)
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (1999, N'ORD1000', N'P19', N'XL        ', 1, 100000, 0)
GO
INSERT [dbo].[OrderDetail] ([id], [OrderId], [ProductId], [Size], [Quantity], [OutputPrice], [IsDeleted]) VALUES (2000, N'ORD1000', N'P20', N'XL        ', 1, 100000, 0)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (1, N'ORD1', 200000, 2, N'EMP25', N'CUS180', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (10, N'ORD10', 200000, 2, N'EMP6', N'CUS4', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (100, N'ORD100', 200000, 2, N'EMP13', N'CUS110', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (1000, N'ORD1000', 200000, 2, N'EMP30', N'CUS40', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (101, N'ORD101', 200000, 2, N'EMP2', N'CUS82', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (102, N'ORD102', 200000, 2, N'EMP9', N'CUS56', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (103, N'ORD103', 200000, 2, N'EMP20', N'CUS195', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (104, N'ORD104', 200000, 2, N'EMP30', N'CUS100', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (105, N'ORD105', 200000, 2, N'EMP16', N'CUS35', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (106, N'ORD106', 200000, 2, N'EMP5', N'CUS39', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (107, N'ORD107', 200000, 2, N'EMP3', N'CUS10', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (108, N'ORD108', 200000, 2, N'EMP18', N'CUS188', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (109, N'ORD109', 200000, 2, N'EMP15', N'CUS75', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (11, N'ORD11', 200000, 2, N'EMP15', N'CUS175', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (110, N'ORD110', 200000, 2, N'EMP23', N'CUS30', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (111, N'ORD111', 200000, 2, N'EMP28', N'CUS108', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (112, N'ORD112', 200000, 2, N'EMP2', N'CUS122', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (113, N'ORD113', 200000, 2, N'EMP18', N'CUS189', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (114, N'ORD114', 200000, 2, N'EMP30', N'CUS171', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (115, N'ORD115', 200000, 2, N'EMP21', N'CUS33', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (116, N'ORD116', 200000, 2, N'EMP5', N'CUS10', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (117, N'ORD117', 200000, 2, N'EMP3', N'CUS176', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (118, N'ORD118', 200000, 2, N'EMP16', N'CUS185', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (119, N'ORD119', 200000, 2, N'EMP10', N'CUS197', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (12, N'ORD12', 200000, 2, N'EMP26', N'CUS125', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (120, N'ORD120', 200000, 2, N'EMP24', N'CUS79', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (121, N'ORD121', 200000, 2, N'EMP22', N'CUS12', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (122, N'ORD122', 200000, 2, N'EMP21', N'CUS15', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (123, N'ORD123', 200000, 2, N'EMP14', N'CUS107', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (124, N'ORD124', 200000, 2, N'EMP4', N'CUS142', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (125, N'ORD125', 200000, 2, N'EMP5', N'CUS5', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (126, N'ORD126', 200000, 2, N'EMP27', N'CUS88', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (127, N'ORD127', 200000, 2, N'EMP7', N'CUS110', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (128, N'ORD128', 200000, 2, N'EMP13', N'CUS87', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (129, N'ORD129', 200000, 2, N'EMP25', N'CUS88', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (13, N'ORD13', 200000, 2, N'EMP23', N'CUS181', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (130, N'ORD130', 200000, 2, N'EMP11', N'CUS60', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (131, N'ORD131', 200000, 2, N'EMP28', N'CUS58', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (132, N'ORD132', 200000, 2, N'EMP27', N'CUS87', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (133, N'ORD133', 200000, 2, N'EMP10', N'CUS35', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (134, N'ORD134', 200000, 2, N'EMP27', N'CUS67', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (135, N'ORD135', 200000, 2, N'EMP26', N'CUS63', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (136, N'ORD136', 200000, 2, N'EMP12', N'CUS131', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (137, N'ORD137', 200000, 2, N'EMP12', N'CUS78', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (138, N'ORD138', 200000, 2, N'EMP19', N'CUS151', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (139, N'ORD139', 200000, 2, N'EMP28', N'CUS16', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (14, N'ORD14', 200000, 2, N'EMP20', N'CUS113', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (140, N'ORD140', 200000, 2, N'EMP14', N'CUS6', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (141, N'ORD141', 200000, 2, N'EMP16', N'CUS54', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (142, N'ORD142', 200000, 2, N'EMP28', N'CUS145', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (143, N'ORD143', 200000, 2, N'EMP27', N'CUS68', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (144, N'ORD144', 200000, 2, N'EMP20', N'CUS159', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (145, N'ORD145', 200000, 2, N'EMP15', N'CUS105', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (146, N'ORD146', 200000, 2, N'EMP19', N'CUS144', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (147, N'ORD147', 200000, 2, N'EMP14', N'CUS150', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (148, N'ORD148', 200000, 2, N'EMP12', N'CUS96', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (149, N'ORD149', 200000, 2, N'EMP25', N'CUS23', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (15, N'ORD15', 200000, 2, N'EMP12', N'CUS106', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (150, N'ORD150', 200000, 2, N'EMP9', N'CUS76', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (151, N'ORD151', 200000, 2, N'EMP21', N'CUS139', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (152, N'ORD152', 200000, 2, N'EMP21', N'CUS169', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (153, N'ORD153', 200000, 2, N'EMP10', N'CUS47', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (154, N'ORD154', 200000, 2, N'EMP29', N'CUS133', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (155, N'ORD155', 200000, 2, N'EMP5', N'CUS159', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (156, N'ORD156', 200000, 2, N'EMP30', N'CUS102', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (157, N'ORD157', 200000, 2, N'EMP14', N'CUS152', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (158, N'ORD158', 200000, 2, N'EMP7', N'CUS179', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (159, N'ORD159', 200000, 2, N'EMP14', N'CUS138', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (16, N'ORD16', 200000, 2, N'EMP28', N'CUS43', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (160, N'ORD160', 200000, 2, N'EMP4', N'CUS164', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (161, N'ORD161', 200000, 2, N'EMP21', N'CUS105', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (162, N'ORD162', 200000, 2, N'EMP14', N'CUS156', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (163, N'ORD163', 200000, 2, N'EMP20', N'CUS20', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (164, N'ORD164', 200000, 2, N'EMP8', N'CUS103', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (165, N'ORD165', 200000, 2, N'EMP13', N'CUS197', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (166, N'ORD166', 200000, 2, N'EMP21', N'CUS105', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (167, N'ORD167', 200000, 2, N'EMP12', N'CUS54', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (168, N'ORD168', 200000, 2, N'EMP15', N'CUS20', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (169, N'ORD169', 200000, 2, N'EMP30', N'CUS195', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (17, N'ORD17', 200000, 2, N'EMP3', N'CUS98', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (170, N'ORD170', 200000, 2, N'EMP24', N'CUS60', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (171, N'ORD171', 200000, 2, N'EMP4', N'CUS32', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (172, N'ORD172', 200000, 2, N'EMP2', N'CUS31', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (173, N'ORD173', 200000, 2, N'EMP3', N'CUS95', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (174, N'ORD174', 200000, 2, N'EMP25', N'CUS156', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (175, N'ORD175', 200000, 2, N'EMP5', N'CUS172', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (176, N'ORD176', 200000, 2, N'EMP22', N'CUS126', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (177, N'ORD177', 200000, 2, N'EMP24', N'CUS164', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (178, N'ORD178', 200000, 2, N'EMP18', N'CUS195', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (179, N'ORD179', 200000, 2, N'EMP7', N'CUS150', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (18, N'ORD18', 200000, 2, N'EMP29', N'CUS76', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (180, N'ORD180', 200000, 2, N'EMP3', N'CUS33', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (181, N'ORD181', 200000, 2, N'EMP28', N'CUS57', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (182, N'ORD182', 200000, 2, N'EMP19', N'CUS160', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (183, N'ORD183', 200000, 2, N'EMP30', N'CUS46', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (184, N'ORD184', 200000, 2, N'EMP24', N'CUS6', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (185, N'ORD185', 200000, 2, N'EMP17', N'CUS109', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (186, N'ORD186', 200000, 2, N'EMP28', N'CUS30', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (187, N'ORD187', 200000, 2, N'EMP5', N'CUS43', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (188, N'ORD188', 200000, 2, N'EMP29', N'CUS199', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (189, N'ORD189', 200000, 2, N'EMP16', N'CUS44', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (19, N'ORD19', 200000, 2, N'EMP16', N'CUS104', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (190, N'ORD190', 200000, 2, N'EMP25', N'CUS4', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (191, N'ORD191', 200000, 2, N'EMP8', N'CUS83', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (192, N'ORD192', 200000, 2, N'EMP30', N'CUS83', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (193, N'ORD193', 200000, 2, N'EMP6', N'CUS109', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (194, N'ORD194', 200000, 2, N'EMP21', N'CUS195', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (195, N'ORD195', 200000, 2, N'EMP13', N'CUS158', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (196, N'ORD196', 200000, 2, N'EMP24', N'CUS124', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (197, N'ORD197', 200000, 2, N'EMP30', N'CUS60', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (198, N'ORD198', 200000, 2, N'EMP17', N'CUS6', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (199, N'ORD199', 200000, 2, N'EMP10', N'CUS26', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (2, N'ORD2', 200000, 2, N'EMP6', N'CUS119', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (20, N'ORD20', 200000, 2, N'EMP4', N'CUS113', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (200, N'ORD200', 200000, 2, N'EMP23', N'CUS85', NULL, 0, CAST(N'2018-11-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (201, N'ORD201', 200000, 2, N'EMP30', N'CUS200', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (202, N'ORD202', 200000, 2, N'EMP5', N'CUS79', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (203, N'ORD203', 200000, 2, N'EMP1', N'CUS68', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (204, N'ORD204', 200000, 2, N'EMP14', N'CUS109', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (205, N'ORD205', 200000, 2, N'EMP20', N'CUS67', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (206, N'ORD206', 200000, 2, N'EMP23', N'CUS122', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (207, N'ORD207', 200000, 2, N'EMP14', N'CUS4', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (208, N'ORD208', 200000, 2, N'EMP24', N'CUS65', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (209, N'ORD209', 200000, 2, N'EMP6', N'CUS91', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (21, N'ORD21', 200000, 2, N'EMP27', N'CUS90', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (210, N'ORD210', 200000, 2, N'EMP27', N'CUS162', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (211, N'ORD211', 200000, 2, N'EMP17', N'CUS41', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (212, N'ORD212', 200000, 2, N'EMP6', N'CUS92', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (213, N'ORD213', 200000, 2, N'EMP29', N'CUS200', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (214, N'ORD214', 200000, 2, N'EMP10', N'CUS19', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (215, N'ORD215', 200000, 2, N'EMP18', N'CUS73', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (216, N'ORD216', 200000, 2, N'EMP22', N'CUS60', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (217, N'ORD217', 200000, 2, N'EMP16', N'CUS172', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (218, N'ORD218', 200000, 2, N'EMP23', N'CUS64', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (219, N'ORD219', 200000, 2, N'EMP20', N'CUS50', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (22, N'ORD22', 200000, 2, N'EMP13', N'CUS78', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (220, N'ORD220', 200000, 2, N'EMP24', N'CUS161', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (221, N'ORD221', 200000, 2, N'EMP8', N'CUS114', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (222, N'ORD222', 200000, 2, N'EMP19', N'CUS122', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (223, N'ORD223', 200000, 2, N'EMP17', N'CUS22', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (224, N'ORD224', 200000, 2, N'EMP30', N'CUS89', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (225, N'ORD225', 200000, 2, N'EMP27', N'CUS163', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (226, N'ORD226', 200000, 2, N'EMP30', N'CUS24', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (227, N'ORD227', 200000, 2, N'EMP8', N'CUS187', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (228, N'ORD228', 200000, 2, N'EMP9', N'CUS58', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (229, N'ORD229', 200000, 2, N'EMP3', N'CUS128', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (23, N'ORD23', 200000, 2, N'EMP25', N'CUS21', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (230, N'ORD230', 200000, 2, N'EMP25', N'CUS55', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (231, N'ORD231', 200000, 2, N'EMP13', N'CUS33', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (232, N'ORD232', 200000, 2, N'EMP28', N'CUS79', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (233, N'ORD233', 200000, 2, N'EMP25', N'CUS188', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (234, N'ORD234', 200000, 2, N'EMP23', N'CUS140', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (235, N'ORD235', 200000, 2, N'EMP18', N'CUS115', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (236, N'ORD236', 200000, 2, N'EMP3', N'CUS58', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (237, N'ORD237', 200000, 2, N'EMP15', N'CUS55', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (238, N'ORD238', 200000, 2, N'EMP2', N'CUS24', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (239, N'ORD239', 200000, 2, N'EMP15', N'CUS84', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (24, N'ORD24', 200000, 2, N'EMP18', N'CUS25', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (240, N'ORD240', 200000, 2, N'EMP7', N'CUS118', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (241, N'ORD241', 200000, 2, N'EMP13', N'CUS67', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (242, N'ORD242', 200000, 2, N'EMP18', N'CUS197', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (243, N'ORD243', 200000, 2, N'EMP20', N'CUS186', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (244, N'ORD244', 200000, 2, N'EMP24', N'CUS95', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (245, N'ORD245', 200000, 2, N'EMP19', N'CUS180', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (246, N'ORD246', 200000, 2, N'EMP29', N'CUS159', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (247, N'ORD247', 200000, 2, N'EMP21', N'CUS149', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (248, N'ORD248', 200000, 2, N'EMP21', N'CUS3', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (249, N'ORD249', 200000, 2, N'EMP6', N'CUS139', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (25, N'ORD25', 200000, 2, N'EMP2', N'CUS155', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (250, N'ORD250', 200000, 2, N'EMP10', N'CUS185', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (251, N'ORD251', 200000, 2, N'EMP28', N'CUS181', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (252, N'ORD252', 200000, 2, N'EMP17', N'CUS119', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (253, N'ORD253', 200000, 2, N'EMP11', N'CUS49', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (254, N'ORD254', 200000, 2, N'EMP30', N'CUS40', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (255, N'ORD255', 200000, 2, N'EMP8', N'CUS137', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (256, N'ORD256', 200000, 2, N'EMP19', N'CUS100', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (257, N'ORD257', 200000, 2, N'EMP26', N'CUS199', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (258, N'ORD258', 200000, 2, N'EMP5', N'CUS88', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (259, N'ORD259', 200000, 2, N'EMP5', N'CUS115', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (26, N'ORD26', 200000, 2, N'EMP17', N'CUS111', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (260, N'ORD260', 200000, 2, N'EMP23', N'CUS43', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (261, N'ORD261', 200000, 2, N'EMP22', N'CUS43', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (262, N'ORD262', 200000, 2, N'EMP28', N'CUS31', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (263, N'ORD263', 200000, 2, N'EMP2', N'CUS151', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (264, N'ORD264', 200000, 2, N'EMP25', N'CUS136', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (265, N'ORD265', 200000, 2, N'EMP17', N'CUS200', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (266, N'ORD266', 200000, 2, N'EMP7', N'CUS5', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (267, N'ORD267', 200000, 2, N'EMP24', N'CUS78', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (268, N'ORD268', 200000, 2, N'EMP28', N'CUS3', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (269, N'ORD269', 200000, 2, N'EMP12', N'CUS135', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (27, N'ORD27', 200000, 2, N'EMP21', N'CUS101', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (270, N'ORD270', 200000, 2, N'EMP27', N'CUS46', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (271, N'ORD271', 200000, 2, N'EMP22', N'CUS38', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (272, N'ORD272', 200000, 2, N'EMP15', N'CUS194', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (273, N'ORD273', 200000, 2, N'EMP30', N'CUS31', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (274, N'ORD274', 200000, 2, N'EMP3', N'CUS90', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (275, N'ORD275', 200000, 2, N'EMP19', N'CUS182', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (276, N'ORD276', 200000, 2, N'EMP11', N'CUS34', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (277, N'ORD277', 200000, 2, N'EMP3', N'CUS10', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (278, N'ORD278', 200000, 2, N'EMP14', N'CUS167', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (279, N'ORD279', 200000, 2, N'EMP1', N'CUS121', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (28, N'ORD28', 200000, 2, N'EMP26', N'CUS64', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (280, N'ORD280', 200000, 2, N'EMP11', N'CUS106', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (281, N'ORD281', 200000, 2, N'EMP3', N'CUS10', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (282, N'ORD282', 200000, 2, N'EMP6', N'CUS102', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (283, N'ORD283', 200000, 2, N'EMP18', N'CUS145', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (284, N'ORD284', 200000, 2, N'EMP27', N'CUS94', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (285, N'ORD285', 200000, 2, N'EMP26', N'CUS112', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (286, N'ORD286', 200000, 2, N'EMP28', N'CUS187', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (287, N'ORD287', 200000, 2, N'EMP21', N'CUS15', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (288, N'ORD288', 200000, 2, N'EMP10', N'CUS162', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (289, N'ORD289', 200000, 2, N'EMP7', N'CUS112', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (29, N'ORD29', 200000, 2, N'EMP9', N'CUS63', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (290, N'ORD290', 200000, 2, N'EMP25', N'CUS113', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (291, N'ORD291', 200000, 2, N'EMP26', N'CUS129', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (292, N'ORD292', 200000, 2, N'EMP10', N'CUS128', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (293, N'ORD293', 200000, 2, N'EMP5', N'CUS105', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (294, N'ORD294', 200000, 2, N'EMP2', N'CUS196', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (295, N'ORD295', 200000, 2, N'EMP6', N'CUS33', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (296, N'ORD296', 200000, 2, N'EMP7', N'CUS88', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (297, N'ORD297', 200000, 2, N'EMP30', N'CUS183', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (298, N'ORD298', 200000, 2, N'EMP5', N'CUS189', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (299, N'ORD299', 200000, 2, N'EMP28', N'CUS8', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (3, N'ORD3', 200000, 2, N'EMP30', N'CUS99', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (30, N'ORD30', 200000, 2, N'EMP7', N'CUS48', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (300, N'ORD300', 200000, 2, N'EMP26', N'CUS171', NULL, 0, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (301, N'ORD301', 200000, 2, N'EMP11', N'CUS168', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (302, N'ORD302', 200000, 2, N'EMP24', N'CUS161', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (303, N'ORD303', 200000, 2, N'EMP21', N'CUS31', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (304, N'ORD304', 200000, 2, N'EMP24', N'CUS4', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (305, N'ORD305', 200000, 2, N'EMP16', N'CUS165', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (306, N'ORD306', 200000, 2, N'EMP4', N'CUS91', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (307, N'ORD307', 200000, 2, N'EMP12', N'CUS7', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (308, N'ORD308', 200000, 2, N'EMP5', N'CUS169', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (309, N'ORD309', 200000, 2, N'EMP29', N'CUS64', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (31, N'ORD31', 200000, 2, N'EMP19', N'CUS90', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (310, N'ORD310', 200000, 2, N'EMP20', N'CUS31', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (311, N'ORD311', 200000, 2, N'EMP15', N'CUS189', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (312, N'ORD312', 200000, 2, N'EMP1', N'CUS184', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (313, N'ORD313', 200000, 2, N'EMP23', N'CUS186', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (314, N'ORD314', 200000, 2, N'EMP27', N'CUS164', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (315, N'ORD315', 200000, 2, N'EMP20', N'CUS143', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (316, N'ORD316', 200000, 2, N'EMP6', N'CUS67', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (317, N'ORD317', 200000, 2, N'EMP14', N'CUS97', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (318, N'ORD318', 200000, 2, N'EMP20', N'CUS7', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (319, N'ORD319', 200000, 2, N'EMP11', N'CUS139', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (32, N'ORD32', 200000, 2, N'EMP28', N'CUS121', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (320, N'ORD320', 200000, 2, N'EMP11', N'CUS60', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (321, N'ORD321', 200000, 2, N'EMP6', N'CUS100', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (322, N'ORD322', 200000, 2, N'EMP21', N'CUS103', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (323, N'ORD323', 200000, 2, N'EMP20', N'CUS84', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (324, N'ORD324', 200000, 2, N'EMP10', N'CUS41', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (325, N'ORD325', 200000, 2, N'EMP23', N'CUS181', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (326, N'ORD326', 200000, 2, N'EMP2', N'CUS95', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (327, N'ORD327', 200000, 2, N'EMP7', N'CUS53', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (328, N'ORD328', 200000, 2, N'EMP30', N'CUS35', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (329, N'ORD329', 200000, 2, N'EMP24', N'CUS87', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (33, N'ORD33', 200000, 2, N'EMP14', N'CUS122', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (330, N'ORD330', 200000, 2, N'EMP12', N'CUS68', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (331, N'ORD331', 200000, 2, N'EMP21', N'CUS188', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (332, N'ORD332', 200000, 2, N'EMP26', N'CUS13', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (333, N'ORD333', 200000, 2, N'EMP5', N'CUS196', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (334, N'ORD334', 200000, 2, N'EMP19', N'CUS71', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (335, N'ORD335', 200000, 2, N'EMP13', N'CUS1', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (336, N'ORD336', 200000, 2, N'EMP12', N'CUS44', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (337, N'ORD337', 200000, 2, N'EMP10', N'CUS99', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (338, N'ORD338', 200000, 2, N'EMP24', N'CUS8', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (339, N'ORD339', 200000, 2, N'EMP11', N'CUS197', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (34, N'ORD34', 200000, 2, N'EMP17', N'CUS80', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (340, N'ORD340', 200000, 2, N'EMP25', N'CUS126', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (341, N'ORD341', 200000, 2, N'EMP20', N'CUS144', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (342, N'ORD342', 200000, 2, N'EMP10', N'CUS151', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (343, N'ORD343', 200000, 2, N'EMP11', N'CUS22', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (344, N'ORD344', 200000, 2, N'EMP6', N'CUS129', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (345, N'ORD345', 200000, 2, N'EMP20', N'CUS171', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (346, N'ORD346', 200000, 2, N'EMP2', N'CUS182', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (347, N'ORD347', 200000, 2, N'EMP12', N'CUS65', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (348, N'ORD348', 200000, 2, N'EMP6', N'CUS91', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (349, N'ORD349', 200000, 2, N'EMP7', N'CUS75', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (35, N'ORD35', 200000, 2, N'EMP3', N'CUS110', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (350, N'ORD350', 200000, 2, N'EMP22', N'CUS164', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (351, N'ORD351', 200000, 2, N'EMP20', N'CUS119', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (352, N'ORD352', 200000, 2, N'EMP17', N'CUS167', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (353, N'ORD353', 200000, 2, N'EMP24', N'CUS107', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (354, N'ORD354', 200000, 2, N'EMP11', N'CUS66', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (355, N'ORD355', 200000, 2, N'EMP1', N'CUS136', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (356, N'ORD356', 200000, 2, N'EMP3', N'CUS102', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (357, N'ORD357', 200000, 2, N'EMP9', N'CUS81', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (358, N'ORD358', 200000, 2, N'EMP14', N'CUS14', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (359, N'ORD359', 200000, 2, N'EMP28', N'CUS10', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (36, N'ORD36', 200000, 2, N'EMP13', N'CUS1', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (360, N'ORD360', 200000, 2, N'EMP28', N'CUS188', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (361, N'ORD361', 200000, 2, N'EMP16', N'CUS157', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (362, N'ORD362', 200000, 2, N'EMP23', N'CUS131', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (363, N'ORD363', 200000, 2, N'EMP27', N'CUS75', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (364, N'ORD364', 200000, 2, N'EMP23', N'CUS8', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (365, N'ORD365', 200000, 2, N'EMP5', N'CUS78', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (366, N'ORD366', 200000, 2, N'EMP18', N'CUS1', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (367, N'ORD367', 200000, 2, N'EMP15', N'CUS143', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (368, N'ORD368', 200000, 2, N'EMP3', N'CUS111', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (369, N'ORD369', 200000, 2, N'EMP13', N'CUS87', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (37, N'ORD37', 200000, 2, N'EMP15', N'CUS187', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (370, N'ORD370', 200000, 2, N'EMP14', N'CUS134', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (371, N'ORD371', 200000, 2, N'EMP14', N'CUS93', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (372, N'ORD372', 200000, 2, N'EMP12', N'CUS104', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (373, N'ORD373', 200000, 2, N'EMP28', N'CUS105', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (374, N'ORD374', 200000, 2, N'EMP13', N'CUS150', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (375, N'ORD375', 200000, 2, N'EMP23', N'CUS150', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (376, N'ORD376', 200000, 2, N'EMP12', N'CUS102', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (377, N'ORD377', 200000, 2, N'EMP5', N'CUS103', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (378, N'ORD378', 200000, 2, N'EMP6', N'CUS31', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (379, N'ORD379', 200000, 2, N'EMP17', N'CUS73', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (38, N'ORD38', 200000, 2, N'EMP21', N'CUS3', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (380, N'ORD380', 200000, 2, N'EMP6', N'CUS188', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (381, N'ORD381', 200000, 2, N'EMP17', N'CUS199', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (382, N'ORD382', 200000, 2, N'EMP17', N'CUS71', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (383, N'ORD383', 200000, 2, N'EMP25', N'CUS143', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (384, N'ORD384', 200000, 2, N'EMP4', N'CUS98', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (385, N'ORD385', 200000, 2, N'EMP15', N'CUS107', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (386, N'ORD386', 200000, 2, N'EMP15', N'CUS186', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (387, N'ORD387', 200000, 2, N'EMP2', N'CUS54', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (388, N'ORD388', 200000, 2, N'EMP10', N'CUS173', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (389, N'ORD389', 200000, 2, N'EMP11', N'CUS179', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (39, N'ORD39', 200000, 2, N'EMP26', N'CUS192', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (390, N'ORD390', 200000, 2, N'EMP2', N'CUS22', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (391, N'ORD391', 200000, 2, N'EMP8', N'CUS90', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (392, N'ORD392', 200000, 2, N'EMP19', N'CUS159', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (393, N'ORD393', 200000, 2, N'EMP20', N'CUS46', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (394, N'ORD394', 200000, 2, N'EMP26', N'CUS49', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (395, N'ORD395', 200000, 2, N'EMP1', N'CUS130', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (396, N'ORD396', 200000, 2, N'EMP21', N'CUS192', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (397, N'ORD397', 200000, 2, N'EMP14', N'CUS46', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (398, N'ORD398', 200000, 2, N'EMP1', N'CUS172', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (399, N'ORD399', 200000, 2, N'EMP21', N'CUS152', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (4, N'ORD4', 200000, 2, N'EMP5', N'CUS172', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (40, N'ORD40', 200000, 2, N'EMP2', N'CUS145', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (400, N'ORD400', 200000, 2, N'EMP19', N'CUS11', NULL, 0, CAST(N'2019-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (401, N'ORD401', 200000, 2, N'EMP13', N'CUS171', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (402, N'ORD402', 200000, 2, N'EMP27', N'CUS29', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (403, N'ORD403', 200000, 2, N'EMP10', N'CUS21', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (404, N'ORD404', 200000, 2, N'EMP29', N'CUS10', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (405, N'ORD405', 200000, 2, N'EMP21', N'CUS47', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (406, N'ORD406', 200000, 2, N'EMP10', N'CUS144', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (407, N'ORD407', 200000, 2, N'EMP1', N'CUS88', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (408, N'ORD408', 200000, 2, N'EMP16', N'CUS68', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (409, N'ORD409', 200000, 2, N'EMP8', N'CUS55', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (41, N'ORD41', 200000, 2, N'EMP29', N'CUS69', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (410, N'ORD410', 200000, 2, N'EMP16', N'CUS175', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (411, N'ORD411', 200000, 2, N'EMP18', N'CUS132', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (412, N'ORD412', 200000, 2, N'EMP28', N'CUS100', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (413, N'ORD413', 200000, 2, N'EMP11', N'CUS191', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (414, N'ORD414', 200000, 2, N'EMP1', N'CUS15', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (415, N'ORD415', 200000, 2, N'EMP30', N'CUS51', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (416, N'ORD416', 200000, 2, N'EMP15', N'CUS16', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (417, N'ORD417', 200000, 2, N'EMP10', N'CUS19', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (418, N'ORD418', 200000, 2, N'EMP11', N'CUS80', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (419, N'ORD419', 200000, 2, N'EMP14', N'CUS82', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (42, N'ORD42', 200000, 2, N'EMP2', N'CUS193', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (420, N'ORD420', 200000, 2, N'EMP6', N'CUS188', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (421, N'ORD421', 200000, 2, N'EMP6', N'CUS103', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (422, N'ORD422', 200000, 2, N'EMP1', N'CUS194', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (423, N'ORD423', 200000, 2, N'EMP9', N'CUS126', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (424, N'ORD424', 200000, 2, N'EMP24', N'CUS45', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (425, N'ORD425', 200000, 2, N'EMP15', N'CUS178', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (426, N'ORD426', 200000, 2, N'EMP3', N'CUS16', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (427, N'ORD427', 200000, 2, N'EMP28', N'CUS63', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (428, N'ORD428', 200000, 2, N'EMP25', N'CUS125', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (429, N'ORD429', 200000, 2, N'EMP12', N'CUS151', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (43, N'ORD43', 200000, 2, N'EMP8', N'CUS87', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (430, N'ORD430', 200000, 2, N'EMP18', N'CUS168', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (431, N'ORD431', 200000, 2, N'EMP14', N'CUS122', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (432, N'ORD432', 200000, 2, N'EMP6', N'CUS90', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (433, N'ORD433', 200000, 2, N'EMP25', N'CUS192', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (434, N'ORD434', 200000, 2, N'EMP24', N'CUS48', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (435, N'ORD435', 200000, 2, N'EMP11', N'CUS124', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (436, N'ORD436', 200000, 2, N'EMP19', N'CUS132', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (437, N'ORD437', 200000, 2, N'EMP13', N'CUS165', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (438, N'ORD438', 200000, 2, N'EMP19', N'CUS29', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (439, N'ORD439', 200000, 2, N'EMP28', N'CUS160', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (44, N'ORD44', 200000, 2, N'EMP4', N'CUS61', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (440, N'ORD440', 200000, 2, N'EMP24', N'CUS58', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (441, N'ORD441', 200000, 2, N'EMP27', N'CUS35', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (442, N'ORD442', 200000, 2, N'EMP30', N'CUS8', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (443, N'ORD443', 200000, 2, N'EMP24', N'CUS52', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (444, N'ORD444', 200000, 2, N'EMP21', N'CUS64', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (445, N'ORD445', 200000, 2, N'EMP28', N'CUS191', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (446, N'ORD446', 200000, 2, N'EMP13', N'CUS134', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (447, N'ORD447', 200000, 2, N'EMP22', N'CUS183', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (448, N'ORD448', 200000, 2, N'EMP29', N'CUS162', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (449, N'ORD449', 200000, 2, N'EMP19', N'CUS147', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (45, N'ORD45', 200000, 2, N'EMP12', N'CUS170', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (450, N'ORD450', 200000, 2, N'EMP14', N'CUS108', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (451, N'ORD451', 200000, 2, N'EMP8', N'CUS13', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (452, N'ORD452', 200000, 2, N'EMP13', N'CUS137', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (453, N'ORD453', 200000, 2, N'EMP16', N'CUS165', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (454, N'ORD454', 200000, 2, N'EMP11', N'CUS177', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (455, N'ORD455', 200000, 2, N'EMP3', N'CUS124', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (456, N'ORD456', 200000, 2, N'EMP6', N'CUS139', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (457, N'ORD457', 200000, 2, N'EMP10', N'CUS77', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (458, N'ORD458', 200000, 2, N'EMP19', N'CUS155', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (459, N'ORD459', 200000, 2, N'EMP8', N'CUS199', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (46, N'ORD46', 200000, 2, N'EMP14', N'CUS142', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (460, N'ORD460', 200000, 2, N'EMP3', N'CUS179', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (461, N'ORD461', 200000, 2, N'EMP13', N'CUS86', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (462, N'ORD462', 200000, 2, N'EMP27', N'CUS35', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (463, N'ORD463', 200000, 2, N'EMP21', N'CUS140', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (464, N'ORD464', 200000, 2, N'EMP24', N'CUS136', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (465, N'ORD465', 200000, 2, N'EMP27', N'CUS93', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (466, N'ORD466', 200000, 2, N'EMP4', N'CUS198', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (467, N'ORD467', 200000, 2, N'EMP23', N'CUS149', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (468, N'ORD468', 200000, 2, N'EMP9', N'CUS58', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (469, N'ORD469', 200000, 2, N'EMP27', N'CUS121', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (47, N'ORD47', 200000, 2, N'EMP23', N'CUS192', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (470, N'ORD470', 200000, 2, N'EMP7', N'CUS116', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (471, N'ORD471', 200000, 2, N'EMP27', N'CUS80', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (472, N'ORD472', 200000, 2, N'EMP3', N'CUS88', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (473, N'ORD473', 200000, 2, N'EMP12', N'CUS151', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (474, N'ORD474', 200000, 2, N'EMP15', N'CUS166', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (475, N'ORD475', 200000, 2, N'EMP21', N'CUS196', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (476, N'ORD476', 200000, 2, N'EMP28', N'CUS98', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (477, N'ORD477', 200000, 2, N'EMP30', N'CUS181', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (478, N'ORD478', 200000, 2, N'EMP7', N'CUS160', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (479, N'ORD479', 200000, 2, N'EMP28', N'CUS164', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (48, N'ORD48', 200000, 2, N'EMP29', N'CUS147', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (480, N'ORD480', 200000, 2, N'EMP7', N'CUS120', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (481, N'ORD481', 200000, 2, N'EMP10', N'CUS63', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (482, N'ORD482', 200000, 2, N'EMP11', N'CUS161', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (483, N'ORD483', 200000, 2, N'EMP7', N'CUS171', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (484, N'ORD484', 200000, 2, N'EMP11', N'CUS171', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (485, N'ORD485', 200000, 2, N'EMP22', N'CUS1', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (486, N'ORD486', 200000, 2, N'EMP28', N'CUS98', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (487, N'ORD487', 200000, 2, N'EMP27', N'CUS165', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (488, N'ORD488', 200000, 2, N'EMP30', N'CUS123', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (489, N'ORD489', 200000, 2, N'EMP4', N'CUS195', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (49, N'ORD49', 200000, 2, N'EMP13', N'CUS150', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (490, N'ORD490', 200000, 2, N'EMP9', N'CUS198', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (491, N'ORD491', 200000, 2, N'EMP13', N'CUS156', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (492, N'ORD492', 200000, 2, N'EMP2', N'CUS27', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (493, N'ORD493', 200000, 2, N'EMP28', N'CUS111', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (494, N'ORD494', 200000, 2, N'EMP1', N'CUS11', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (495, N'ORD495', 200000, 2, N'EMP21', N'CUS183', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (496, N'ORD496', 200000, 2, N'EMP21', N'CUS33', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (497, N'ORD497', 200000, 2, N'EMP16', N'CUS80', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (498, N'ORD498', 200000, 2, N'EMP24', N'CUS5', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (499, N'ORD499', 200000, 2, N'EMP16', N'CUS92', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (5, N'ORD5', 200000, 2, N'EMP30', N'CUS140', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (50, N'ORD50', 200000, 2, N'EMP14', N'CUS86', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (500, N'ORD500', 200000, 2, N'EMP1', N'CUS148', NULL, 0, CAST(N'2019-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (501, N'ORD501', 200000, 2, N'EMP20', N'CUS31', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (502, N'ORD502', 200000, 2, N'EMP10', N'CUS129', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (503, N'ORD503', 200000, 2, N'EMP16', N'CUS96', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (504, N'ORD504', 200000, 2, N'EMP8', N'CUS27', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (505, N'ORD505', 200000, 2, N'EMP10', N'CUS28', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (506, N'ORD506', 200000, 2, N'EMP29', N'CUS108', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (507, N'ORD507', 200000, 2, N'EMP9', N'CUS55', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (508, N'ORD508', 200000, 2, N'EMP30', N'CUS170', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (509, N'ORD509', 200000, 2, N'EMP30', N'CUS142', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (51, N'ORD51', 200000, 2, N'EMP24', N'CUS55', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (510, N'ORD510', 200000, 2, N'EMP29', N'CUS154', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (511, N'ORD511', 200000, 2, N'EMP6', N'CUS176', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (512, N'ORD512', 200000, 2, N'EMP10', N'CUS32', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (513, N'ORD513', 200000, 2, N'EMP23', N'CUS15', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (514, N'ORD514', 200000, 2, N'EMP7', N'CUS20', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (515, N'ORD515', 200000, 2, N'EMP28', N'CUS26', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (516, N'ORD516', 200000, 2, N'EMP8', N'CUS99', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (517, N'ORD517', 200000, 2, N'EMP12', N'CUS84', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (518, N'ORD518', 200000, 2, N'EMP5', N'CUS152', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (519, N'ORD519', 200000, 2, N'EMP15', N'CUS63', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (52, N'ORD52', 200000, 2, N'EMP27', N'CUS30', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (520, N'ORD520', 200000, 2, N'EMP10', N'CUS117', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (521, N'ORD521', 200000, 2, N'EMP27', N'CUS103', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (522, N'ORD522', 200000, 2, N'EMP7', N'CUS95', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (523, N'ORD523', 200000, 2, N'EMP26', N'CUS5', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (524, N'ORD524', 200000, 2, N'EMP24', N'CUS27', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (525, N'ORD525', 200000, 2, N'EMP18', N'CUS109', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (526, N'ORD526', 200000, 2, N'EMP1', N'CUS139', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (527, N'ORD527', 200000, 2, N'EMP3', N'CUS151', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (528, N'ORD528', 200000, 2, N'EMP9', N'CUS129', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (529, N'ORD529', 200000, 2, N'EMP29', N'CUS21', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (53, N'ORD53', 200000, 2, N'EMP7', N'CUS145', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (530, N'ORD530', 200000, 2, N'EMP9', N'CUS89', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (531, N'ORD531', 200000, 2, N'EMP2', N'CUS178', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (532, N'ORD532', 200000, 2, N'EMP25', N'CUS11', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (533, N'ORD533', 200000, 2, N'EMP9', N'CUS20', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (534, N'ORD534', 200000, 2, N'EMP22', N'CUS41', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (535, N'ORD535', 200000, 2, N'EMP17', N'CUS135', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (536, N'ORD536', 200000, 2, N'EMP4', N'CUS14', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (537, N'ORD537', 200000, 2, N'EMP17', N'CUS128', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (538, N'ORD538', 200000, 2, N'EMP27', N'CUS183', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (539, N'ORD539', 200000, 2, N'EMP6', N'CUS8', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (54, N'ORD54', 200000, 2, N'EMP15', N'CUS124', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (540, N'ORD540', 200000, 2, N'EMP5', N'CUS95', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (541, N'ORD541', 200000, 2, N'EMP17', N'CUS158', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (542, N'ORD542', 200000, 2, N'EMP26', N'CUS176', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (543, N'ORD543', 200000, 2, N'EMP25', N'CUS200', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (544, N'ORD544', 200000, 2, N'EMP10', N'CUS147', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (545, N'ORD545', 200000, 2, N'EMP4', N'CUS179', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (546, N'ORD546', 200000, 2, N'EMP6', N'CUS171', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (547, N'ORD547', 200000, 2, N'EMP30', N'CUS107', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (548, N'ORD548', 200000, 2, N'EMP8', N'CUS146', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (549, N'ORD549', 200000, 2, N'EMP27', N'CUS160', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (55, N'ORD55', 200000, 2, N'EMP11', N'CUS27', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (550, N'ORD550', 200000, 2, N'EMP11', N'CUS176', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (551, N'ORD551', 200000, 2, N'EMP10', N'CUS49', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (552, N'ORD552', 200000, 2, N'EMP19', N'CUS65', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (553, N'ORD553', 200000, 2, N'EMP23', N'CUS43', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (554, N'ORD554', 200000, 2, N'EMP4', N'CUS135', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (555, N'ORD555', 200000, 2, N'EMP9', N'CUS7', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (556, N'ORD556', 200000, 2, N'EMP21', N'CUS45', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (557, N'ORD557', 200000, 2, N'EMP17', N'CUS185', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (558, N'ORD558', 200000, 2, N'EMP21', N'CUS56', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (559, N'ORD559', 200000, 2, N'EMP26', N'CUS77', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (56, N'ORD56', 200000, 2, N'EMP13', N'CUS89', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (560, N'ORD560', 200000, 2, N'EMP17', N'CUS196', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (561, N'ORD561', 200000, 2, N'EMP27', N'CUS33', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (562, N'ORD562', 200000, 2, N'EMP3', N'CUS42', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (563, N'ORD563', 200000, 2, N'EMP22', N'CUS103', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (564, N'ORD564', 200000, 2, N'EMP4', N'CUS62', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (565, N'ORD565', 200000, 2, N'EMP11', N'CUS26', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (566, N'ORD566', 200000, 2, N'EMP16', N'CUS172', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (567, N'ORD567', 200000, 2, N'EMP10', N'CUS65', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (568, N'ORD568', 200000, 2, N'EMP7', N'CUS53', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (569, N'ORD569', 200000, 2, N'EMP7', N'CUS71', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (57, N'ORD57', 200000, 2, N'EMP11', N'CUS53', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (570, N'ORD570', 200000, 2, N'EMP7', N'CUS35', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (571, N'ORD571', 200000, 2, N'EMP13', N'CUS170', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (572, N'ORD572', 200000, 2, N'EMP30', N'CUS117', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (573, N'ORD573', 200000, 2, N'EMP28', N'CUS185', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (574, N'ORD574', 200000, 2, N'EMP4', N'CUS64', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (575, N'ORD575', 200000, 2, N'EMP10', N'CUS79', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (576, N'ORD576', 200000, 2, N'EMP15', N'CUS186', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (577, N'ORD577', 200000, 2, N'EMP19', N'CUS124', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (578, N'ORD578', 200000, 2, N'EMP19', N'CUS44', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (579, N'ORD579', 200000, 2, N'EMP25', N'CUS41', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (58, N'ORD58', 200000, 2, N'EMP29', N'CUS142', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (580, N'ORD580', 200000, 2, N'EMP23', N'CUS29', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (581, N'ORD581', 200000, 2, N'EMP5', N'CUS138', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (582, N'ORD582', 200000, 2, N'EMP10', N'CUS171', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (583, N'ORD583', 200000, 2, N'EMP26', N'CUS181', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (584, N'ORD584', 200000, 2, N'EMP7', N'CUS6', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (585, N'ORD585', 200000, 2, N'EMP24', N'CUS8', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (586, N'ORD586', 200000, 2, N'EMP20', N'CUS58', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (587, N'ORD587', 200000, 2, N'EMP1', N'CUS137', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (588, N'ORD588', 200000, 2, N'EMP19', N'CUS36', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (589, N'ORD589', 200000, 2, N'EMP21', N'CUS153', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (59, N'ORD59', 200000, 2, N'EMP6', N'CUS197', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (590, N'ORD590', 200000, 2, N'EMP19', N'CUS180', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (591, N'ORD591', 200000, 2, N'EMP3', N'CUS32', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (592, N'ORD592', 200000, 2, N'EMP23', N'CUS175', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (593, N'ORD593', 200000, 2, N'EMP15', N'CUS163', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (594, N'ORD594', 200000, 2, N'EMP3', N'CUS25', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (595, N'ORD595', 200000, 2, N'EMP10', N'CUS118', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (596, N'ORD596', 200000, 2, N'EMP17', N'CUS20', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (597, N'ORD597', 200000, 2, N'EMP4', N'CUS147', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (598, N'ORD598', 200000, 2, N'EMP6', N'CUS22', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (599, N'ORD599', 200000, 2, N'EMP26', N'CUS136', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (6, N'ORD6', 200000, 2, N'EMP27', N'CUS77', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (60, N'ORD60', 200000, 2, N'EMP16', N'CUS48', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (600, N'ORD600', 200000, 2, N'EMP2', N'CUS30', NULL, 0, CAST(N'2019-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (601, N'ORD601', 200000, 2, N'EMP21', N'CUS186', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (602, N'ORD602', 200000, 2, N'EMP13', N'CUS92', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (603, N'ORD603', 200000, 2, N'EMP11', N'CUS114', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (604, N'ORD604', 200000, 2, N'EMP4', N'CUS78', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (605, N'ORD605', 200000, 2, N'EMP12', N'CUS119', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (606, N'ORD606', 200000, 2, N'EMP16', N'CUS58', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (607, N'ORD607', 200000, 2, N'EMP13', N'CUS119', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (608, N'ORD608', 200000, 2, N'EMP26', N'CUS35', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (609, N'ORD609', 200000, 2, N'EMP24', N'CUS114', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (61, N'ORD61', 200000, 2, N'EMP4', N'CUS180', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (610, N'ORD610', 200000, 2, N'EMP24', N'CUS125', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (611, N'ORD611', 200000, 2, N'EMP25', N'CUS165', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (612, N'ORD612', 200000, 2, N'EMP2', N'CUS21', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (613, N'ORD613', 200000, 2, N'EMP19', N'CUS43', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (614, N'ORD614', 200000, 2, N'EMP13', N'CUS169', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (615, N'ORD615', 200000, 2, N'EMP15', N'CUS71', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (616, N'ORD616', 200000, 2, N'EMP10', N'CUS86', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (617, N'ORD617', 200000, 2, N'EMP22', N'CUS8', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (618, N'ORD618', 200000, 2, N'EMP27', N'CUS169', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (619, N'ORD619', 200000, 2, N'EMP19', N'CUS29', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (62, N'ORD62', 200000, 2, N'EMP20', N'CUS96', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (620, N'ORD620', 200000, 2, N'EMP11', N'CUS165', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (621, N'ORD621', 200000, 2, N'EMP25', N'CUS99', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (622, N'ORD622', 200000, 2, N'EMP22', N'CUS57', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (623, N'ORD623', 200000, 2, N'EMP2', N'CUS142', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (624, N'ORD624', 200000, 2, N'EMP6', N'CUS4', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (625, N'ORD625', 200000, 2, N'EMP29', N'CUS68', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (626, N'ORD626', 200000, 2, N'EMP19', N'CUS169', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (627, N'ORD627', 200000, 2, N'EMP13', N'CUS25', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (628, N'ORD628', 200000, 2, N'EMP8', N'CUS101', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (629, N'ORD629', 200000, 2, N'EMP21', N'CUS124', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (63, N'ORD63', 200000, 2, N'EMP27', N'CUS127', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (630, N'ORD630', 200000, 2, N'EMP12', N'CUS21', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (631, N'ORD631', 200000, 2, N'EMP28', N'CUS45', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (632, N'ORD632', 200000, 2, N'EMP8', N'CUS41', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (633, N'ORD633', 200000, 2, N'EMP29', N'CUS168', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (634, N'ORD634', 200000, 2, N'EMP10', N'CUS92', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (635, N'ORD635', 200000, 2, N'EMP25', N'CUS100', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (636, N'ORD636', 200000, 2, N'EMP4', N'CUS91', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (637, N'ORD637', 200000, 2, N'EMP2', N'CUS181', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (638, N'ORD638', 200000, 2, N'EMP4', N'CUS118', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (639, N'ORD639', 200000, 2, N'EMP16', N'CUS96', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (64, N'ORD64', 200000, 2, N'EMP21', N'CUS145', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (640, N'ORD640', 200000, 2, N'EMP6', N'CUS175', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (641, N'ORD641', 200000, 2, N'EMP14', N'CUS114', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (642, N'ORD642', 200000, 2, N'EMP5', N'CUS138', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (643, N'ORD643', 200000, 2, N'EMP18', N'CUS144', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (644, N'ORD644', 200000, 2, N'EMP25', N'CUS169', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (645, N'ORD645', 200000, 2, N'EMP30', N'CUS186', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (646, N'ORD646', 200000, 2, N'EMP14', N'CUS108', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (647, N'ORD647', 200000, 2, N'EMP19', N'CUS13', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (648, N'ORD648', 200000, 2, N'EMP22', N'CUS106', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (649, N'ORD649', 200000, 2, N'EMP27', N'CUS15', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (65, N'ORD65', 200000, 2, N'EMP25', N'CUS20', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (650, N'ORD650', 200000, 2, N'EMP8', N'CUS110', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (651, N'ORD651', 200000, 2, N'EMP13', N'CUS58', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (652, N'ORD652', 200000, 2, N'EMP19', N'CUS69', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (653, N'ORD653', 200000, 2, N'EMP1', N'CUS81', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (654, N'ORD654', 200000, 2, N'EMP4', N'CUS196', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (655, N'ORD655', 200000, 2, N'EMP20', N'CUS165', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (656, N'ORD656', 200000, 2, N'EMP7', N'CUS120', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (657, N'ORD657', 200000, 2, N'EMP1', N'CUS2', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (658, N'ORD658', 200000, 2, N'EMP18', N'CUS97', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (659, N'ORD659', 200000, 2, N'EMP21', N'CUS193', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (66, N'ORD66', 200000, 2, N'EMP10', N'CUS151', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (660, N'ORD660', 200000, 2, N'EMP22', N'CUS67', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (661, N'ORD661', 200000, 2, N'EMP8', N'CUS131', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (662, N'ORD662', 200000, 2, N'EMP16', N'CUS80', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (663, N'ORD663', 200000, 2, N'EMP23', N'CUS52', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (664, N'ORD664', 200000, 2, N'EMP23', N'CUS76', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (665, N'ORD665', 200000, 2, N'EMP30', N'CUS104', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (666, N'ORD666', 200000, 2, N'EMP3', N'CUS165', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (667, N'ORD667', 200000, 2, N'EMP4', N'CUS62', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (668, N'ORD668', 200000, 2, N'EMP3', N'CUS90', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (669, N'ORD669', 200000, 2, N'EMP26', N'CUS162', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (67, N'ORD67', 200000, 2, N'EMP1', N'CUS6', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (670, N'ORD670', 200000, 2, N'EMP22', N'CUS14', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (671, N'ORD671', 200000, 2, N'EMP7', N'CUS51', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (672, N'ORD672', 200000, 2, N'EMP17', N'CUS197', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (673, N'ORD673', 200000, 2, N'EMP7', N'CUS36', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (674, N'ORD674', 200000, 2, N'EMP20', N'CUS48', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (675, N'ORD675', 200000, 2, N'EMP30', N'CUS92', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (676, N'ORD676', 200000, 2, N'EMP25', N'CUS99', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (677, N'ORD677', 200000, 2, N'EMP15', N'CUS32', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (678, N'ORD678', 200000, 2, N'EMP26', N'CUS177', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (679, N'ORD679', 200000, 2, N'EMP19', N'CUS165', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (68, N'ORD68', 200000, 2, N'EMP13', N'CUS168', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (680, N'ORD680', 200000, 2, N'EMP12', N'CUS153', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (681, N'ORD681', 200000, 2, N'EMP17', N'CUS117', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (682, N'ORD682', 200000, 2, N'EMP11', N'CUS68', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (683, N'ORD683', 200000, 2, N'EMP28', N'CUS4', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (684, N'ORD684', 200000, 2, N'EMP25', N'CUS15', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (685, N'ORD685', 200000, 2, N'EMP3', N'CUS173', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (686, N'ORD686', 200000, 2, N'EMP5', N'CUS113', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (687, N'ORD687', 200000, 2, N'EMP17', N'CUS159', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (688, N'ORD688', 200000, 2, N'EMP22', N'CUS71', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (689, N'ORD689', 200000, 2, N'EMP3', N'CUS156', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (69, N'ORD69', 200000, 2, N'EMP10', N'CUS30', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (690, N'ORD690', 200000, 2, N'EMP27', N'CUS68', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (691, N'ORD691', 200000, 2, N'EMP13', N'CUS96', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (692, N'ORD692', 200000, 2, N'EMP20', N'CUS42', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (693, N'ORD693', 200000, 2, N'EMP25', N'CUS1', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (694, N'ORD694', 200000, 2, N'EMP14', N'CUS51', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (695, N'ORD695', 200000, 2, N'EMP25', N'CUS169', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (696, N'ORD696', 200000, 2, N'EMP8', N'CUS164', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (697, N'ORD697', 200000, 2, N'EMP15', N'CUS174', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (698, N'ORD698', 200000, 2, N'EMP20', N'CUS132', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (699, N'ORD699', 200000, 2, N'EMP24', N'CUS52', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (7, N'ORD7', 200000, 2, N'EMP18', N'CUS42', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (70, N'ORD70', 200000, 2, N'EMP12', N'CUS35', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (700, N'ORD700', 200000, 2, N'EMP22', N'CUS31', NULL, 0, CAST(N'2019-04-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (701, N'ORD701', 200000, 2, N'EMP12', N'CUS9', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (702, N'ORD702', 200000, 2, N'EMP25', N'CUS30', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (703, N'ORD703', 200000, 2, N'EMP8', N'CUS13', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (704, N'ORD704', 200000, 2, N'EMP27', N'CUS191', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (705, N'ORD705', 200000, 2, N'EMP14', N'CUS161', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (706, N'ORD706', 200000, 2, N'EMP28', N'CUS59', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (707, N'ORD707', 200000, 2, N'EMP27', N'CUS32', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (708, N'ORD708', 200000, 2, N'EMP23', N'CUS93', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (709, N'ORD709', 200000, 2, N'EMP16', N'CUS31', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (71, N'ORD71', 200000, 2, N'EMP7', N'CUS158', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (710, N'ORD710', 200000, 2, N'EMP19', N'CUS39', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (711, N'ORD711', 200000, 2, N'EMP10', N'CUS169', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (712, N'ORD712', 200000, 2, N'EMP7', N'CUS166', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (713, N'ORD713', 200000, 2, N'EMP1', N'CUS108', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (714, N'ORD714', 200000, 2, N'EMP27', N'CUS21', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (715, N'ORD715', 200000, 2, N'EMP18', N'CUS129', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (716, N'ORD716', 200000, 2, N'EMP15', N'CUS34', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (717, N'ORD717', 200000, 2, N'EMP3', N'CUS185', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (718, N'ORD718', 200000, 2, N'EMP21', N'CUS122', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (719, N'ORD719', 200000, 2, N'EMP19', N'CUS123', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (72, N'ORD72', 200000, 2, N'EMP29', N'CUS3', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (720, N'ORD720', 200000, 2, N'EMP25', N'CUS138', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (721, N'ORD721', 200000, 2, N'EMP6', N'CUS181', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (722, N'ORD722', 200000, 2, N'EMP28', N'CUS111', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (723, N'ORD723', 200000, 2, N'EMP5', N'CUS72', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (724, N'ORD724', 200000, 2, N'EMP21', N'CUS25', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (725, N'ORD725', 200000, 2, N'EMP8', N'CUS116', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (726, N'ORD726', 200000, 2, N'EMP17', N'CUS199', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (727, N'ORD727', 200000, 2, N'EMP9', N'CUS149', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (728, N'ORD728', 200000, 2, N'EMP5', N'CUS167', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (729, N'ORD729', 200000, 2, N'EMP11', N'CUS55', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (73, N'ORD73', 200000, 2, N'EMP16', N'CUS189', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (730, N'ORD730', 200000, 2, N'EMP17', N'CUS70', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (731, N'ORD731', 200000, 2, N'EMP11', N'CUS109', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (732, N'ORD732', 200000, 2, N'EMP12', N'CUS117', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (733, N'ORD733', 200000, 2, N'EMP23', N'CUS80', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (734, N'ORD734', 200000, 2, N'EMP8', N'CUS108', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (735, N'ORD735', 200000, 2, N'EMP14', N'CUS199', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (736, N'ORD736', 200000, 2, N'EMP9', N'CUS139', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (737, N'ORD737', 200000, 2, N'EMP3', N'CUS168', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (738, N'ORD738', 200000, 2, N'EMP24', N'CUS51', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (739, N'ORD739', 200000, 2, N'EMP19', N'CUS31', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (74, N'ORD74', 200000, 2, N'EMP11', N'CUS97', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (740, N'ORD740', 200000, 2, N'EMP3', N'CUS24', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (741, N'ORD741', 200000, 2, N'EMP23', N'CUS19', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (742, N'ORD742', 200000, 2, N'EMP24', N'CUS188', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (743, N'ORD743', 200000, 2, N'EMP12', N'CUS200', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (744, N'ORD744', 200000, 2, N'EMP4', N'CUS108', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (745, N'ORD745', 200000, 2, N'EMP19', N'CUS137', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (746, N'ORD746', 200000, 2, N'EMP16', N'CUS39', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (747, N'ORD747', 200000, 2, N'EMP27', N'CUS100', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (748, N'ORD748', 200000, 2, N'EMP18', N'CUS39', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (749, N'ORD749', 200000, 2, N'EMP17', N'CUS195', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (75, N'ORD75', 200000, 2, N'EMP3', N'CUS112', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (750, N'ORD750', 200000, 2, N'EMP10', N'CUS164', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (751, N'ORD751', 200000, 2, N'EMP28', N'CUS91', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (752, N'ORD752', 200000, 2, N'EMP9', N'CUS51', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (753, N'ORD753', 200000, 2, N'EMP24', N'CUS47', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (754, N'ORD754', 200000, 2, N'EMP28', N'CUS73', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (755, N'ORD755', 200000, 2, N'EMP8', N'CUS186', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (756, N'ORD756', 200000, 2, N'EMP30', N'CUS106', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (757, N'ORD757', 200000, 2, N'EMP26', N'CUS74', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (758, N'ORD758', 200000, 2, N'EMP17', N'CUS194', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (759, N'ORD759', 200000, 2, N'EMP20', N'CUS99', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (76, N'ORD76', 200000, 2, N'EMP16', N'CUS111', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (760, N'ORD760', 200000, 2, N'EMP13', N'CUS122', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (761, N'ORD761', 200000, 2, N'EMP29', N'CUS71', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (762, N'ORD762', 200000, 2, N'EMP6', N'CUS1', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (763, N'ORD763', 200000, 2, N'EMP12', N'CUS169', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (764, N'ORD764', 200000, 2, N'EMP18', N'CUS103', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (765, N'ORD765', 200000, 2, N'EMP28', N'CUS97', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (766, N'ORD766', 200000, 2, N'EMP7', N'CUS16', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (767, N'ORD767', 200000, 2, N'EMP2', N'CUS146', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (768, N'ORD768', 200000, 2, N'EMP21', N'CUS142', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (769, N'ORD769', 200000, 2, N'EMP14', N'CUS119', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (77, N'ORD77', 200000, 2, N'EMP19', N'CUS119', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (770, N'ORD770', 200000, 2, N'EMP1', N'CUS79', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (771, N'ORD771', 200000, 2, N'EMP8', N'CUS81', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (772, N'ORD772', 200000, 2, N'EMP17', N'CUS94', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (773, N'ORD773', 200000, 2, N'EMP5', N'CUS25', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (774, N'ORD774', 200000, 2, N'EMP22', N'CUS162', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (775, N'ORD775', 200000, 2, N'EMP29', N'CUS71', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (776, N'ORD776', 200000, 2, N'EMP15', N'CUS162', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (777, N'ORD777', 200000, 2, N'EMP22', N'CUS55', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (778, N'ORD778', 200000, 2, N'EMP22', N'CUS160', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (779, N'ORD779', 200000, 2, N'EMP23', N'CUS138', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (78, N'ORD78', 200000, 2, N'EMP8', N'CUS60', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (780, N'ORD780', 200000, 2, N'EMP13', N'CUS120', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (781, N'ORD781', 200000, 2, N'EMP22', N'CUS84', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (782, N'ORD782', 200000, 2, N'EMP1', N'CUS2', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (783, N'ORD783', 200000, 2, N'EMP16', N'CUS182', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (784, N'ORD784', 200000, 2, N'EMP9', N'CUS24', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (785, N'ORD785', 200000, 2, N'EMP1', N'CUS131', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (786, N'ORD786', 200000, 2, N'EMP13', N'CUS70', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (787, N'ORD787', 200000, 2, N'EMP7', N'CUS121', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (788, N'ORD788', 200000, 2, N'EMP23', N'CUS189', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (789, N'ORD789', 200000, 2, N'EMP7', N'CUS95', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (79, N'ORD79', 200000, 2, N'EMP2', N'CUS91', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (790, N'ORD790', 200000, 2, N'EMP24', N'CUS77', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (791, N'ORD791', 200000, 2, N'EMP28', N'CUS148', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (792, N'ORD792', 200000, 2, N'EMP26', N'CUS101', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (793, N'ORD793', 200000, 2, N'EMP24', N'CUS5', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (794, N'ORD794', 200000, 2, N'EMP22', N'CUS168', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (795, N'ORD795', 200000, 2, N'EMP14', N'CUS22', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (796, N'ORD796', 200000, 2, N'EMP29', N'CUS79', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (797, N'ORD797', 200000, 2, N'EMP1', N'CUS59', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (798, N'ORD798', 200000, 2, N'EMP2', N'CUS17', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (799, N'ORD799', 200000, 2, N'EMP15', N'CUS160', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (8, N'ORD8', 200000, 2, N'EMP16', N'CUS72', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (80, N'ORD80', 200000, 2, N'EMP15', N'CUS197', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (800, N'ORD800', 200000, 2, N'EMP19', N'CUS7', NULL, 0, CAST(N'2020-01-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (801, N'ORD801', 200000, 2, N'EMP18', N'CUS69', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (802, N'ORD802', 200000, 2, N'EMP3', N'CUS105', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (803, N'ORD803', 200000, 2, N'EMP20', N'CUS92', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (804, N'ORD804', 200000, 2, N'EMP13', N'CUS62', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (805, N'ORD805', 200000, 2, N'EMP13', N'CUS87', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (806, N'ORD806', 200000, 2, N'EMP20', N'CUS75', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (807, N'ORD807', 200000, 2, N'EMP9', N'CUS143', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (808, N'ORD808', 200000, 2, N'EMP30', N'CUS73', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (809, N'ORD809', 200000, 2, N'EMP2', N'CUS174', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (81, N'ORD81', 200000, 2, N'EMP14', N'CUS19', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (810, N'ORD810', 200000, 2, N'EMP8', N'CUS141', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (811, N'ORD811', 200000, 2, N'EMP2', N'CUS113', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (812, N'ORD812', 200000, 2, N'EMP28', N'CUS66', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (813, N'ORD813', 200000, 2, N'EMP11', N'CUS23', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (814, N'ORD814', 200000, 2, N'EMP21', N'CUS13', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (815, N'ORD815', 200000, 2, N'EMP10', N'CUS30', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (816, N'ORD816', 200000, 2, N'EMP8', N'CUS9', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (817, N'ORD817', 200000, 2, N'EMP27', N'CUS15', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (818, N'ORD818', 200000, 2, N'EMP19', N'CUS108', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (819, N'ORD819', 200000, 2, N'EMP15', N'CUS27', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (82, N'ORD82', 200000, 2, N'EMP9', N'CUS138', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (820, N'ORD820', 200000, 2, N'EMP18', N'CUS136', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (821, N'ORD821', 200000, 2, N'EMP21', N'CUS8', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (822, N'ORD822', 200000, 2, N'EMP8', N'CUS148', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (823, N'ORD823', 200000, 2, N'EMP14', N'CUS115', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (824, N'ORD824', 200000, 2, N'EMP29', N'CUS45', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (825, N'ORD825', 200000, 2, N'EMP20', N'CUS95', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (826, N'ORD826', 200000, 2, N'EMP26', N'CUS160', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (827, N'ORD827', 200000, 2, N'EMP16', N'CUS103', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (828, N'ORD828', 200000, 2, N'EMP11', N'CUS90', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (829, N'ORD829', 200000, 2, N'EMP30', N'CUS138', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (83, N'ORD83', 200000, 2, N'EMP11', N'CUS167', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (830, N'ORD830', 200000, 2, N'EMP1', N'CUS115', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (831, N'ORD831', 200000, 2, N'EMP9', N'CUS85', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (832, N'ORD832', 200000, 2, N'EMP15', N'CUS145', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (833, N'ORD833', 200000, 2, N'EMP21', N'CUS160', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (834, N'ORD834', 200000, 2, N'EMP29', N'CUS103', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (835, N'ORD835', 200000, 2, N'EMP18', N'CUS129', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (836, N'ORD836', 200000, 2, N'EMP10', N'CUS59', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (837, N'ORD837', 200000, 2, N'EMP10', N'CUS120', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (838, N'ORD838', 200000, 2, N'EMP21', N'CUS20', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (839, N'ORD839', 200000, 2, N'EMP15', N'CUS29', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (84, N'ORD84', 200000, 2, N'EMP23', N'CUS120', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (840, N'ORD840', 200000, 2, N'EMP25', N'CUS33', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (841, N'ORD841', 200000, 2, N'EMP4', N'CUS159', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (842, N'ORD842', 200000, 2, N'EMP25', N'CUS48', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (843, N'ORD843', 200000, 2, N'EMP24', N'CUS70', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (844, N'ORD844', 200000, 2, N'EMP25', N'CUS119', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (845, N'ORD845', 200000, 2, N'EMP3', N'CUS58', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (846, N'ORD846', 200000, 2, N'EMP18', N'CUS72', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (847, N'ORD847', 200000, 2, N'EMP19', N'CUS83', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (848, N'ORD848', 200000, 2, N'EMP22', N'CUS183', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (849, N'ORD849', 200000, 2, N'EMP13', N'CUS44', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (85, N'ORD85', 200000, 2, N'EMP18', N'CUS182', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (850, N'ORD850', 200000, 2, N'EMP18', N'CUS187', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (851, N'ORD851', 200000, 2, N'EMP7', N'CUS26', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (852, N'ORD852', 200000, 2, N'EMP25', N'CUS81', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (853, N'ORD853', 200000, 2, N'EMP27', N'CUS40', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (854, N'ORD854', 200000, 2, N'EMP26', N'CUS95', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (855, N'ORD855', 200000, 2, N'EMP4', N'CUS43', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (856, N'ORD856', 200000, 2, N'EMP13', N'CUS188', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (857, N'ORD857', 200000, 2, N'EMP15', N'CUS151', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (858, N'ORD858', 200000, 2, N'EMP14', N'CUS60', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (859, N'ORD859', 200000, 2, N'EMP9', N'CUS170', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (86, N'ORD86', 200000, 2, N'EMP8', N'CUS127', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (860, N'ORD860', 200000, 2, N'EMP9', N'CUS119', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (861, N'ORD861', 200000, 2, N'EMP1', N'CUS77', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (862, N'ORD862', 200000, 2, N'EMP27', N'CUS81', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (863, N'ORD863', 200000, 2, N'EMP30', N'CUS81', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (864, N'ORD864', 200000, 2, N'EMP16', N'CUS142', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (865, N'ORD865', 200000, 2, N'EMP17', N'CUS42', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (866, N'ORD866', 200000, 2, N'EMP13', N'CUS89', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (867, N'ORD867', 200000, 2, N'EMP2', N'CUS68', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (868, N'ORD868', 200000, 2, N'EMP3', N'CUS77', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (869, N'ORD869', 200000, 2, N'EMP29', N'CUS50', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (87, N'ORD87', 200000, 2, N'EMP9', N'CUS173', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (870, N'ORD870', 200000, 2, N'EMP5', N'CUS126', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (871, N'ORD871', 200000, 2, N'EMP4', N'CUS33', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (872, N'ORD872', 200000, 2, N'EMP25', N'CUS22', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (873, N'ORD873', 200000, 2, N'EMP7', N'CUS178', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (874, N'ORD874', 200000, 2, N'EMP19', N'CUS92', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (875, N'ORD875', 200000, 2, N'EMP25', N'CUS58', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (876, N'ORD876', 200000, 2, N'EMP28', N'CUS89', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (877, N'ORD877', 200000, 2, N'EMP11', N'CUS30', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (878, N'ORD878', 200000, 2, N'EMP15', N'CUS151', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (879, N'ORD879', 200000, 2, N'EMP4', N'CUS76', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (88, N'ORD88', 200000, 2, N'EMP16', N'CUS60', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (880, N'ORD880', 200000, 2, N'EMP13', N'CUS122', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (881, N'ORD881', 200000, 2, N'EMP6', N'CUS141', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (882, N'ORD882', 200000, 2, N'EMP15', N'CUS112', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (883, N'ORD883', 200000, 2, N'EMP24', N'CUS43', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (884, N'ORD884', 200000, 2, N'EMP1', N'CUS35', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (885, N'ORD885', 200000, 2, N'EMP17', N'CUS14', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (886, N'ORD886', 200000, 2, N'EMP15', N'CUS32', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (887, N'ORD887', 200000, 2, N'EMP2', N'CUS121', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (888, N'ORD888', 200000, 2, N'EMP15', N'CUS158', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (889, N'ORD889', 200000, 2, N'EMP6', N'CUS154', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (89, N'ORD89', 200000, 2, N'EMP18', N'CUS82', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (890, N'ORD890', 200000, 2, N'EMP23', N'CUS120', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (891, N'ORD891', 200000, 2, N'EMP26', N'CUS23', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (892, N'ORD892', 200000, 2, N'EMP19', N'CUS123', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (893, N'ORD893', 200000, 2, N'EMP27', N'CUS53', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (894, N'ORD894', 200000, 2, N'EMP6', N'CUS81', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (895, N'ORD895', 200000, 2, N'EMP17', N'CUS185', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (896, N'ORD896', 200000, 2, N'EMP28', N'CUS56', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (897, N'ORD897', 200000, 2, N'EMP18', N'CUS115', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (898, N'ORD898', 200000, 2, N'EMP30', N'CUS114', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (899, N'ORD899', 200000, 2, N'EMP3', N'CUS130', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (9, N'ORD9', 200000, 2, N'EMP7', N'CUS10', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (90, N'ORD90', 200000, 2, N'EMP21', N'CUS45', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (900, N'ORD900', 200000, 2, N'EMP9', N'CUS101', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (901, N'ORD901', 200000, 2, N'EMP9', N'CUS36', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (902, N'ORD902', 200000, 2, N'EMP5', N'CUS67', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (903, N'ORD903', 200000, 2, N'EMP9', N'CUS134', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (904, N'ORD904', 200000, 2, N'EMP11', N'CUS19', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (905, N'ORD905', 200000, 2, N'EMP27', N'CUS21', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (906, N'ORD906', 200000, 2, N'EMP7', N'CUS156', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (907, N'ORD907', 200000, 2, N'EMP19', N'CUS19', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (908, N'ORD908', 200000, 2, N'EMP26', N'CUS164', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (909, N'ORD909', 200000, 2, N'EMP7', N'CUS168', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (91, N'ORD91', 200000, 2, N'EMP28', N'CUS198', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (910, N'ORD910', 200000, 2, N'EMP21', N'CUS42', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (911, N'ORD911', 200000, 2, N'EMP18', N'CUS114', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (912, N'ORD912', 200000, 2, N'EMP22', N'CUS114', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (913, N'ORD913', 200000, 2, N'EMP30', N'CUS108', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (914, N'ORD914', 200000, 2, N'EMP23', N'CUS28', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (915, N'ORD915', 200000, 2, N'EMP18', N'CUS43', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (916, N'ORD916', 200000, 2, N'EMP18', N'CUS35', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (917, N'ORD917', 200000, 2, N'EMP12', N'CUS15', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (918, N'ORD918', 200000, 2, N'EMP22', N'CUS155', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (919, N'ORD919', 200000, 2, N'EMP11', N'CUS115', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (92, N'ORD92', 200000, 2, N'EMP20', N'CUS11', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (920, N'ORD920', 200000, 2, N'EMP15', N'CUS112', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (921, N'ORD921', 200000, 2, N'EMP17', N'CUS122', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (922, N'ORD922', 200000, 2, N'EMP29', N'CUS106', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (923, N'ORD923', 200000, 2, N'EMP21', N'CUS193', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (924, N'ORD924', 200000, 2, N'EMP25', N'CUS11', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (925, N'ORD925', 200000, 2, N'EMP22', N'CUS96', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (926, N'ORD926', 200000, 2, N'EMP2', N'CUS13', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (927, N'ORD927', 200000, 2, N'EMP3', N'CUS86', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (928, N'ORD928', 200000, 2, N'EMP14', N'CUS11', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (929, N'ORD929', 200000, 2, N'EMP4', N'CUS29', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (93, N'ORD93', 200000, 2, N'EMP9', N'CUS72', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (930, N'ORD930', 200000, 2, N'EMP4', N'CUS58', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (931, N'ORD931', 200000, 2, N'EMP3', N'CUS79', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (932, N'ORD932', 200000, 2, N'EMP8', N'CUS130', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (933, N'ORD933', 200000, 2, N'EMP30', N'CUS159', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (934, N'ORD934', 200000, 2, N'EMP22', N'CUS41', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (935, N'ORD935', 200000, 2, N'EMP17', N'CUS30', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (936, N'ORD936', 200000, 2, N'EMP25', N'CUS199', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (937, N'ORD937', 200000, 2, N'EMP4', N'CUS55', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (938, N'ORD938', 200000, 2, N'EMP3', N'CUS90', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (939, N'ORD939', 200000, 2, N'EMP20', N'CUS159', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (94, N'ORD94', 200000, 2, N'EMP10', N'CUS197', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (940, N'ORD940', 200000, 2, N'EMP18', N'CUS7', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (941, N'ORD941', 200000, 2, N'EMP11', N'CUS120', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (942, N'ORD942', 200000, 2, N'EMP1', N'CUS152', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (943, N'ORD943', 200000, 2, N'EMP2', N'CUS176', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (944, N'ORD944', 200000, 2, N'EMP2', N'CUS23', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (945, N'ORD945', 200000, 2, N'EMP2', N'CUS85', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (946, N'ORD946', 200000, 2, N'EMP5', N'CUS157', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (947, N'ORD947', 200000, 2, N'EMP20', N'CUS185', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (948, N'ORD948', 200000, 2, N'EMP11', N'CUS56', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (949, N'ORD949', 200000, 2, N'EMP4', N'CUS123', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (95, N'ORD95', 200000, 2, N'EMP5', N'CUS14', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (950, N'ORD950', 200000, 2, N'EMP11', N'CUS5', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (951, N'ORD951', 200000, 2, N'EMP4', N'CUS177', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (952, N'ORD952', 200000, 2, N'EMP20', N'CUS60', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (953, N'ORD953', 200000, 2, N'EMP22', N'CUS163', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (954, N'ORD954', 200000, 2, N'EMP30', N'CUS35', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (955, N'ORD955', 200000, 2, N'EMP15', N'CUS105', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (956, N'ORD956', 200000, 2, N'EMP10', N'CUS149', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (957, N'ORD957', 200000, 2, N'EMP21', N'CUS97', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (958, N'ORD958', 200000, 2, N'EMP30', N'CUS1', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (959, N'ORD959', 200000, 2, N'EMP9', N'CUS195', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (96, N'ORD96', 200000, 2, N'EMP13', N'CUS153', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (960, N'ORD960', 200000, 2, N'EMP9', N'CUS167', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (961, N'ORD961', 200000, 2, N'EMP29', N'CUS198', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (962, N'ORD962', 200000, 2, N'EMP4', N'CUS146', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (963, N'ORD963', 200000, 2, N'EMP1', N'CUS2', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (964, N'ORD964', 200000, 2, N'EMP3', N'CUS53', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (965, N'ORD965', 200000, 2, N'EMP27', N'CUS154', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (966, N'ORD966', 200000, 2, N'EMP27', N'CUS8', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (967, N'ORD967', 200000, 2, N'EMP19', N'CUS56', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (968, N'ORD968', 200000, 2, N'EMP28', N'CUS51', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (969, N'ORD969', 200000, 2, N'EMP17', N'CUS196', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (97, N'ORD97', 200000, 2, N'EMP5', N'CUS86', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (970, N'ORD970', 200000, 2, N'EMP18', N'CUS32', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (971, N'ORD971', 200000, 2, N'EMP29', N'CUS136', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (972, N'ORD972', 200000, 2, N'EMP27', N'CUS72', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (973, N'ORD973', 200000, 2, N'EMP17', N'CUS3', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (974, N'ORD974', 200000, 2, N'EMP23', N'CUS43', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (975, N'ORD975', 200000, 2, N'EMP8', N'CUS73', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (976, N'ORD976', 200000, 2, N'EMP2', N'CUS129', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (977, N'ORD977', 200000, 2, N'EMP4', N'CUS33', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (978, N'ORD978', 200000, 2, N'EMP14', N'CUS175', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (979, N'ORD979', 200000, 2, N'EMP17', N'CUS179', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (98, N'ORD98', 200000, 2, N'EMP18', N'CUS98', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (980, N'ORD980', 200000, 2, N'EMP12', N'CUS120', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (981, N'ORD981', 200000, 2, N'EMP10', N'CUS128', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (982, N'ORD982', 200000, 2, N'EMP13', N'CUS27', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (983, N'ORD983', 200000, 2, N'EMP30', N'CUS87', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (984, N'ORD984', 200000, 2, N'EMP26', N'CUS61', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (985, N'ORD985', 200000, 2, N'EMP28', N'CUS127', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (986, N'ORD986', 200000, 2, N'EMP18', N'CUS38', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (987, N'ORD987', 200000, 2, N'EMP7', N'CUS102', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (988, N'ORD988', 200000, 2, N'EMP19', N'CUS76', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (989, N'ORD989', 200000, 2, N'EMP3', N'CUS104', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (99, N'ORD99', 200000, 2, N'EMP28', N'CUS41', NULL, 0, CAST(N'2018-10-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (990, N'ORD990', 200000, 2, N'EMP10', N'CUS149', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (991, N'ORD991', 200000, 2, N'EMP10', N'CUS80', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (992, N'ORD992', 200000, 2, N'EMP15', N'CUS170', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (993, N'ORD993', 200000, 2, N'EMP19', N'CUS140', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (994, N'ORD994', 200000, 2, N'EMP30', N'CUS142', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (995, N'ORD995', 200000, 2, N'EMP4', N'CUS136', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (996, N'ORD996', 200000, 2, N'EMP6', N'CUS109', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (997, N'ORD997', 200000, 2, N'EMP27', N'CUS14', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (998, N'ORD998', 200000, 2, N'EMP28', N'CUS141', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([id], [OrderId], [TotalValue], [TotalQuantity], [StaffId], [CustomerId], [DiscountId], [Status], [CreateDate], [IsDeleted]) VALUES (999, N'ORD999', 200000, 2, N'EMP27', N'CUS134', NULL, 0, CAST(N'2020-02-12T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (1, N'P1', N'CTL10', N'SPL8', N'Product 1', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-06-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (10, N'P10', N'CTL7', N'SPL9', N'Product 10', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-04-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (11, N'P11', N'CTL1', N'SPL12', N'Product 11', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2019-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (12, N'P12', N'CTL7', N'SPL8', N'Product 12', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (13, N'P13', N'CTL4', N'SPL5', N'Product 13', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-05-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (14, N'P14', N'CTL8', N'SPL17', N'Product 14', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2018-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (15, N'P15', N'CTL9', N'SPL13', N'Product 15', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-05-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (16, N'P16', N'CTL3', N'SPL18', N'Product 16', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-04-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (17, N'P17', N'CTL4', N'SPL13', N'Product 17', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-10-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (18, N'P18', N'CTL6', N'SPL2', N'Product 18', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-07-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (19, N'P19', N'CTL8', N'SPL20', N'Product 19', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2019-05-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (2, N'P2', N'CTL2', N'SPL7', N'Product 2', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (20, N'P20', N'CTL6', N'SPL1', N'Product 20', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (21, N'P21', N'CTL9', N'SPL16', N'Product 21', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2019-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (22, N'P22', N'CTL8', N'SPL1', N'Product 22', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-04-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (23, N'P23', N'CTL7', N'SPL19', N'Product 23', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2018-10-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (24, N'P24', N'CTL6', N'SPL4', N'Product 24', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-06-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (25, N'P25', N'CTL1', N'SPL14', N'Product 25', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (26, N'P26', N'CTL4', N'SPL11', N'Product 26', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2018-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (27, N'P27', N'CTL2', N'SPL15', N'Product 27', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-08-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (28, N'P28', N'CTL6', N'SPL20', N'Product 28', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2018-12-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (29, N'P29', N'CTL1', N'SPL16', N'Product 29', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2019-01-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (3, N'P3', N'CTL3', N'SPL2', N'Product 3', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2018-06-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (30, N'P30', N'CTL9', N'SPL2', N'Product 30', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (4, N'P4', N'CTL6', N'SPL5', N'Product 4', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (5, N'P5', N'CTL4', N'SPL11', N'Product 5', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2019-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (6, N'P6', N'CTL8', N'SPL13', N'Product 6', N'123456789012', 100000, 0, 400, NULL, 0, CAST(N'2018-07-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (7, N'P7', N'CTL4', N'SPL6', N'Product 7', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-10-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (8, N'P8', N'CTL10', N'SPL17', N'Product 8', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([id], [ProductId], [CatalogId], [SupplierId], [ProductName], [Barcode], [OutputPrice], [Status], [Quantity], [ProductImage], [IsDeleted], [LastModified]) VALUES (9, N'P9', N'CTL7', N'SPL19', N'Product 9', N'123456789012', 100000, 1, 400, NULL, 0, CAST(N'2018-08-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductSize] ON 

INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (1, N'P1', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (2, N'P1', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (3, N'P1', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (4, N'P1', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (5, N'P2', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (6, N'P2', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (7, N'P2', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (8, N'P2', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (9, N'P3', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (10, N'P3', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (11, N'P3', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (12, N'P3', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (13, N'P4', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (14, N'P4', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (15, N'P4', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (16, N'P4', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (17, N'P5', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (18, N'P5', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (19, N'P5', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (20, N'P5', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (21, N'P6', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (22, N'P6', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (23, N'P6', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (24, N'P6', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (25, N'P7', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (26, N'P7', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (27, N'P7', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (28, N'P7', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (29, N'P8', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (30, N'P8', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (31, N'P8', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (32, N'P8', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (33, N'P9', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (34, N'P9', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (35, N'P9', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (36, N'P9', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (37, N'P10', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (38, N'P10', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (39, N'P10', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (40, N'P10', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (41, N'P11', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (42, N'P11', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (43, N'P11', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (44, N'P11', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (45, N'P12', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (46, N'P12', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (47, N'P12', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (48, N'P12', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (49, N'P13', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (50, N'P13', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (51, N'P13', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (52, N'P13', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (53, N'P14', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (54, N'P14', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (55, N'P14', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (56, N'P14', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (57, N'P15', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (58, N'P15', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (59, N'P15', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (60, N'P15', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (61, N'P16', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (62, N'P16', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (63, N'P16', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (64, N'P16', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (65, N'P17', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (66, N'P17', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (67, N'P17', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (68, N'P17', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (69, N'P18', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (70, N'P18', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (71, N'P18', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (72, N'P18', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (73, N'P19', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (74, N'P19', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (75, N'P19', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (76, N'P19', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (77, N'P20', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (78, N'P20', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (79, N'P20', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (80, N'P20', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (81, N'P21', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (82, N'P21', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (83, N'P21', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (84, N'P21', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (85, N'P22', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (86, N'P22', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (87, N'P22', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (88, N'P22', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (89, N'P23', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (90, N'P23', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (91, N'P23', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (92, N'P23', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (93, N'P24', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (94, N'P24', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (95, N'P24', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (96, N'P24', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (97, N'P25', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (98, N'P25', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (99, N'P25', N'L         ', 100)
GO
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (100, N'P25', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (101, N'P26', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (102, N'P26', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (103, N'P26', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (104, N'P26', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (105, N'P27', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (106, N'P27', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (107, N'P27', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (108, N'P27', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (109, N'P28', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (110, N'P28', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (111, N'P28', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (112, N'P28', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (113, N'P29', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (114, N'P29', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (115, N'P29', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (116, N'P29', N'XL        ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (117, N'P30', N'S         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (118, N'P30', N'M         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (119, N'P30', N'L         ', 100)
INSERT [dbo].[ProductSize] ([id], [ProductId], [Size], [Quantity]) VALUES (120, N'P30', N'XL        ', 100)
SET IDENTITY_INSERT [dbo].[ProductSize] OFF
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (1, N'EMP1', N'Carrett', N'Parker', CAST(N'2017-10-16T00:00:00.000' AS DateTime), 0, CAST(N'1995-07-24T00:00:00.000' AS DateTime), N'25 Bobwhite Place', N'0291096135', N'pcarrett0@comsenz.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'697158776', NULL, 0, CAST(N'2020-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (10, N'EMP10', N'MacGahey', N'Zacherie', CAST(N'2017-04-10T00:00:00.000' AS DateTime), 0, CAST(N'1999-09-03T00:00:00.000' AS DateTime), N'15047 Mitchell Lane', N'0171877135', N'zmacgahey9@aol.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'347294300', NULL, 0, CAST(N'2019-12-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (11, N'EMP11', N'Spackman', N'Josiah', CAST(N'2017-07-25T00:00:00.000' AS DateTime), 0, CAST(N'1994-10-26T00:00:00.000' AS DateTime), N'28 Hovde Junction', N'0722573135', N'jspackmana@ameblo.jp', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'801367105', NULL, 0, CAST(N'2019-08-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (12, N'EMP12', N'Linford', N'Lorita', CAST(N'2019-03-02T00:00:00.000' AS DateTime), 1, CAST(N'1996-11-03T00:00:00.000' AS DateTime), N'061 Kensington Avenue', N'0613672135', N'llinfordb@marriott.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'558586365', NULL, 0, CAST(N'2019-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (13, N'EMP13', N'Vipan', N'Heath', CAST(N'2018-02-06T00:00:00.000' AS DateTime), 1, CAST(N'1992-09-17T00:00:00.000' AS DateTime), N'128 Summer Ridge Road', N'0893884135', N'hvipanc@theglobeandmail.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'764616774', NULL, 0, CAST(N'2019-08-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (14, N'EMP14', N'Hainge', N'Colene', CAST(N'2019-02-16T00:00:00.000' AS DateTime), 0, CAST(N'1995-01-20T00:00:00.000' AS DateTime), N'445 Kropf Hill', N'0107116135', N'chainged@xrea.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'979669601', NULL, 0, CAST(N'2020-01-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (15, N'EMP15', N'Escudier', N'Matilda', CAST(N'2018-11-15T00:00:00.000' AS DateTime), 0, CAST(N'1994-12-03T00:00:00.000' AS DateTime), N'7 Schurz Crossing', N'0904336135', N'mescudiere@sbwire.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'128449284', NULL, 0, CAST(N'2020-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (16, N'EMP16', N'Thorouggood', N'Noelani', CAST(N'2019-01-16T00:00:00.000' AS DateTime), 0, CAST(N'1997-12-11T00:00:00.000' AS DateTime), N'80282 Fairfield Center', N'0881237135', N'nthorouggoodf@go.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'129166694', NULL, 0, CAST(N'2019-09-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (17, N'EMP17', N'Himpson', N'Eleen', CAST(N'2016-12-20T00:00:00.000' AS DateTime), 1, CAST(N'1999-12-28T00:00:00.000' AS DateTime), N'27 Graceland Lane', N'0025460135', N'ehimpsong@reference.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'395490169', NULL, 0, CAST(N'2019-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (18, N'EMP18', N'Keemar', N'Agnesse', CAST(N'2018-01-08T00:00:00.000' AS DateTime), 1, CAST(N'1991-07-12T00:00:00.000' AS DateTime), N'29 Del Mar Point', N'0118187135', N'akeemarh@vistaprint.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'985126194', NULL, 0, CAST(N'2020-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (19, N'EMP19', N'Birnie', N'Karoline', CAST(N'2017-01-02T00:00:00.000' AS DateTime), 1, CAST(N'1992-04-06T00:00:00.000' AS DateTime), N'731 Mccormick Park', N'0809525135', N'kbirniei@wikia.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'444741105', NULL, 0, CAST(N'2020-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (2, N'EMP2', N'Gumme', N'Florenza', CAST(N'2017-02-07T00:00:00.000' AS DateTime), 1, CAST(N'1999-08-10T00:00:00.000' AS DateTime), N'6 Oak Place', N'0335758135', N'fgumme1@sciencedirect.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'504796462', NULL, 0, CAST(N'2019-12-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (20, N'EMP20', N'Kruszelnicki', N'Gavin', CAST(N'2019-05-29T00:00:00.000' AS DateTime), 0, CAST(N'1999-01-16T00:00:00.000' AS DateTime), N'18 Cordelia Pass', N'0463533135', N'gkruszelnickij@1und1.de', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'832359230', NULL, 0, CAST(N'2019-11-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (21, N'EMP21', N'Maudett', N'Eduard', CAST(N'2018-01-21T00:00:00.000' AS DateTime), 0, CAST(N'1999-10-22T00:00:00.000' AS DateTime), N'1 Montana Hill', N'0414040135', N'emaudettk@tinyurl.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'446940558', NULL, 0, CAST(N'2019-10-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (22, N'EMP22', N'Housegoe', N'Claudette', CAST(N'2018-06-04T00:00:00.000' AS DateTime), 0, CAST(N'1991-11-03T00:00:00.000' AS DateTime), N'35027 Saint Paul Alley', N'0705746135', N'chousegoel@oaic.gov.au', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'462755838', NULL, 0, CAST(N'2020-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (23, N'EMP23', N'Antonazzi', N'Kahlil', CAST(N'2017-09-19T00:00:00.000' AS DateTime), 0, CAST(N'2000-01-20T00:00:00.000' AS DateTime), N'7782 Victoria Road', N'0903187135', N'kantonazzim@utexas.edu', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'755249893', NULL, 0, CAST(N'2019-09-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (24, N'EMP24', N'Gaddesby', N'Buddie', CAST(N'2019-04-26T00:00:00.000' AS DateTime), 0, CAST(N'1993-05-21T00:00:00.000' AS DateTime), N'462 2nd Drive', N'0329938135', N'bgaddesbyn@example.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'781971260', NULL, 0, CAST(N'2020-04-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (25, N'EMP25', N'Ferres', N'Augusta', CAST(N'2016-12-15T00:00:00.000' AS DateTime), 1, CAST(N'1996-03-16T00:00:00.000' AS DateTime), N'0 Farragut Park', N'0400683135', N'aferreso@wikispaces.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'394757985', NULL, 0, CAST(N'2019-06-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (26, N'EMP26', N'Leyzell', N'Boony', CAST(N'2017-10-08T00:00:00.000' AS DateTime), 1, CAST(N'1996-12-10T00:00:00.000' AS DateTime), N'47155 Eagan Place', N'0921588135', N'bleyzellp@vkontakte.ru', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'331821394', NULL, 0, CAST(N'2019-12-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (27, N'EMP27', N'Gorgler', N'Elmer', CAST(N'2018-08-16T00:00:00.000' AS DateTime), 1, CAST(N'1996-06-28T00:00:00.000' AS DateTime), N'759 Darwin Way', N'0477547135', N'egorglerq@merriam-webster.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'525757225', NULL, 0, CAST(N'2019-08-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (28, N'EMP28', N'Dutnall', N'Enrico', CAST(N'2018-02-16T00:00:00.000' AS DateTime), 0, CAST(N'1991-09-12T00:00:00.000' AS DateTime), N'9 Erie Junction', N'0330964135', N'edutnallr@cargocollective.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'334584848', NULL, 0, CAST(N'2020-03-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (29, N'EMP29', N'Morigan', N'Chelsie', CAST(N'2018-01-22T00:00:00.000' AS DateTime), 0, CAST(N'1999-01-14T00:00:00.000' AS DateTime), N'2432 Loeprich Plaza', N'0925412135', N'cmorigans@last.fm', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'133455191', NULL, 0, CAST(N'2019-09-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (3, N'EMP3', N'Haddington', N'Kiersten', CAST(N'2017-08-09T00:00:00.000' AS DateTime), 0, CAST(N'1992-04-03T00:00:00.000' AS DateTime), N'136 Spenser Pass', N'0846266135', N'khaddington2@blog.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'746642400', NULL, 0, CAST(N'2020-05-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (30, N'EMP30', N'Flea', N'Tibold', CAST(N'2017-10-29T00:00:00.000' AS DateTime), 1, CAST(N'1997-09-28T00:00:00.000' AS DateTime), N'962 North Way', N'0357959135', N'tfleat@cdc.gov', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'409654898', NULL, 0, CAST(N'2019-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (4, N'EMP4', N'Eberz', N'Jody', CAST(N'2016-11-29T00:00:00.000' AS DateTime), 1, CAST(N'1996-12-10T00:00:00.000' AS DateTime), N'2 Burning Wood Court', N'0649117135', N'jeberz3@yandex.ru', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'263516235', NULL, 0, CAST(N'2020-05-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (5, N'EMP5', N'Mulliss', N'Mervin', CAST(N'2017-09-15T00:00:00.000' AS DateTime), 0, CAST(N'1993-07-01T00:00:00.000' AS DateTime), N'50185 Mccormick Junction', N'0869054135', N'mmulliss4@globo.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'511220667', NULL, 0, CAST(N'2019-07-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (6, N'EMP6', N'Gilderoy', N'Christos', CAST(N'2017-06-17T00:00:00.000' AS DateTime), 0, CAST(N'1999-07-17T00:00:00.000' AS DateTime), N'70 Packers Place', N'0721749135', N'cgilderoy5@dell.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'251074226', NULL, 0, CAST(N'2019-07-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (7, N'EMP7', N'Wyldes', N'Chaddie', CAST(N'2016-09-11T00:00:00.000' AS DateTime), 0, CAST(N'1994-06-05T00:00:00.000' AS DateTime), N'706 Packers Road', N'0622450135', N'cwyldes6@virginia.edu', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'976044535', NULL, 0, CAST(N'2019-07-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (8, N'EMP8', N'Pays', N'Cobbie', CAST(N'2019-01-22T00:00:00.000' AS DateTime), 0, CAST(N'1994-12-04T00:00:00.000' AS DateTime), N'25 Crowley Park', N'0835056135', N'cpays7@xinhuanet.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'119560234', NULL, 0, CAST(N'2019-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Staff] ([id], [StaffId], [StaffSurname], [StaffName], [BeginWork], [Sex], [DOB], [Address], [Phone], [Email], [Password], [Avatar], [Identification], [Power], [IsDeleted], [LastModified]) VALUES (9, N'EMP9', N'Natt', N'Julianna', CAST(N'2019-05-29T00:00:00.000' AS DateTime), 0, CAST(N'1995-12-05T00:00:00.000' AS DateTime), N'5 International Point', N'0093330135', N'jnatt8@canalblog.com', N'7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, N'941613060', NULL, 0, CAST(N'2020-03-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Staff] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (1, N'SPL1', N'Supplier 1', N'2148 Dunning Pass', N'0663084303', N'hfordyce0@engadget.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (10, N'SPL10', N'Supplier 10', N'926 Clarendon Drive', N'0962758321', N'tkembrey9@google.ca', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (11, N'SPL11', N'Supplier 11', N'411 Meadow Vale Pass', N'0044586797', N'rsustinsa@yahoo.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (12, N'SPL12', N'Supplier 12', N'2 Springview Trail', N'0443867652', N'dloraitb@google.com.au', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (13, N'SPL13', N'Supplier 13', N'7704 Stoughton Center', N'0268123194', N'adobyc@shareasale.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (14, N'SPL14', N'Supplier 14', N'12 Mitchell Crossing', N'0054684134', N'fberrowd@microsoft.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (15, N'SPL15', N'Supplier 15', N'05 Independence Junction', N'0647582666', N'edenselle@rediff.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (16, N'SPL16', N'Supplier 16', N'156 Lindbergh Junction', N'0313987925', N'dwhatlingf@github.io', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (17, N'SPL17', N'Supplier 17', N'1500 Lawn Avenue', N'0051278128', N'rgathwaiteg@nationalgeographic.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (18, N'SPL18', N'Supplier 18', N'72 Graedel Alley', N'0747687550', N'wchongh@disqus.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (19, N'SPL19', N'Supplier 19', N'98 Sutherland Plaza', N'0061338575', N'tmaccaguei@reverbnation.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (2, N'SPL2', N'Supplier 2', N'241 Merry Park', N'0843823045', N'rwitten1@nationalgeographic.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (20, N'SPL20', N'Supplier 20', N'110 Dexter Place', N'0905468016', N'emcnaej@jiathis.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (3, N'SPL3', N'Supplier 3', N'28919 Westridge Hill', N'0318046989', N'ehughill2@weibo.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (4, N'SPL4', N'Supplier 4', N'13820 Mesta Drive', N'0102342376', N'owickwar3@mozilla.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (5, N'SPL5', N'Supplier 5', N'3 Johnson Junction', N'0570655763', N'kbraney4@home.pl', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (6, N'SPL6', N'Supplier 6', N'21659 Golden Leaf Alley', N'0946450383', N'kbeldam5@wunderground.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (7, N'SPL7', N'Supplier 7', N'2 Milwaukee Circle', N'0749355162', N'eclemitt6@addthis.com', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (8, N'SPL8', N'Supplier 8', N'8 Superior Park', N'0496479584', N'ekahler7@upenn.edu', 0)
INSERT [dbo].[Supplier] ([id], [SupplierId], [SupplierName], [Address], [Phone], [Email], [IsDeleted]) VALUES (9, N'SPL9', N'Supplier 9', N'9274 Melrose Parkway', N'0378189330', N'rsterling8@epa.gov', 0)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
ALTER TABLE [dbo].[GoodsReceiptedNote]  WITH CHECK ADD  CONSTRAINT [FK_GoodsReceiptedNote_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
GO
ALTER TABLE [dbo].[GoodsReceiptedNote] CHECK CONSTRAINT [FK_GoodsReceiptedNote_Supplier]
GO
ALTER TABLE [dbo].[GoodsReceiptedNoteDetail]  WITH CHECK ADD  CONSTRAINT [FK_GoodReceiptedNoteDetail_GoodsReceiptedNote] FOREIGN KEY([ReceiptNoteId])
REFERENCES [dbo].[GoodsReceiptedNote] ([ReceiptNoteId])
GO
ALTER TABLE [dbo].[GoodsReceiptedNoteDetail] CHECK CONSTRAINT [FK_GoodReceiptedNoteDetail_GoodsReceiptedNote]
GO
ALTER TABLE [dbo].[GoodsReceiptedNoteDetail]  WITH CHECK ADD  CONSTRAINT [FK_GoodsReceiptedNoteDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[GoodsReceiptedNoteDetail] CHECK CONSTRAINT [FK_GoodsReceiptedNoteDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Discount] FOREIGN KEY([DiscountId])
REFERENCES [dbo].[Discount] ([DiscountId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Discount]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Staff]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Catalogs] FOREIGN KEY([CatalogId])
REFERENCES [dbo].[Catalogs] ([CatalogId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Catalogs]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Product]
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_AGE_ASC]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_AGE_ASC]
AS
BEGIN
	SELECT CustomerId, CustomerSurname, CustomerName, YEAR(GETDATE())-YEAR(DOB) AS Age, Phone, Email,Sex
	FROM Customer
	WHERE IsDeleted=0
	ORDER BY YEAR(GETDATE())-YEAR(DOB) ASC
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_AGE_BETWEEN]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_AGE_BETWEEN]
	@a INT =NULL,
	@b INT = Null
AS
BEGIN
	SELECT CustomerId, CustomerSurname, CustomerName , YEAR(GETDATE())-YEAR(DOB) AS Age
	FROM Customer
	WHERE (YEAR(GETDATE())-YEAR(DOB) BETWEEN @a AND @b )
	and (IsDeleted=0)
	ORDER BY Age
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_DELETE]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_DELETE]
	@id VARCHAR(50) =NULL
AS
BEGIN
	UPDATE Customer
	SET IsDeleted=1
	WHERE CustomerId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_FIND_NAME]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_FIND_NAME]
	@name Nvarchar(200)= null
AS
BEGIN
SELECT CustomerId, CustomerSurname, CustomerName, Sex, DOB, Phone, Email, CusAddress, Avatar
FROM Customer
WHERE CustomerName like '%'+@name+'%' and IsDeleted=0
ORDER BY CustomerName
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_INSERT]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_INSERT]
	@CustomerId bigint,
	@CustomerSurname nvarchar(200),
	@CustomerName nvarchar(200),
	@Phone varchar(20),
	@Email varchar(20),
	@CusAddress nvarchar(200),
	@Avatar image,
	@Sex tinyint,
	@DOB datetime
AS
	BEGIN 
	set identity_insert dbo.Customer OFF
	INSERT INTO Customer (CustomerId, CustomerSurname, CustomerName,Phone, Email,
						CusAddress,Avatar, Sex,DOB, IsDeleted, LastModified)
	VALUES (@CustomerId, @CustomerSurname, @CustomerName, @Phone, @Email, 
		@CusAddress, @Avatar, @Sex, @DOB, 0, GETDATE())
	END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_LIST_CURRENTDOB]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_LIST_CURRENTDOB]
AS
BEGIN
	SELECT CustomerId, CustomerSurname, CustomerName, DOB, Sex, Phone, Email, CusAddress 
	FROM Customer
	WHERE DATEPART(m, DOB) = DATEPART(m, GETDATE())
	and IsDeleted=0
	ORDER BY CONVERT(INT,SUBSTRING(CustomerId,4,10))
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_OLDEST_AGE]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_OLDEST_AGE]
AS
BEGIN
	SELECT CustomerId, CustomerSurname, CustomerName, YEAR(GETDATE())-YEAR(DOB) as OldestAge
	FROM Customer
	WHERE IsDeleted=0 and YEAR(GETDATE())-YEAR(DOB) >= ALL (SELECT YEAR(GETDATE())-YEAR(DOB)
	FROM Customer)
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_ORDERS]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CUSTOMER_ORDERS] 
@customerid VARCHAR(50)
AS
BEGIN
	SELECT Customer.CustomerName, Orders.OrderId,TotalValue,TotalQuantity, DiscountId
	FROM Orders
	INNER JOIN Customer ON Customer.CustomerId= Orders.CustomerId
	WHERE Orders.CustomerId=@customerid
	and Customer.IsDeleted=0
	and Orders.IsDeleted=0
	ORDER BY CONVERT(INT,SUBSTRING(Orders.OrderId,4,10))
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_READ]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_READ]
	@id VARCHAR(50) =NULL
AS
BEGIN
	SELECT CustomerSurname, CustomerName, Phone, Email,
	CusAddress, Avatar, Sex, DOB
	FROM Customer
	WHERE CustomerId=@id 
	and IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_SELECTALL]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_SELECTALL]
AS
	BEGIN
		SELECT*FROM dbo.Customer
		WHERE IsDeleted=0
		ORDER BY CONVERT(INT,SUBSTRING(CustomerId,4,10))
	END
GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_TOTAL_ORDERS]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_TOTAL_ORDERS]
@a DATETIME =null,
@b DATETIME = null
AS
BEGIN
  SELECT Customer.CustomerId, Customer.CustomerSurname, Customer.CustomerName,
  COUNT(Orders.OrderId) as 'Số hóa đơn', SUM(Orders.TotalValue) as 'Tổng giá trị'
  FROM Customer
  JOIN Orders ON Customer.CustomerId = Orders.CustomerId
  where Orders.CreateDate between @a and @b 
  and Customer.IsDeleted=0
  group by Customer.CustomerId, Customer.CustomerSurname, Customer.CustomerName  
  order by CONVERT(INT,SUBSTRING(Customer.CustomerId,4,10))
END
--XUất tổng hóa đơn, giá trị tổng mà khách hàng đã mua trong khoảng thời gian từ A đến B


GO
/****** Object:  StoredProcedure [dbo].[CUSTOMER_UPDATE_ALL]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CUSTOMER_UPDATE_ALL]
	@CustomerId varchar(50),
	@CustomerSurname nvarchar(200),
	@CustomerName nvarchar (200),
	@Phone varchar(20),
	@Email varchar(20),
	@CusAddress nvarchar(200),
	@Avatar image,
	@Sex tinyint, 
	@DOB datetime
	as
	BEGIN
	UPDATE Customer set
	    CustomerSurname=@CustomerSurname, 
		CustomerName=@CustomerName, Phone=@Phone, Email=@Email, 
		CusAddress=@CusAddress, Avatar=@Avatar, Sex=@Sex, DOB=@DOB, 
		LastModified=GETDATE()
WHERE CustomerId=@CustomerId
END 
GO
/****** Object:  StoredProcedure [dbo].[GOODSRECEIPTNOTE_List_AtoB]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GOODSRECEIPTNOTE_List_AtoB]
@DayA DATETIME =null,
@DayB DATETIME=null
AS
BEGIN
  SELECT GoodsReceiptedNote.ReceiptNoteId,
  Supplier.SupplierName, 
  GoodsReceiptedNote.InputDate,
  GoodsReceiptedNote.TotalValue,
  GoodsReceiptedNote.TransferCost
  FROM GoodsReceiptedNote
  INNER JOIN Supplier ON Supplier.SupplierId= GoodsReceiptedNote.SupplierId
  WHERE GoodsReceiptedNote.InputDate between @DayA and @DayB
  and GoodsReceiptedNote.IsDeleted=0
END
-- Tất cả thông tin về các GRN trong khoảng thời gian từ ngày A đến B

GO
/****** Object:  StoredProcedure [dbo].[GOODSRECEIPTNOTE_LIST_CATALOGS_YearA]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GOODSRECEIPTNOTE_LIST_CATALOGS_YearA]
@nam INT =null
AS
BEGIN
	SELECT Catalogs.CatalogId, Catalogs.CatalogName,
	SUM( A.TongSLNhap) as TongSLSPNhap,
	SUM( A.TongGTNHap) as TongGTSPNhap
	FROM
		(SELECT GoodsReceiptedNoteDetail.ProductId, Product.CatalogId, 
		SUM( GoodsReceiptedNote.TotalValue) as TongGTNHap,
		COUNT(GoodsReceiptedNoteDetail.ProductId) AS SoLanNhap,
		SUM(GoodsReceiptedNoteDetail.Quantity) AS TongSLNhap
		FROM GoodsReceiptedNote
		JOIN GoodsReceiptedNoteDetail ON GoodsReceiptedNote.ReceiptNoteId=GoodsReceiptedNoteDetail.ReceiptNoteId
		JOIN Product ON Product.ProductId= GoodsReceiptedNoteDetail.ProductId
		WHERE YEAR(GoodsReceiptedNote.InputDate)=@nam
		GROUP BY GoodsReceiptedNoteDetail.ProductId, Product.CatalogId
		) AS A
	INNER JOIN Catalogs ON A.CatalogId = Catalogs.CatalogId
	GROUP BY Catalogs.CatalogId, Catalogs.CatalogName
	ORDER BY CONVERT(INT,SUBSTRING(Catalogs.CatalogId,4,10))
END
--Catalog nào được nhập hàng trong năm A tự chọn





GO
/****** Object:  StoredProcedure [dbo].[GOODSRECEIPTNOTE_LIST_PRODUCT_YearA]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GOODSRECEIPTNOTE_LIST_PRODUCT_YearA]
@nam INT =null
AS
BEGIN
	SELECT GoodsReceiptedNoteDetail.ProductId, Product.ProductName,
	COUNT(GoodsReceiptedNoteDetail.ProductId) AS SoLanNhap,
	SUM(GoodsReceiptedNoteDetail.Quantity) AS TongSLNhap
	FROM GoodsReceiptedNote
	JOIN GoodsReceiptedNoteDetail ON GoodsReceiptedNote.ReceiptNoteId=GoodsReceiptedNoteDetail.ReceiptNoteId
	JOIN Product ON Product.ProductId= GoodsReceiptedNoteDetail.ProductId
	WHERE YEAR(GoodsReceiptedNote.InputDate)=@nam
	GROUP BY GoodsReceiptedNoteDetail.ProductId, Product.ProductName
	ORDER BY CONVERT(INT,SUBSTRING(GoodsReceiptedNoteDetail.ProductId,2,10))
END
--thông tin về sản phẩm được nhập trong năm A




GO
/****** Object:  StoredProcedure [dbo].[GOOODSRECEIPTNOTE_READ]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GOOODSRECEIPTNOTE_READ]
	@id VARCHAR(50) =NULL
AS
BEGIN
	SELECT ReceiptNoteId, TotalValue,TransferCost, SupplierName,InputDate 
	FROM GoodsReceiptedNote
	INNER JOIN Supplier ON Supplier.SupplierId= GoodsReceiptedNote.SupplierId
	WHERE ReceiptNoteId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[GOOODSRECEIPTNOTE_UPDATE]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GOOODSRECEIPTNOTE_UPDATE]
	@id VARCHAR(50) =NULL,
	@value FLOAT=NULL,
	@inputdate DATETIME=NULL,
	@transfercost FLOAT=null
AS
BEGIN
	UPDATE GoodsReceiptedNote
	SET GoodsReceiptedNote.TotalValue=@value,
	GoodsReceiptedNote.InputDate=@inputdate,
	GoodsReceiptedNote.TransferCost= @transfercost
	WHERE GoodsReceiptedNote.ReceiptNoteId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[ORDERS_LISTFROM_A_TO_B]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ORDERS_LISTFROM_A_TO_B]
@a datetime = null,
@b datetime= null
AS
BEGIN
  SELECT Orders.OrderId,Customer.CustomerSurname, Customer.CustomerName, 
  Orders.CreateDate,Orders.TotalValue
  FROM Orders
  INNER JOIN Customer on Orders.CustomerId= Customer.CustomerId
  where Orders.CreateDate between @a and @b
  ORDER BY CONVERT(INT,SUBSTRING(Orders.OrderId,4,10))
END
-- Danh sách các Order trong khoảng thời gian từ A đến B
GO
/****** Object:  StoredProcedure [dbo].[ORDERS_PRODUCT_IN_ORDER_A]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ORDERS_PRODUCT_IN_ORDER_A]
@id VARCHAR(50)=NULL
AS
BEGIN
  SELECT OrderDetail.OrderId,Product.ProductName, OrderDetail.Size,
  OrderDetail.Quantity, OrderDetail.OutputPrice
  FROM OrderDetail
  INNER JOIN Product ON OrderDetail.ProductId= Product.ProductId
  where OrderId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[ORDERS_PRODUCTSold_DateAtoB]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ORDERS_PRODUCTSold_DateAtoB]
@a DATETIME= null,
@b DATETIME=null
AS
BEGIN
  SELECT Product.ProductId, Product.ProductName,
  SUM(OrderDetail.Quantity) as 'Tổng số lượng đã bán',
  SUM(OrderDetail.OutputPrice) as 'Tổng giá trị'
  FROM OrderDetail
  JOIN Orders ON Orders.OrderId= OrderDetail.OrderId
  JOIN Product ON Product.ProductId= OrderDetail.ProductId
  where Orders.CreateDate between @a and @b
  group by Product.ProductId, Product.ProductName
  
  ORDER BY CONVERT(INT,SUBSTRING(Product.ProductId,2,10))
END
GO
/****** Object:  StoredProcedure [dbo].[ORDERS_STATUS]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ORDERS_STATUS]
	@id VARCHAR(50) =NULL
AS
BEGIN
	UPDATE Orders
	SET Status=1
	WHERE OrderId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[PRODUCT_DELETE]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PRODUCT_DELETE]
	@id VARCHAR(50) =NULL
AS
BEGIN
	UPDATE Product
	SET IsDeleted=1
	WHERE ProductId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[PRODUCT_INFORMATION_OF_EACH]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PRODUCT_INFORMATION_OF_EACH]
@id varchar(50) = null
AS
BEGIN
	SELECT 
	Product.ProductName,
	Product.OutputPrice,
	Product.Quantity,
	Product.ProductImage
	FROM Product
	WHERE Product.ProductId= @id
END



GO
/****** Object:  StoredProcedure [dbo].[PRODUCT_LIST_INFORMATION]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PRODUCT_LIST_INFORMATION]
AS
BEGIN
	SELECT Catalogs.CatalogName, Product.ProductName,
	Product.OutputPrice, Product.Quantity
	FROM Product
	INNER JOIN Catalogs ON Product.CatalogId= Catalogs.CatalogId
	WHERE Product.IsDeleted=0 and Catalogs.IsDeleted=0
	Order by CONVERT(INT,SUBSTRING(Catalogs.CatalogId,4,10)), CONVERT(INT,SUBSTRING(Product.ProductId,2,10))
END





GO
/****** Object:  StoredProcedure [dbo].[PRODUCT_READ]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PRODUCT_READ]
	@id VARCHAR(50) =NULL
AS
BEGIN
	SELECT ProductName, Barcode, OutputPrice, ProductImage
	FROM Product
	WHERE ProductId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[PRODUCT_UPDATE]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PRODUCT_UPDATE]
	@id VARCHAR(50) =NULL,
	@name NVARCHAR(200)= NULL,
	@Price FLOAT =NULL,
	@image IMAGE=NULL
AS
BEGIN
	UPDATE Product
	SET ProductName=@name, OutputPrice=@Price,
	ProductImage=@image
	WHERE ProductId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_BESTSELLER]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_BESTSELLER]
	AS
	BEGIN
SELECT Staff.StaffId, Staff.StaffSurname, Staff.StaffName, SUM (Quantity) as Quantity
		FROM Staff 
		INNER JOIN Orders ON Staff.StaffId=Orders.StaffId
		INNER JOIN OrderDetail ON Orders.OrderId= OrderDetail.OrderId
		WHERE Staff.IsDeleted=0 
		GROUP BY Staff.StaffId, Staff.StaffSurname, Staff.StaffName
		HAVING SUM(Quantity) >= ALL (SELECT SUM(Quantity)
		FROM (Staff INNER JOIN Orders
			ON Staff.StaffId=Orders.StaffId)
			INNER JOIN OrderDetail ON Orders.OrderId=OrderDetail.OrderId
		GROUP BY Staff.StaffId, Staff.StaffSurname,Staff.StaffName)
	END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_CHECKLOGIN]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_CHECKLOGIN]
	@email varchar(200) = NULL, 
	@password varchar(200) = NULL
AS
BEGIN
	SELECT Staff.Email, Staff.Password
	FROM Staff
	WHERE Staff.IsDeleted=0 and
	Staff.Email=@email and Staff.Password=@password
END

GO
/****** Object:  StoredProcedure [dbo].[STAFF_DELETE]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_DELETE]
@id nvarchar(50)=null
AS
BEGIN
	UPDATE Staff
	SET IsDeleted=1
	WHERE Staff.StaffId=@id
END

GO
/****** Object:  StoredProcedure [dbo].[STAFF_DOB_CURRENTMONTH]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_DOB_CURRENTMONTH]
	AS
	BEGIN
		SELECT StaffId, StaffSurname,StaffName, DOB, Sex, Phone,Email
		FROM Staff
		WHERE Staff.IsDeleted=0 and 
		DATEPART(m, DOB) = DATEPART(m, GETDATE())
		ORDER BY DOB
	END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_FIND_NAME]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_FIND_NAME]
	@name Nvarchar(200)= null
AS
BEGIN
SELECT *
FROM Staff
WHERE (Staff.IsDeleted=0) and 
(StaffName like '%'+@name+'%' or StaffSurname like '%'+@name+'%')
ORDER BY StaffName,StaffSurname
END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_INSERT]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_INSERT]
	@staffsurname nvarchar(200) =null,
	@staffname nvarchar(200)=null,
	@beginwork datetime =null,
	@Sex tinyint = null,
	@DOB datetime=null,
	@email varchar(200) = NULL, 
	@password varchar(200) = NULL
AS
BEGIN
	INSERT INTO Staff
	 (StaffSurname, StaffName,BeginWork,Sex,DOB,Email,Password,IsDeleted, LastModified)
     VALUES
	 (@staffsurname,@staffname,@beginwork,@Sex,@DOB,@email,@password,0,GETDATE())
END

GO
/****** Object:  StoredProcedure [dbo].[STAFF_ORDERS]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_ORDERS]
	AS
	BEGIN
		SELECT Staff.StaffSurname, Staff.StaffName,
		COUNT(Orders.OrderId) as TongDonHang
		FROM Staff
		JOIN Orders ON Staff.StaffId=Orders.StaffId
		where Staff.IsDeleted=0
		GROUP BY Staff.StaffSurname, Staff.StaffName
		ORDER BY Staff.StaffName,Staff.StaffSurname
	END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_ORDERS_inPERIOD]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_ORDERS_inPERIOD]
	@month INT =null,
	@year INT = null
	AS
	BEGIN
		SELECT Staff.StaffSurname, Staff.StaffName,
		COUNT(Orders.OrderId) as TongDonHang
		FROM Staff
		JOIN Orders ON Staff.StaffId=Orders.StaffId
		WHERE MONTH(Orders.CreateDate)=@month and YEAR(Orders.CreateDate)=@year
		and Staff.IsDeleted=0
		GROUP BY Staff.StaffSurname, Staff.StaffName
		ORDER BY Staff.StaffName,Staff.StaffSurname
	END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_READ]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_READ]
	@id VARCHAR(50) =NULL
AS
BEGIN
	SELECT StaffSurname, StaffName, 
	BeginWork, Sex, DOB, Address, Phone,
	Email, Avatar, Power
	FROM Staff
	WHERE Staff.StaffId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_SELECTALL]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_SELECTALL]
AS
BEGIN
	SELECT StaffSurname, StaffName, Sex, DOB,
	Address, Phone, Power
	FROM Staff
	WHERE Staff.IsDeleted=0
	ORDER BY Staff.StaffName, Staff.StaffSurname ASC
END

GO
/****** Object:  StoredProcedure [dbo].[STAFF_TOTAL]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_TOTAL]
	AS
	BEGIN
		SELECT  COUNT(StaffId) as TotalStaffs
		FROM dbo.Staff
		WHERE Staff.IsDeleted=0
	END
GO
/****** Object:  StoredProcedure [dbo].[STAFF_UPDATE_ALL]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_UPDATE_ALL]
	@staffsurname nvarchar(200) =null,
	@staffname nvarchar(200)=null,
	@Sex tinyint = null,
	@DOB datetime=null,
	@email varchar(200) = NULL, 
	@password varchar(200) = NULL
AS
BEGIN
     IF(@password = '') 
	     BEGIN 
	     UPDATE Staff  
	     SET   StaffSurname=@staffsurname,StaffName=@staffname,Sex=@Sex,DOB=@DOB,
		 LastModified=GETDATE()
         WHERE Email=@email
		 END
	 ELSE 
	     BEGIN
	     UPDATE Staff 
	     SET StaffSurname=@staffsurname,StaffName=@staffname,Sex=@Sex,DOB=@DOB,Password=@password,
		 LastModified=GETDATE()
         WHERE Email=@email
		 END	 
END

GO
/****** Object:  StoredProcedure [dbo].[STAFF_UPDATE_PASS]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STAFF_UPDATE_PASS]
	@email VARCHAR(200)=NULL,
	@password VARCHAR(200)=NULL
AS
BEGIN
UPDATE Staff
SET Password=@password, LastModified=GETDATE()
WHERE Email=@email
END

GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_CATALOG_STOCK]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_CATALOG_STOCK]
AS
BEGIN
	SELECT Catalogs.CatalogId, Catalogs.CatalogName,
	COUNT(Product.ProductId) as SoSanPham, 
	SUM(Product.Quantity) as TongSanPham,
	SUM(Product.OutputPrice) as TongGiaTri,
	SUM(Product.OutputPrice)/COUNT(Product.ProductId) as DonGiaBinhQuan
	FROM Catalogs
	INNER JOIN Product ON Catalogs.CatalogId=Product.CatalogId
	WHERE Product.IsDeleted=0 and Catalogs.IsDeleted=0
	Group by Catalogs.CatalogId, Catalogs.CatalogName
	Order by CONVERT(INT,SUBSTRING(Catalogs.CatalogId,4,10))
END



GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_COST_YEAR_A]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_COST_YEAR_A]
@nam INT =null
AS
BEGIN
	SELECT @nam as Nam, 
	SUM(GoodsReceiptedNote.TotalValue) AS TongTienMua, 
	SUM(GoodsReceiptedNote.TransferCost) AS TongTienVanChuyen
	FROM GoodsReceiptedNote
	WHERE YEAR(GoodsReceiptedNote.InputDate)=@nam
END





GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_CUSTOMER_TOTAL]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_CUSTOMER_TOTAL]
AS
BEGIN
	SELECT  COUNT (CustomerId) as TotalCustomer
	FROM dbo.Customer
	WHERE Customer.IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_GRN_COMPANY_CONSUMES]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STATISTIC_GRN_COMPANY_CONSUMES] 
@year INT = NULL
AS 
BEGIN
	SELECT Supplier.SupplierId, SupplierName, SUM(TotalValue) AS TONGGIATRINHAP FROM dbo.Supplier, dbo.GoodsReceiptedNote
	WHERE Supplier.SupplierId = GoodsReceiptedNote.SupplierId AND YEAR(InputDate) = @year
	GROUP BY Supplier.SupplierId, SupplierName
	ORDER BY CONVERT(INT,SUBSTRING(Supplier.SupplierId,4,10))
END
GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_PRODUCT_7_TOP]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STATISTIC_PRODUCT_7_TOP]
AS
BEGIN
	SELECT TOP 7 A.ProductId, A.ProductName,Product.ProductImage, Supplier.SupplierName, A.SoLanXuatHien,
	A.SoLuongDaBan
	FROM
		(SELECT Product.ProductId,Product.ProductName, Product.SupplierId,
		COUNT( OrderDetail.ProductId) as SoLanXuatHien, 
		SUM(OrderDetail.Quantity) as SoLuongDaBan
		FROM OrderDetail
		JOIN Product ON OrderDetail.ProductId= Product.ProductId
		GROUP BY Product.ProductId,Product.ProductName, Product.SupplierId) AS A
	INNER JOIN Supplier ON A.SupplierId= Supplier.SupplierId
	INNER JOIN Product ON A.ProductId=Product.ProductId
	ORDER BY A.SoLuongDaBan DESC, A.SoLanXuatHien DESC,CONVERT(INT,SUBSTRING(A.ProductId,2,10))
END
GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_PRODUCT_BY_EACH_CUSTOMER]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STATISTIC_PRODUCT_BY_EACH_CUSTOMER]
	@customer VARCHAR(50)
AS
BEGIN
	SELECT CustomerId, SupplierId ,LA.OrderId, LA.ProductId, LA.Quantity, LA.InputPrice,
		LA.InputDate, LA.Goods_value
	FROM dbo.Orders INNER JOIN
	(
		SELECT SupplierId ,LL.OrderId, LL.ProductId, LL.Quantity, LL.ReceiptNoteId, InputPrice,
		InputDate, (LL.InputPrice*LL.Quantity) AS Goods_value FROM 
		(
			SELECT OrderDetail.OrderId, OrderDetail.ProductId, OrderDetail.Quantity, ReceiptNoteId,InputPrice 
			FROM dbo.OrderDetail, dbo.GoodsReceiptedNoteDetail
			WHERE OrderDetail.ProductId =GoodsReceiptedNoteDetail.ProductId
		) AS LL, dbo.GoodsReceiptedNote
		WHERE GoodsReceiptedNote.ReceiptNoteId = LL.ReceiptNoteId
	) AS LA ON LA.OrderId = Orders.OrderId
	WHERE CustomerId = 'CUS1'
	ORDER BY CONVERT(INT,SUBSTRING(SupplierId,4,10)),CONVERT(INT,SUBSTRING(LA.OrderId,4,10)),
	CONVERT(INT,SUBSTRING(LA.ProductId,2,10))
END
--List out a list of goods bought from a particular customer. This list contains these
--attributes: supplier id, product id, product name, input date, quantity, transfer value.
GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_PRODUCT_IN_ORDERS]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[STATISTIC_PRODUCT_IN_ORDERS] 
AS
BEGIN
	SELECT A.ProductId, A.ProductName, Supplier.SupplierName, A.SoLanXuatHien,
	A.SoLuongDaBan
	FROM
		(SELECT Product.ProductId,Product.ProductName, Product.SupplierId,
		COUNT( OrderDetail.ProductId) as SoLanXuatHien, 
		SUM(OrderDetail.Quantity) as SoLuongDaBan
		FROM OrderDetail
		JOIN Product ON OrderDetail.ProductId= Product.ProductId
		GROUP BY Product.ProductId,Product.ProductName, Product.SupplierId) AS A
	INNER JOIN Supplier ON A.SupplierId= Supplier.SupplierId
	ORDER BY CONVERT(INT,SUBSTRING(A.ProductId,2,10))
END
GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_PROFIT_MonthA_YearB]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_PROFIT_MonthA_YearB]
@thang INT=null,
@nam INT=null
AS
BEGIN
  SELECT  A.TongThu- B.Chi1-B.Chi2  as DoanhThu
  from
  (SELECT SUM(Orders.TotalValue) as TongThu
  FROM Orders
  where YEAR(Orders.CreateDate)=@nam
  and MONTH(Orders.CreateDate)=@thang) 
  as A,
  (SELECT SUM(GoodsReceiptedNote.TotalValue) as Chi1,SUM(GoodsReceiptedNote.TransferCost) as Chi2
  FROM GoodsReceiptedNote
  where YEAR(GoodsReceiptedNote.InputDate)=@nam
  and MONTH(GoodsReceiptedNote.InputDate)=@thang) 
  as B
  
END


GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_PROFIT_YEAR_A]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_PROFIT_YEAR_A]
@nam INT=null
AS
BEGIN
  SELECT @nam as Nam,A.TongThu as TongThu, B.Chi1+B.Chi2 as TongChi,
  A.TongThu- B.Chi1-B.Chi2  as DoanhThu
  from
  (SELECT SUM(Orders.TotalValue) as TongThu
  FROM Orders
  where YEAR(Orders.CreateDate)=@nam) 
  as A,
  (SELECT SUM(GoodsReceiptedNote.TotalValue) as Chi1,SUM(GoodsReceiptedNote.TransferCost) as Chi2
  FROM GoodsReceiptedNote
  where YEAR(GoodsReceiptedNote.InputDate)=@nam) 
  as B
END


GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_Revenue_Follow_Catagogy]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_Revenue_Follow_Catagogy]
AS
BEGIN
  SELECT Catalogs.CatalogId, Catalogs.CatalogName,
  COUNT(OrderDetail.ProductId) as TongSanPhamDaBan, SUM (OrderDetail.OutputPrice) as TongDoanhThu
  FROM Product
  JOIN Catalogs ON Catalogs.CatalogId=Product.CatalogId
  JOIN OrderDetail ON OrderDetail.ProductId= Product.ProductId
  Group by Catalogs.CatalogId, Catalogs.CatalogName
  Order by CONVERT(INT,SUBSTRING(Catalogs.CatalogId,4,10))
END






GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_STAFFS_OVER_N_MONTHS]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_STAFFS_OVER_N_MONTHS]
	@N INT= NULL
	AS
	BEGIN
		SELECT StaffSurname, StaffName, Sex, DOB, Address, Phone, Avatar, [BeginWork]
		FROM Staff
		WHERE MONTH([BeginWork]) - MONTH(GETDATE()) >=@N
		and Staff.IsDeleted=0
		ORDER BY StaffName, StaffSurname
	END
GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_SUPPLIERS_New6Months]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STATISTIC_SUPPLIERS_New6Months]
AS
BEGIN
	SELECT Supplier.SupplierId, Supplier.SupplierName,
	Supplier.Address, Supplier.Phone, Supplier.Email
	FROM Supplier
	INNER JOIN GoodsReceiptedNote ON Supplier.SupplierId= GoodsReceiptedNote.SupplierId
	WHERE GoodsReceiptedNote.InputDate > GETDATE() - 180
	and Supplier.IsDeleted=0
	GROUP BY Supplier.SupplierId, Supplier.SupplierName,
	Supplier.Address, Supplier.Phone, Supplier.Email
	Order by CONVERT(INT,SUBSTRING(Supplier.SupplierId,4,10))
END
GO
/****** Object:  StoredProcedure [dbo].[STATISTIC_TotalRevenue_InMonthA]    Script Date: 05-Jun-20 10:21:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[STATISTIC_TotalRevenue_InMonthA]
@nam INT = NULL
AS
BEGIN
  SELECT MONTH(Orders.CreateDate) as 'Tháng', SUM(Orders.TotalValue) as 'Tổng giá trị'
  FROM Orders
  where YEAR(Orders.CreateDate)=@nam
  group by MONTH(Orders.CreateDate)
END






GO
USE [master]
GO
ALTER DATABASE [QLKD_ThoiTrang] SET  READ_WRITE 
GO
