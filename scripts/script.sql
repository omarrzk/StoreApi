USE [master]
GO
/****** Object:  Database [aspnet-SpinIt.Web-0C7CC9A5]    Script Date: 25/11/2021 19:10:15 ******/
CREATE DATABASE [aspnet-SpinIt.Web-0C7CC9A5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-SpinIt.Web-0C7CC9A5', FILENAME = N'C:\Users\deck\aspnet-SpinIt.Web-0C7CC9A5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-SpinIt.Web-0C7CC9A5_log', FILENAME = N'C:\Users\deck\aspnet-SpinIt.Web-0C7CC9A5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-SpinIt.Web-0C7CC9A5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET QUERY_STORE = OFF
GO
USE [aspnet-SpinIt.Web-0C7CC9A5]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [aspnet-SpinIt.Web-0C7CC9A5]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstNames] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
	[DateofBirth] [datetime2](7) NOT NULL,
	[Mobile] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[GameDayID] [int] NOT NULL,
	[GameTypeID] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Amount] [float] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[No1] [int] NULL,
	[No2] [int] NULL,
	[No3] [int] NULL,
	[No4] [int] NULL,
	[No5] [int] NULL,
	[No6] [int] NULL,
	[No7] [int] NULL,
	[No8] [int] NULL,
	[No9] [int] NULL,
	[No10] [int] NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerActivation]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerActivation](
	[UserID] [nvarchar](450) NOT NULL,
	[Activation] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CustomerActivation] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favourite]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favourite](
	[FavouriteID] [int] IDENTITY(1,1) NOT NULL,
	[GameDayID] [int] NOT NULL,
	[GameTypeID] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Remarks] [nvarchar](max) NULL,
	[No1] [int] NULL,
	[No2] [int] NULL,
	[No3] [int] NULL,
	[No4] [int] NULL,
	[No5] [int] NULL,
	[No6] [int] NULL,
	[No7] [int] NULL,
	[No8] [int] NULL,
	[No9] [int] NULL,
	[No10] [int] NULL,
 CONSTRAINT [PK_Favourite] PRIMARY KEY CLUSTERED 
(
	[FavouriteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameCounts]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameCounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_GameCounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameDays]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameDays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[GameDate] [datetime2](7) NOT NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_GameDays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[CloseDate] [datetime2](7) NOT NULL,
	[GameDayId] [int] NULL,
	[GameCountId] [int] NULL,
	[StatusId] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[No1] [int] NULL,
	[No2] [int] NULL,
	[No3] [int] NULL,
	[No4] [int] NULL,
	[No5] [int] NULL,
	[No6] [int] NULL,
	[No7] [int] NULL,
	[No8] [int] NULL,
	[No9] [int] NULL,
	[No10] [int] NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameTypes]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[MiniNumbers] [int] NOT NULL,
	[MaxNumbers] [int] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_GameTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[OrderLineID] [int] IDENTITY(1,1) NOT NULL,
	[GameStatusId] [int] NOT NULL,
	[TransactionDate] [datetime2](7) NOT NULL,
	[GameDayID] [int] NOT NULL,
	[GameTypeID] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Amount] [decimal](18, 2) NULL,
	[OrderID] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[No1] [int] NULL,
	[No2] [int] NULL,
	[No3] [int] NULL,
	[No4] [int] NULL,
	[No5] [int] NULL,
	[No6] [int] NULL,
	[No7] [int] NULL,
	[No8] [int] NULL,
	[No9] [int] NULL,
	[No10] [int] NULL,
 CONSTRAINT [PK_OrderLine] PRIMARY KEY CLUSTERED 
(
	[OrderLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NULL,
	[OrderTotal] [decimal](18, 2) NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[GrossTotal] [float] NOT NULL,
	[InvoiceNumber] [int] NOT NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PayerFirstName] [nvarchar](max) NULL,
	[PaymentFee] [float] NOT NULL,
	[BusinessEmail] [nvarchar](max) NULL,
	[PayerEmail] [nvarchar](max) NULL,
	[TxToken] [nvarchar](max) NULL,
	[ReceiverEmail] [nvarchar](max) NULL,
	[Currency] [nvarchar](max) NULL,
	[TransactionId] [nvarchar](max) NULL,
	[Custom] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picture]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[PictureID] [int] IDENTITY(1,1) NOT NULL,
	[GameDayId] [nvarchar](max) NULL,
	[FileName] [nvarchar](255) NULL,
	[isDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[PictureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefreshTokens]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshTokens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[Token] [nvarchar](max) NULL,
	[JwtID] [nvarchar](max) NULL,
	[IsUsed] [bit] NOT NULL,
	[IsRevoked] [bit] NOT NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[ExpiryDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_RefreshTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 25/11/2021 19:10:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211003200231_refreshtoken', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211003200503_refreshtoken1', N'5.0.10')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstNames], [LastName], [PasswordSalt], [DateofBirth], [Mobile], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ab5e8c06-ad91-46dd-91cb-fe95c7d375ec', N'decklon', N'alumi', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'024785693', N'decklon', N'DECKLON', N'decklon@gmail.com', N'DECKLON@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEECwsEsG+dSqfs6ODV+c+zae8msWGgvltKHBeTUeOmcADXjwF8+f1G55C74wm4Y/FA==', N'ZKW5NW7WVP3YFR2A7V2ZHX2RUHVS3WKF', N'84cdcbd8-9105-4e6e-951f-f89aeaad9644', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[GameCounts] ON 

