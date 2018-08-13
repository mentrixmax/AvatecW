USE [Educatec]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 08/13/2018 20:08:59 ******/
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
/****** Object:  Table [dbo].[escolaridade]    Script Date: 08/13/2018 20:08:59 ******/
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
/****** Object:  Table [dbo].[TipoInstituicao]    Script Date: 08/13/2018 20:08:59 ******/
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
/****** Object:  Table [dbo].[interesse]    Script Date: 08/13/2018 20:08:59 ******/
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
/****** Object:  Table [dbo].[InstituicaoOrigem]    Script Date: 08/13/2018 20:08:59 ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 08/13/2018 20:08:59 ******/
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
/****** Object:  ForeignKey [FK_InstituicaoOrigem_estado]    Script Date: 08/13/2018 20:08:59 ******/
ALTER TABLE [dbo].[InstituicaoOrigem]  WITH CHECK ADD  CONSTRAINT [FK_InstituicaoOrigem_estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[estado] ([Sequencial])
GO
ALTER TABLE [dbo].[InstituicaoOrigem] CHECK CONSTRAINT [FK_InstituicaoOrigem_estado]
GO
/****** Object:  ForeignKey [FK_InstituicaoOrigem_TipoInstituicao]    Script Date: 08/13/2018 20:08:59 ******/
ALTER TABLE [dbo].[InstituicaoOrigem]  WITH CHECK ADD  CONSTRAINT [FK_InstituicaoOrigem_TipoInstituicao] FOREIGN KEY([IdTipoInstituicao])
REFERENCES [dbo].[TipoInstituicao] ([Sequencial])
GO
ALTER TABLE [dbo].[InstituicaoOrigem] CHECK CONSTRAINT [FK_InstituicaoOrigem_TipoInstituicao]
GO
/****** Object:  ForeignKey [FK_Usuarios_escolaridade]    Script Date: 08/13/2018 20:08:59 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_escolaridade] FOREIGN KEY([IdEscolaridade])
REFERENCES [dbo].[escolaridade] ([Sequencial])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_escolaridade]
GO
/****** Object:  ForeignKey [FK_Usuarios_estado]    Script Date: 08/13/2018 20:08:59 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_estado] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[estado] ([Sequencial])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_estado]
GO
/****** Object:  ForeignKey [FK_Usuarios_InstituicaoOrigem]    Script Date: 08/13/2018 20:08:59 ******/
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_InstituicaoOrigem] FOREIGN KEY([IdInstituicaoOrigem])
REFERENCES [dbo].[InstituicaoOrigem] ([Sequencial])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_InstituicaoOrigem]
GO
