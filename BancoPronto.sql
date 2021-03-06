USE [master]
GO
/****** Object:  Database [pro_chefe]    Script Date: 01/12/2019 22:37:18 ******/
CREATE DATABASE [pro_chefe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pro_chefe', FILENAME = N'D:\SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\pro_chefe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pro_chefe_log', FILENAME = N'D:\SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\pro_chefe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [pro_chefe] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pro_chefe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pro_chefe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pro_chefe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pro_chefe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pro_chefe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pro_chefe] SET ARITHABORT OFF 
GO
ALTER DATABASE [pro_chefe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pro_chefe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pro_chefe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pro_chefe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pro_chefe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pro_chefe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pro_chefe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pro_chefe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pro_chefe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pro_chefe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pro_chefe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pro_chefe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pro_chefe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pro_chefe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pro_chefe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pro_chefe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pro_chefe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pro_chefe] SET RECOVERY FULL 
GO
ALTER DATABASE [pro_chefe] SET  MULTI_USER 
GO
ALTER DATABASE [pro_chefe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pro_chefe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pro_chefe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pro_chefe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pro_chefe] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'pro_chefe', N'ON'
GO
ALTER DATABASE [pro_chefe] SET QUERY_STORE = OFF
GO
USE [pro_chefe]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [pro_chefe]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[nome] [varchar](70) NOT NULL,
	[telefone] [varchar](16) NOT NULL,
	[cpf] [varchar](14) NOT NULL,
	[dataNascimento] [date] NOT NULL,
	[rua] [varchar](50) NOT NULL,
	[numero] [varchar](5) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[uf] [varchar](2) NOT NULL,
	[cep] [varchar](9) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[complemento] [varchar](100) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[telefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delivery]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Telefone] [varchar](16) NOT NULL,
	[Nome] [varchar](70) NOT NULL,
	[Logradouro] [varchar](50) NOT NULL,
	[Número] [varchar](5) NOT NULL,
	[Bairro] [varchar](50) NOT NULL,
	[Complemento] [varchar](100) NULL,
	[entregador] [varchar](255) NOT NULL,
	[finalizada] [bit] NULL,
 CONSTRAINT [PK_delivery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delivery_produto]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delivery_produto](
	[id_delivery] [int] NOT NULL,
	[id_produto] [int] NOT NULL,
	[quantidade] [decimal](3, 0) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_delivery_produto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estoque]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estoque](
	[item] [varchar](255) NOT NULL,
	[quantidade] [decimal](3, 0) NOT NULL,
	[movimentacao] [varchar](255) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_estoque] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[funcionario]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[funcionario](
	[nome] [varchar](70) NOT NULL,
	[telefone] [varchar](16) NOT NULL,
	[cpf] [varchar](14) NOT NULL,
	[dataNascimento] [date] NOT NULL,
	[rua] [varchar](50) NOT NULL,
	[numero] [varchar](5) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[uf] [varchar](2) NOT NULL,
	[cep] [varchar](9) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[complemento] [varchar](100) NULL,
	[cargo] [varchar](70) NOT NULL,
 CONSTRAINT [PK_funcionario] PRIMARY KEY CLUSTERED 
(
	[telefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingrediente]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingrediente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](255) NOT NULL,
	[estoque] [decimal](3, 0) NOT NULL,
 CONSTRAINT [PK_ingrediente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mesa]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mesa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[capacidade] [int] NOT NULL,
	[disponivel] [bit] NOT NULL,
	[observacao] [varchar](255) NULL,
 CONSTRAINT [PK_mesa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produto]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[preco] [decimal](2, 0) NULL,
 CONSTRAINT [PK_produto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produto_ingrediente]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produto_ingrediente](
	[id_produto] [int] NOT NULL,
	[id_ingrediente] [int] NOT NULL,
	[quantidade] [decimal](3, 0) NOT NULL,
 CONSTRAINT [idp_idi] PRIMARY KEY CLUSTERED 
(
	[id_ingrediente] ASC,
	[id_produto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[produto_mesa]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produto_mesa](
	[id_produto] [int] NOT NULL,
	[id_mesa] [int] NOT NULL,
	[quantidade] [decimal](3, 0) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_produto_mesa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 01/12/2019 22:37:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NOT NULL,
	[login] [varchar](10) NOT NULL,
	[senha] [varchar](10) NOT NULL,
	[tipo_usuario] [int] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cliente] ([nome], [telefone], [cpf], [dataNascimento], [rua], [numero], [bairro], [uf], [cep], [cidade], [complemento]) VALUES (N'Michel Vinícius Venske Pereira', N'(047) 99101-7734', N'058.487.459-60', CAST(N'2002-10-13' AS Date), N'Rua dos hibiscos', N'143', N'Itoupava norte', N'sc', N'89052-415', N'Blumenau', N'casa')
SET IDENTITY_INSERT [dbo].[delivery] ON 

INSERT [dbo].[delivery] ([id], [Telefone], [Nome], [Logradouro], [Número], [Bairro], [Complemento], [entregador], [finalizada]) VALUES (4, N'(047) 99101-7734', N'Michel Vinícius Venske Pereira', N'Rua dos hibiscos', N'143', N'Itoupava norte', N'casa', N'teste', 1)
INSERT [dbo].[delivery] ([id], [Telefone], [Nome], [Logradouro], [Número], [Bairro], [Complemento], [entregador], [finalizada]) VALUES (6, N'(047) 99101-7734', N'Michel Vinícius Venske Pereira', N'Rua dos hibiscos', N'143', N'Itoupava norte', N'casa', N'teste', 1)
SET IDENTITY_INSERT [dbo].[delivery] OFF
SET IDENTITY_INSERT [dbo].[delivery_produto] ON 

INSERT [dbo].[delivery_produto] ([id_delivery], [id_produto], [quantidade], [id]) VALUES (4, 9, CAST(3 AS Decimal(3, 0)), 4)
INSERT [dbo].[delivery_produto] ([id_delivery], [id_produto], [quantidade], [id]) VALUES (4, 8, CAST(3 AS Decimal(3, 0)), 5)
INSERT [dbo].[delivery_produto] ([id_delivery], [id_produto], [quantidade], [id]) VALUES (4, 8, CAST(3 AS Decimal(3, 0)), 6)
SET IDENTITY_INSERT [dbo].[delivery_produto] OFF
SET IDENTITY_INSERT [dbo].[estoque] ON 

INSERT [dbo].[estoque] ([item], [quantidade], [movimentacao], [id]) VALUES (N'pão', CAST(500 AS Decimal(3, 0)), N'Entrada', 5)
INSERT [dbo].[estoque] ([item], [quantidade], [movimentacao], [id]) VALUES (N'hamburguer', CAST(500 AS Decimal(3, 0)), N'Entrada', 6)
INSERT [dbo].[estoque] ([item], [quantidade], [movimentacao], [id]) VALUES (N'queijo', CAST(500 AS Decimal(3, 0)), N'Entrada', 7)
INSERT [dbo].[estoque] ([item], [quantidade], [movimentacao], [id]) VALUES (N'tomate', CAST(500 AS Decimal(3, 0)), N'Entrada', 8)
INSERT [dbo].[estoque] ([item], [quantidade], [movimentacao], [id]) VALUES (N'oregano', CAST(500 AS Decimal(3, 0)), N'Entrada', 9)
INSERT [dbo].[estoque] ([item], [quantidade], [movimentacao], [id]) VALUES (N'hamburguer', CAST(1 AS Decimal(3, 0)), N'Saída', 10)
SET IDENTITY_INSERT [dbo].[estoque] OFF
INSERT [dbo].[funcionario] ([nome], [telefone], [cpf], [dataNascimento], [rua], [numero], [bairro], [uf], [cep], [cidade], [complemento], [cargo]) VALUES (N'teste', N'(333) 33333-3333', N'222.222.222-22', CAST(N'2012-12-22' AS Date), N'dd', N'22', N'dd', N'ff', N'22222-222', N'ffffffffff', N'fffff', N'Entregador')
SET IDENTITY_INSERT [dbo].[ingrediente] ON 

INSERT [dbo].[ingrediente] ([id], [nome], [estoque]) VALUES (16, N'pão', CAST(500 AS Decimal(3, 0)))
INSERT [dbo].[ingrediente] ([id], [nome], [estoque]) VALUES (17, N'hamburguer', CAST(499 AS Decimal(3, 0)))
INSERT [dbo].[ingrediente] ([id], [nome], [estoque]) VALUES (18, N'queijo', CAST(500 AS Decimal(3, 0)))
INSERT [dbo].[ingrediente] ([id], [nome], [estoque]) VALUES (19, N'tomate', CAST(500 AS Decimal(3, 0)))
INSERT [dbo].[ingrediente] ([id], [nome], [estoque]) VALUES (20, N'oregano', CAST(500 AS Decimal(3, 0)))
SET IDENTITY_INSERT [dbo].[ingrediente] OFF
SET IDENTITY_INSERT [dbo].[mesa] ON 

INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (1, 4, 1, N'')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (2, 3, 1, N'')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (3, 8, 1, N'reservada')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (4, 5, 1, N'')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (5, 5, 1, N' ')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (6, 4, 1, N' ')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (7, 5, 1, N'')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (8, 4, 1, N'')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (9, 8, 1, N'')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (10, 8, 1, N'')
INSERT [dbo].[mesa] ([id], [capacidade], [disponivel], [observacao]) VALUES (11, 1, 1, N'')
SET IDENTITY_INSERT [dbo].[mesa] OFF
SET IDENTITY_INSERT [dbo].[produto] ON 

INSERT [dbo].[produto] ([id], [nome], [preco]) VALUES (8, N'x-Salada', CAST(20 AS Decimal(2, 0)))
INSERT [dbo].[produto] ([id], [nome], [preco]) VALUES (9, N'Pizza', CAST(30 AS Decimal(2, 0)))
INSERT [dbo].[produto] ([id], [nome], [preco]) VALUES (10, N'Coca-Cola', CAST(5 AS Decimal(2, 0)))
SET IDENTITY_INSERT [dbo].[produto] OFF
INSERT [dbo].[produto_ingrediente] ([id_produto], [id_ingrediente], [quantidade]) VALUES (8, 16, CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[produto_ingrediente] ([id_produto], [id_ingrediente], [quantidade]) VALUES (8, 17, CAST(1 AS Decimal(3, 0)))
INSERT [dbo].[produto_ingrediente] ([id_produto], [id_ingrediente], [quantidade]) VALUES (8, 18, CAST(1 AS Decimal(3, 0)))
INSERT [dbo].[produto_ingrediente] ([id_produto], [id_ingrediente], [quantidade]) VALUES (9, 19, CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[produto_ingrediente] ([id_produto], [id_ingrediente], [quantidade]) VALUES (9, 20, CAST(1 AS Decimal(3, 0)))
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [nome], [login], [senha], [tipo_usuario]) VALUES (2, N'Murilo Bitencourt', N'murilo  ', N'123     ', 2)
INSERT [dbo].[usuario] ([id], [nome], [login], [senha], [tipo_usuario]) VALUES (4, N'Michel vinicius venske pereira', N'michel  ', N'123     ', 2)
INSERT [dbo].[usuario] ([id], [nome], [login], [senha], [tipo_usuario]) VALUES (5, N'Milton', N'5555    ', N'5555    ', 2)
SET IDENTITY_INSERT [dbo].[usuario] OFF
ALTER TABLE [dbo].[produto_ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_ingrediente_produto] FOREIGN KEY([id_produto])
REFERENCES [dbo].[produto] ([id])
GO
ALTER TABLE [dbo].[produto_ingrediente] CHECK CONSTRAINT [FK_ingrediente_produto]
GO
ALTER TABLE [dbo].[produto_ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_produto_ingrediente] FOREIGN KEY([id_ingrediente])
REFERENCES [dbo].[ingrediente] ([id])
GO
ALTER TABLE [dbo].[produto_ingrediente] CHECK CONSTRAINT [FK_produto_ingrediente]
GO
ALTER TABLE [dbo].[produto_mesa]  WITH CHECK ADD  CONSTRAINT [FK_produto] FOREIGN KEY([id_produto])
REFERENCES [dbo].[produto] ([id])
GO
ALTER TABLE [dbo].[produto_mesa] CHECK CONSTRAINT [FK_produto]
GO
ALTER TABLE [dbo].[produto_mesa]  WITH CHECK ADD  CONSTRAINT [FK_produto_mesa_mesa] FOREIGN KEY([id_mesa])
REFERENCES [dbo].[mesa] ([id])
GO
ALTER TABLE [dbo].[produto_mesa] CHECK CONSTRAINT [FK_produto_mesa_mesa]
GO
USE [master]
GO
ALTER DATABASE [pro_chefe] SET  READ_WRITE 
GO