INSERT [dbo].[GameCounts] ([Id], [Count], [Remarks]) VALUES (1, 90, NULL)
INSERT [dbo].[GameCounts] ([Id], [Count], [Remarks]) VALUES (2, 45, NULL)
INSERT [dbo].[GameCounts] ([Id], [Count], [Remarks]) VALUES (3, 60, NULL)
SET IDENTITY_INSERT [dbo].[GameCounts] OFF
GO
SET IDENTITY_INSERT [dbo].[GameDays] ON 

INSERT [dbo].[GameDays] ([Id], [Name], [GameDate], [Remarks]) VALUES (1, N'Monday Special', CAST(N'2021-10-18T00:00:03.0000000' AS DateTime2), NULL)
INSERT [dbo].[GameDays] ([Id], [Name], [GameDate], [Remarks]) VALUES (2, N'Lucky Tuesday', CAST(N'2021-10-19T00:00:44.0000000' AS DateTime2), NULL)
INSERT [dbo].[GameDays] ([Id], [Name], [GameDate], [Remarks]) VALUES (3, N'Midweek', CAST(N'2021-10-20T00:00:24.0000000' AS DateTime2), NULL)
INSERT [dbo].[GameDays] ([Id], [Name], [GameDate], [Remarks]) VALUES (4, N'Fortune Thursday', CAST(N'2021-10-21T00:00:52.0000000' AS DateTime2), NULL)
INSERT [dbo].[GameDays] ([Id], [Name], [GameDate], [Remarks]) VALUES (5, N'Friday Bonanza', CAST(N'2021-10-22T00:00:26.0000000' AS DateTime2), NULL)
INSERT [dbo].[GameDays] ([Id], [Name], [GameDate], [Remarks]) VALUES (6, N'National Weekly', CAST(N'2021-10-16T00:00:58.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[GameDays] OFF
GO
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([Id], [StartDate], [CloseDate], [GameDayId], [GameCountId], [StatusId], [Remarks], [No1], [No2], [No3], [No4], [No5], [No6], [No7], [No8], [No9], [No10]) VALUES (1, CAST(N'2021-10-18T00:00:51.0000000' AS DateTime2), CAST(N'2021-10-18T18:00:51.0000000' AS DateTime2), 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Games] ([Id], [StartDate], [CloseDate], [GameDayId], [GameCountId], [StatusId], [Remarks], [No1], [No2], [No3], [No4], [No5], [No6], [No7], [No8], [No9], [No10]) VALUES (2, CAST(N'2021-10-19T00:00:37.0000000' AS DateTime2), CAST(N'2021-10-19T18:00:37.0000000' AS DateTime2), 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Games] ([Id], [StartDate], [CloseDate], [GameDayId], [GameCountId], [StatusId], [Remarks], [No1], [No2], [No3], [No4], [No5], [No6], [No7], [No8], [No9], [No10]) VALUES (3, CAST(N'2021-10-20T00:00:13.0000000' AS DateTime2), CAST(N'2021-10-20T18:00:13.0000000' AS DateTime2), 3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Games] ([Id], [StartDate], [CloseDate], [GameDayId], [GameCountId], [StatusId], [Remarks], [No1], [No2], [No3], [No4], [No5], [No6], [No7], [No8], [No9], [No10]) VALUES (4, CAST(N'2021-10-21T00:00:56.0000000' AS DateTime2), CAST(N'2021-10-21T18:00:56.0000000' AS DateTime2), 4, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Games] ([Id], [StartDate], [CloseDate], [GameDayId], [GameCountId], [StatusId], [Remarks], [No1], [No2], [No3], [No4], [No5], [No6], [No7], [No8], [No9], [No10]) VALUES (5, CAST(N'2021-10-22T00:00:48.0000000' AS DateTime2), CAST(N'2021-10-22T18:00:48.0000000' AS DateTime2), 5, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Games] ([Id], [StartDate], [CloseDate], [GameDayId], [GameCountId], [StatusId], [Remarks], [No1], [No2], [No3], [No4], [No5], [No6], [No7], [No8], [No9], [No10]) VALUES (6, CAST(N'2021-10-23T00:00:30.0000000' AS DateTime2), CAST(N'2021-10-23T18:00:30.0000000' AS DateTime2), 6, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Games] OFF
GO
SET IDENTITY_INSERT [dbo].[GameTypes] ON 

INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (1, N'1st Number Drop', 1, 1, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (2, N'Direct 2', 2, 2, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (3, N'Direct 3', 3, 3, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (4, N'Direct 4', 4, 4, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (5, N'Direct 5', 5, 5, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (6, N'Perm 2', 3, 24, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (7, N'Perm 3', 4, 16, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (8, N'Perm 4', 5, 12, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (9, N'Perm 5', 6, 11, NULL)
INSERT [dbo].[GameTypes] ([Id], [Name], [MiniNumbers], [MaxNumbers], [Remarks]) VALUES (10, N'Banker All', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[GameTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[RefreshTokens] ON 

INSERT [dbo].[RefreshTokens] ([Id], [UserID], [Token], [JwtID], [IsUsed], [IsRevoked], [AddedDate], [ExpiryDate]) VALUES (1, N'ab5e8c06-ad91-46dd-91cb-fe95c7d375ec', N'LNUS6VW72G7G56KIZNSLYX5Z3DE0UGJ56NWa339105a-91b7-47be-a216-dae34cf4e6c1', N'4720afc9-079f-4016-8f89-9673d04b7ff8', 0, 0, CAST(N'2021-10-05T18:48:55.4586924' AS DateTime2), CAST(N'2022-04-05T18:48:55.4587731' AS DateTime2))
INSERT [dbo].[RefreshTokens] ([Id], [UserID], [Token], [JwtID], [IsUsed], [IsRevoked], [AddedDate], [ExpiryDate]) VALUES (2, N'ab5e8c06-ad91-46dd-91cb-fe95c7d375ec', N'5IXJ0VEB8C3N59LSPT6YEJ3UMOJR9IDZ8ZE2bc3495c-736d-4bcb-bf05-c436fbb8ca1a', N'7259f5cd-1a37-49df-81c0-c5630a41a5a6', 0, 0, CAST(N'2021-10-05T18:49:51.9316574' AS DateTime2), CAST(N'2022-04-05T18:49:51.9316579' AS DateTime2))
SET IDENTITY_INSERT [dbo].[RefreshTokens] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([Id], [Name], [Remarks]) VALUES (1, N'Open', NULL)
INSERT [dbo].[Statuses] ([Id], [Name], [Remarks]) VALUES (2, N'Closed', NULL)
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25/11/2021 19:10:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25/11/2021 19:10:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CartItem_UserId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_CartItem_UserId] ON [dbo].[CartItem]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Favourite_UserId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_Favourite_UserId] ON [dbo].[Favourite]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Games_GameCountId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_Games_GameCountId] ON [dbo].[Games]
(
	[GameCountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Games_GameDayId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_Games_GameDayId] ON [dbo].[Games]
(
	[GameDayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Games_StatusId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_Games_StatusId] ON [dbo].[Games]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderLine_GameDayID]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_OrderLine_GameDayID] ON [dbo].[OrderLine]
(
	[GameDayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderLine_GameStatusId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_OrderLine_GameStatusId] ON [dbo].[OrderLine]
(
	[GameStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderLine_GameTypeID]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_OrderLine_GameTypeID] ON [dbo].[OrderLine]
(
	[GameTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderLine_OrderID]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_OrderLine_OrderID] ON [dbo].[OrderLine]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderLine_UserId]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_OrderLine_UserId] ON [dbo].[OrderLine]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserID]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserID] ON [dbo].[Orders]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RefreshTokens_UserID]    Script Date: 25/11/2021 19:10:15 ******/
CREATE NONCLUSTERED INDEX [IX_RefreshTokens_UserID] ON [dbo].[RefreshTokens]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Favourite]  WITH CHECK ADD  CONSTRAINT [FK_Favourite_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Favourite] CHECK CONSTRAINT [FK_Favourite_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_GameCounts_GameCountId] FOREIGN KEY([GameCountId])
REFERENCES [dbo].[GameCounts] ([Id])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_GameCounts_GameCountId]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_GameDays_GameDayId] FOREIGN KEY([GameDayId])
REFERENCES [dbo].[GameDays] ([Id])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_GameDays_GameDayId]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Statuses_StatusId]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_GameDays_GameDayID] FOREIGN KEY([GameDayID])
REFERENCES [dbo].[GameDays] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_GameDays_GameDayID]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_GameTypes_GameTypeID] FOREIGN KEY([GameTypeID])
REFERENCES [dbo].[GameTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_GameTypes_GameTypeID]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_Statuses_GameStatusId] FOREIGN KEY([GameStatusId])
REFERENCES [dbo].[Statuses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_Statuses_GameStatusId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[RefreshTokens]  WITH CHECK ADD  CONSTRAINT [FK_RefreshTokens_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RefreshTokens] CHECK CONSTRAINT [FK_RefreshTokens_AspNetUsers_UserID]
GO
USE [master]
GO
ALTER DATABASE [aspnet-SpinIt.Web-0C7CC9A5] SET  READ_WRITE 
GO
