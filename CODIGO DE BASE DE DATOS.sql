


/*NOMBRE: CARLOS JOSE ROQUE BAEZ MATRICULA: 18-SIIT-1-021 SECCION: 0541*/


USE [master]
GO
/****** Object:  Database [PANADERIA]    Script Date: 30/3/2020 15:24:35 ******/
CREATE DATABASE [PANADERIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PANADERIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PANADERIA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PANADERIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PANADERIA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PANADERIA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PANADERIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PANADERIA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PANADERIA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PANADERIA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PANADERIA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PANADERIA] SET ARITHABORT OFF 
GO
ALTER DATABASE [PANADERIA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PANADERIA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PANADERIA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PANADERIA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PANADERIA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PANADERIA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PANADERIA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PANADERIA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PANADERIA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PANADERIA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PANADERIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PANADERIA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PANADERIA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PANADERIA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PANADERIA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PANADERIA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PANADERIA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PANADERIA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PANADERIA] SET  MULTI_USER 
GO
ALTER DATABASE [PANADERIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PANADERIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PANADERIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PANADERIA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PANADERIA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PANADERIA] SET QUERY_STORE = OFF
GO
USE [PANADERIA]
GO
/****** Object:  Table [dbo].[CEDE]    Script Date: 30/3/2020 15:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CEDE](
	[CedeId] [int] NOT NULL,
	[Provincia] [varchar](50) NULL,
	[Numerodeempleados] [tinyint] NULL,
	[EncargadoId] [int] NULL,
	[EmpleadoId] [int] NULL,
 CONSTRAINT [PK_CEDE] PRIMARY KEY CLUSTERED 
(
	[CedeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 30/3/2020 15:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[EmpleadoId] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Fechadenacimiento] [datetime] NULL,
	[Cedula] [int] NULL,
	[Sexo] [char](1) NULL,
	[Edad] [tinyint] NULL,
	[Gmail] [varchar](50) NULL,
	[Ocupacion] [varchar](50) NULL,
	[Sueldo] [int] NULL,
	[CedeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENCARGADOS]    Script Date: 30/3/2020 15:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENCARGADOS](
	[EncargadoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Fechadenacimiento] [datetime] NULL,
	[Cedula] [int] NULL,
	[Edad] [tinyint] NULL,
	[Sexo] [char](1) NULL,
	[CedeId] [int] NULL,
 CONSTRAINT [PK_ENCARGADOS] PRIMARY KEY CLUSTERED 
(
	[EncargadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (1, N'BARAHONA', 10, 1, 1)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (2, N'BANI', 10, 2, 2)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (3, N'AZUA', 10, 3, 3)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (4, N'PEDERNALES', 10, 4, 4)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (5, N'HIGUEY', 10, 5, 5)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (6, N'SAMANA', 10, 6, 6)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (7, N'SANTO DOMINGO', 10, 7, 7)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (8, N'SAN PEDRO', 10, 8, 8)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (9, N'LA ROMANA', 101, 9, 9)
INSERT [dbo].[CEDE] ([CedeId], [Provincia], [Numerodeempleados], [EncargadoId], [EmpleadoId]) VALUES (10, N'SANTIAGO', 10, 10, 10)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (1, N'SAUL MIGUEL', CAST(N'1998-01-10T00:00:00.000' AS DateTime), 40451, N'M', 21, N'ELNEGRITO@', N'VENDEDOR', 15000, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (2, N'MARCOS ANTONIO', CAST(N'1999-02-10T00:00:00.000' AS DateTime), 11515, N'M', 20, N'MANCO@', N'VENDEDOR', 15000, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (3, N'FEFA GRANDE', CAST(N'1850-12-12T00:00:00.000' AS DateTime), 10000, N'F', 170, N'TUVIEJITA@', N'ARTESA', 20000, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (4, N'MARTA ORCA', CAST(N'1997-02-12T00:00:00.000' AS DateTime), 54546, N'F', 22, N'BALLENA@', N'CAJERA', 17500, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (5, N'ARMANDO FIESTAS', CAST(N'1999-03-11T00:00:00.000' AS DateTime), 66262, N'M', 20, N'CEROALCOHOL@', N'VENDEDOR', 15000, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (6, N'ISMAL BIEN', CAST(N'1998-02-04T00:00:00.000' AS DateTime), 65655, N'M', 21, N'MALITO@', N'VENDEDOR', 15000, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (7, N'PEDRO SANTANA', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 15454, N'M', 25, N'TUGUERRILLERO@', N'ENCARGADO', 25000, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (8, N'UNGUENTO INNACIO', CAST(N'2005-11-05T00:00:00.000' AS DateTime), 12335, N'M', 15, N'LASALSA@', N'VENDEDOR', 15000, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (9, N'RAUL FIGUEROA', CAST(N'2020-01-01T00:00:00.000' AS DateTime), 47851, N'M', 0, N'RAUL@', N'CONSERJE', 7500, 1)
INSERT [dbo].[EMPLEADO] ([EmpleadoId], [Nombre], [Fechadenacimiento], [Cedula], [Sexo], [Edad], [Gmail], [Ocupacion], [Sueldo], [CedeId]) VALUES (10, N'ANTONI BONCLEI', CAST(N'2015-02-10T00:00:00.000' AS DateTime), 12456, N'M', 5, N'ANTONICO@', N'CONSERJE', 7500, 1)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (1, N'PEDRO SANTANA', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 15454, 25, N'M', 1)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (2, N' MARIBEL ROCIO', CAST(N'1899-10-02T00:00:00.000' AS DateTime), 11556, 18, N'F', 2)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (3, N'CLAUDIO NIKOL', CAST(N'1898-02-01T00:00:00.000' AS DateTime), 45661, 20, N'F', 3)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (4, N'MAURICIO PUELLO', CAST(N'1789-03-01T00:00:00.000' AS DateTime), 62659, 33, N'M', 4)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (5, N'WILLIAM MIGUEL', CAST(N'1989-04-07T00:00:00.000' AS DateTime), 62685, 21, N'M', 5)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (6, N'GEORGE PATRICIA', CAST(N'1999-04-05T00:00:00.000' AS DateTime), 26256, 19, N'M', 6)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (7, N'SANCHEZ CELESTE', CAST(N'2000-03-12T00:00:00.000' AS DateTime), 65659, 20, N'M', 7)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (8, N'MICHAELA RAQUEL', CAST(N'1999-10-11T00:00:00.000' AS DateTime), 51565, 20, N'F', 8)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (9, N'MOISES SAUL', CAST(N'1998-12-12T00:00:00.000' AS DateTime), 47856, 18, N'F', 9)
INSERT [dbo].[ENCARGADOS] ([EncargadoId], [Nombre], [Fechadenacimiento], [Cedula], [Edad], [Sexo], [CedeId]) VALUES (10, N'MARCO PUERTA', CAST(N'2000-10-10T00:00:00.000' AS DateTime), 65688, 20, N'M', NULL)
USE [master]
GO
ALTER DATABASE [PANADERIA] SET  READ_WRITE 
GO
