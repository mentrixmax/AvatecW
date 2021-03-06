USE [master]
GO
/****** Object:  Database [Educatec]    Script Date: 08/21/2018 20:49:09 ******/
CREATE DATABASE [Educatec] ON  PRIMARY 
( NAME = N'Educatec', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Educatec.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Educatec_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Educatec_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Educatec] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Educatec].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Educatec] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Educatec] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Educatec] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Educatec] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Educatec] SET ARITHABORT OFF
GO
ALTER DATABASE [Educatec] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Educatec] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Educatec] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Educatec] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Educatec] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Educatec] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Educatec] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Educatec] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Educatec] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Educatec] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Educatec] SET  DISABLE_BROKER
GO
ALTER DATABASE [Educatec] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Educatec] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Educatec] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Educatec] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Educatec] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Educatec] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Educatec] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Educatec] SET  READ_WRITE
GO
ALTER DATABASE [Educatec] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Educatec] SET  MULTI_USER
GO
ALTER DATABASE [Educatec] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Educatec] SET DB_CHAINING OFF
GO
USE [Educatec]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estado](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[DesEstado] [varchar](50) NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[estado] ON
INSERT [dbo].[estado] ([Sequencial], [DesEstado]) VALUES (1, N'ce')
SET IDENTITY_INSERT [dbo].[estado] OFF
/****** Object:  Table [dbo].[escolaridade]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[escolaridade](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[DesEscolaridade] [varchar](50) NULL,
 CONSTRAINT [PK_escolaridade] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoInstituicao]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoInstituicao](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK_TipoInstituicao] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoInstituicao] ON
INSERT [dbo].[TipoInstituicao] ([Sequencial], [Descricao]) VALUES (1, N'Ensino Médio')
SET IDENTITY_INSERT [dbo].[TipoInstituicao] OFF
/****** Object:  Table [dbo].[interesse]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[interesse](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[DesInteresse] [varchar](50) NULL,
 CONSTRAINT [PK_interesse] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InstituicaoOrigem]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InstituicaoOrigem](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NULL,
	[Cidade] [varchar](50) NULL,
	[IdEstado] [int] NULL,
	[IdTipoInstituicao] [int] NULL,
 CONSTRAINT [PK_InstituicaoOrigem] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[InstituicaoOrigem] ON
INSERT [dbo].[InstituicaoOrigem] ([Sequencial], [Nome], [Cidade], [IdEstado], [IdTipoInstituicao]) VALUES (1, N'IFCE ', N'Umirim', 1, 1)
SET IDENTITY_INSERT [dbo].[InstituicaoOrigem] OFF
/****** Object:  Table [dbo].[Usuarios]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NULL,
	[Rua] [varchar](50) NULL,
	[Bairro] [varchar](50) NULL,
	[Cidade] [varchar](50) NULL,
	[IdEstado] [int] NULL,
	[IdEscolaridade] [int] NULL,
	[IdInstituicaoOrigem] [int] NULL,
	[Email] [varchar](50) NULL,
	[Telefone] [varchar](15) NULL,
	[Senha] [varchar](50) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Postagem]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Postagem](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[Postagem] [varchar](1000) NOT NULL,
	[Date] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Postagem] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 08/21/2018 20:49:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comentario](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[DesComentario] [varchar](300) NULL,
	[PostID] [int] NULL,
	[Data] [datetime] NULL,
 CONSTRAINT [PK_comentario] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_InstituicaoOrigem_estado]    Script Date: 08/21/2018 20:49:10 ******/
ALTER TABLE [dbo].[InstituicaoOrigem]  WITH CHECK ADD  CONSTRAINT [FK_InstituicaoOrigem_estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[estado] ([Sequencial])
GO
ALTER TABLE [dbo].[InstituicaoOrigem] CHECK CONSTRAINT [FK_InstituicaoOrigem_estado]
GO
/****** Object:  ForeignKey [FK_InstituicaoOrigem_TipoInstituicao]    Script Date: 08/21/2018 20:49:10 ******/
ALTER TABLE [dbo].[InstituicaoOrigem]  WITH CHECK ADD  CONSTRAINT [FK_InstituicaoOrigem_TipoInstituicao] FOREIGN KEY([IdTipoInstituicao])
REFERENCES [dbo].[TipoInstituicao] ([Sequencial])
GO
ALTER TABLE [dbo].[InstituicaoOrigem] CHECK CONSTRAINT [FK_InstituicaoOrigem_TipoInstituicao]
GO
/****** Object:  ForeignKey [FK_Usuarios_escolaridade]    Script Date: 08/21/2018 20:49:10 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_escolaridade] FOREIGN KEY([IdEscolaridade])
REFERENCES [dbo].[escolaridade] ([Sequencial])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_escolaridade]
GO
/****** Object:  ForeignKey [FK_Usuarios_estado]    Script Date: 08/21/2018 20:49:10 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[estado] ([Sequencial])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_estado]
GO
/****** Object:  ForeignKey [FK_Usuarios_InstituicaoOrigem]    Script Date: 08/21/2018 20:49:10 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_InstituicaoOrigem] FOREIGN KEY([IdInstituicaoOrigem])
REFERENCES [dbo].[InstituicaoOrigem] ([Sequencial])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_InstituicaoOrigem]
GO
/****** Object:  ForeignKey [FK_Postagem_Usuarios]    Script Date: 08/21/2018 20:49:10 ******/
ALTER TABLE [dbo].[Postagem]  WITH CHECK ADD  CONSTRAINT [FK_Postagem_Usuarios] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([Sequencial])
GO
ALTER TABLE [dbo].[Postagem] CHECK CONSTRAINT [FK_Postagem_Usuarios]
GO
/****** Object:  ForeignKey [FK_Comentario_Postagem]    Script Date: 08/21/2018 20:49:10 ******/
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Postagem] FOREIGN KEY([PostID])
REFERENCES [dbo].[Postagem] ([Sequencial])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Postagem]
GO
