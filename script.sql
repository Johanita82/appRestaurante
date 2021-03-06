USE [master]
GO
/****** Object:  Database [restaurante]    Script Date: 29/03/2022 13:01:58 ******/
CREATE DATABASE [restaurante]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'restaurante', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\restaurante.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'restaurante_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\restaurante_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [restaurante] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [restaurante].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [restaurante] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [restaurante] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [restaurante] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [restaurante] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [restaurante] SET ARITHABORT OFF 
GO
ALTER DATABASE [restaurante] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [restaurante] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [restaurante] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [restaurante] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [restaurante] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [restaurante] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [restaurante] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [restaurante] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [restaurante] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [restaurante] SET  DISABLE_BROKER 
GO
ALTER DATABASE [restaurante] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [restaurante] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [restaurante] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [restaurante] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [restaurante] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [restaurante] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [restaurante] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [restaurante] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [restaurante] SET  MULTI_USER 
GO
ALTER DATABASE [restaurante] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [restaurante] SET DB_CHAINING OFF 
GO
ALTER DATABASE [restaurante] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [restaurante] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [restaurante] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [restaurante] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [restaurante] SET QUERY_STORE = OFF
GO
USE [restaurante]
GO
/****** Object:  Table [dbo].[comida]    Script Date: 29/03/2022 13:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comida](
	[idComida] [int] IDENTITY(1,1) NOT NULL,
	[nombreComida] [varchar](50) NULL,
	[idEspecialidad] [int] NULL,
 CONSTRAINT [PK_comida] PRIMARY KEY CLUSTERED 
(
	[idComida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especialidad]    Script Date: 29/03/2022 13:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especialidad](
	[idEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[nombreEspecialidad] [varchar](50) NULL,
 CONSTRAINT [PK_especialidad] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 29/03/2022 13:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[nombreCliente] [varchar](50) NULL,
	[direccionCliente] [varchar](50) NULL,
	[telefonoCliente] [varchar](50) NULL,
	[idComida] [int] NULL,
 CONSTRAINT [PK_pedido] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[comida] ON 

INSERT [dbo].[comida] ([idComida], [nombreComida], [idEspecialidad]) VALUES (2, N'Hamburguesa', 1)
INSERT [dbo].[comida] ([idComida], [nombreComida], [idEspecialidad]) VALUES (3, N'Ensalada', 2)
INSERT [dbo].[comida] ([idComida], [nombreComida], [idEspecialidad]) VALUES (4, N'Pizza', 1)
INSERT [dbo].[comida] ([idComida], [nombreComida], [idEspecialidad]) VALUES (5, N'Sopa', 2)
INSERT [dbo].[comida] ([idComida], [nombreComida], [idEspecialidad]) VALUES (6, N'Perro Caliente', 1)
INSERT [dbo].[comida] ([idComida], [nombreComida], [idEspecialidad]) VALUES (7, N'Crema', 2)
SET IDENTITY_INSERT [dbo].[comida] OFF
GO
SET IDENTITY_INSERT [dbo].[especialidad] ON 

INSERT [dbo].[especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (1, N'Comida Rapida')
INSERT [dbo].[especialidad] ([idEspecialidad], [nombreEspecialidad]) VALUES (2, N'Comida Saludable')
SET IDENTITY_INSERT [dbo].[especialidad] OFF
GO
SET IDENTITY_INSERT [dbo].[pedido] ON 

INSERT [dbo].[pedido] ([idPedido], [nombreCliente], [direccionCliente], [telefonoCliente], [idComida]) VALUES (1, N'Johana Niño', N'Sogamoso', N'3216549870', 5)
INSERT [dbo].[pedido] ([idPedido], [nombreCliente], [direccionCliente], [telefonoCliente], [idComida]) VALUES (2, N'qqq', N'qqq', N'qqq', 3)
INSERT [dbo].[pedido] ([idPedido], [nombreCliente], [direccionCliente], [telefonoCliente], [idComida]) VALUES (3, N'www', N'www', N'www', 4)
INSERT [dbo].[pedido] ([idPedido], [nombreCliente], [direccionCliente], [telefonoCliente], [idComida]) VALUES (4, N'eee', N'eee', N'eee', 6)
SET IDENTITY_INSERT [dbo].[pedido] OFF
GO
ALTER TABLE [dbo].[comida]  WITH CHECK ADD  CONSTRAINT [FK_comida_especialidad] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[comida] CHECK CONSTRAINT [FK_comida_especialidad]
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [FK_pedido_comida] FOREIGN KEY([idComida])
REFERENCES [dbo].[comida] ([idComida])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [FK_pedido_comida]
GO
USE [master]
GO
ALTER DATABASE [restaurante] SET  READ_WRITE 
GO
